using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Drawing.Printing;
using System.IO;
using System.Text.RegularExpressions;
using System.Diagnostics;
using SyntaxHighlighter;
using System.Threading;

namespace SchoolScript
{
    public partial class MainWindow : Form
    {
        private Boolean allowExit = false;
        private FindAndReplace find;
        private String[] openArgs = null;
        List<Document> openDocs = new List<Document>();

        /*
         * To do List
         * 
         * Running
         * Python error reporting
         * Ruby error reporting
         * Perl error reporting
         * Why isn't it closing sometimes?
         * Tutorials
         * Line numbering
         * Make code colouring better
         * Fix undo/redo
         * 
         */


        public MainWindow(String[] args)
        {
            InitializeComponent();
            find = new FindAndReplace(this);

            openArgs = args;
        }

        //cut, copy and paste

        private void cut()
        {
            Control rtb = GetIndexFocusedControl();
            if (rtb != null)
            {
                if (rtb.GetType().ToString() == "System.Windows.Forms.RichTextBox" || rtb.GetType().ToString() == "SyntaxHighlighter.SyntaxRichTextBox")
                {
                    RichTextBox rt = (RichTextBox)rtb;
                    String txt = rt.SelectedText;
                    if (txt.Length > 0)
                    {
                        Clipboard.SetText(txt);
                    }
                    rt.SelectedText = "";
                }
            }
        }

        private void copy()
        {
            Control rtb = GetIndexFocusedControl();
            if (rtb != null)
            {
                if (rtb.GetType().ToString() == "System.Windows.Forms.RichTextBox" || rtb.GetType().ToString() == "SyntaxHighlighter.SyntaxRichTextBox")
                {
                    RichTextBox rt = (RichTextBox)rtb;
                    String txt = rt.SelectedText;
                    if (txt.Length > 0)
                    {
                        Clipboard.SetText(txt);
                    }
                }
            }
        }

        private void paste()
        {
            Control rtb = GetIndexFocusedControl();
            if (rtb != null)
            {
                if (rtb.GetType().ToString() == "System.Windows.Forms.RichTextBox" || rtb.GetType().ToString() == "SyntaxHighlighter.SyntaxRichTextBox")
                {
                    RichTextBox rt = (RichTextBox)rtb;
                    rt.SelectedText = Clipboard.GetText();
                    rt.SelectionStart += rt.SelectionLength;
                    rt.SelectionLength = 0;
                }
            }
        }

        public SyntaxRichTextBox getCurrentRTE()
        {
            Document d = getOpenDoc();
            if (d != null)
            {
                return d.editorPane;
            }
            return null;
        }

        //file handling methods

        public void checkUndoRedo()
        {
            Document doc = getOpenDoc();
            if (doc != null)
            {
                menuUndo.Enabled = doc.urc.can_undo();
                menuRedo.Enabled = doc.urc.can_redo();
            }
            else
            {
                menuUndo.Enabled = false;
                menuRedo.Enabled = false;
            }
        }

        private void changeExtension(String ext)
        {
            Document doc = getOpenDoc();
            if (doc != null)
            {
                doc.setExtension(ext);
            }
            update_currdoc_window();
        }

        private void save()
        {
            Document doc = getOpenDoc();
            if(doc!=null) {
                doc.save();
            }
        }

        private void saveAs()
        {
            Document doc = getOpenDoc();
            if(doc!=null) {
                doc.saveAs();
            }
        }

        private bool closeAll()
        {
            while(openDocs.Count()>0) {
                if (openDocs[0].close(this) == false)
                {
                    return false;
                }
            }
            return true;
        }

        private void exit()
        {
            if (closeAll())
            {
                allowExit = true;
                Application.Exit();
            }
        }
        
        private void openFile()
        {
            try
            {
                openDocs.Add(new Document(this, tabControl1, true));
                tabControl1.SelectedIndex = openDocs.Count() - 1;
            }
            catch
            {
                //do nothing
            }
        }

        private void newFile(String extension)
        {
            openDocs.Add(new Document(this,tabControl1,false,extension));
            tabControl1.SelectedIndex = openDocs.Count() - 1;
        }

        private Document getOpenDoc() {
            if (tabControl1.SelectedIndex > -1 && tabControl1.SelectedIndex<openDocs.Count())
            {
                return openDocs[tabControl1.SelectedIndex];
            }else{
                return null;
            }
        }

        public void removeDoc(Document d)
        {
            openDocs.Remove(d);
        }

        public void update_currdoc_window()
        {
            Document this_doc = getOpenDoc();
            if (this_doc != null)
            {
                //update file extension checkbox
                menuFtPHP.Checked = (this_doc.getExtension() == "php");
                menuFtText.Checked = (this_doc.getExtension() == "txt");
                menuFtPerl.Checked = (this_doc.getExtension() == "pl");
                menuFtPython.Checked = (this_doc.getExtension() == "py");
                menuFtRuby.Checked = (this_doc.getExtension() == "rb");
                menuTutorials.Checked = this_doc.tutorial_open;
                tutorialToolStripMenuItem.Checked = this_doc.tutorial_open;

                this.Text = "SchoolScript - " + this_doc.getFullName();

                this_doc.grabFocus();
                
                if (this_doc.isRunning)
                {
                    menuRun.Enabled = false;
                    menuStopRun.Enabled = true;
                }
                else
                {
                    menuRun.Enabled = true;
                    menuStopRun.Enabled = false;
                }

            }
            checkUndoRedo();

        }


        //stolen methods

        private Control GetIndexFocusedControl()
        {
            Document d = getOpenDoc();
            if (d!=null)
            {
                return d.GetIndexFocusedControl();
            }
            return null;
        }

        //Interaction Methods in here...


        private void menuCut_Click(object sender, EventArgs e)
        {
            cut();
        }

        private void menuSelectAll_Click(object sender, EventArgs e)
        {
            Control rtb = GetIndexFocusedControl();
            if (rtb != null)
            {
                if (rtb.GetType().ToString() == "System.Windows.Forms.RichTextBox" || rtb.GetType().ToString() == "SyntaxHighlighter.SyntaxRichTextBox")
                {
                    RichTextBox rt = (RichTextBox)rtb;
                    rt.SelectAll();
                }
            }
        }

        private void menuCopy_Click(object sender, EventArgs e)
        {
            copy();
        }

        private void menuPaste_Click(object sender, EventArgs e)
        {
            paste();
        }

        private void menuFindAndReplace_Click(object sender, EventArgs e)
        {
            find.showWindow(this);
        }

        private void menuOpen_Click(object sender, EventArgs e)
        {
            openFile();
        }

        public void rcCut_Click(object sender, EventArgs e)
        {
            cut();
        }

        public void rcCopy_Click(object sender, EventArgs e)
        {
            copy();
        }

        public void rcPaste_Click(object sender, EventArgs e)
        {
            paste();
        }

        private void MainWindow_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (!allowExit)
            {
                e.Cancel = true;
                exit();
            }
        }

        private void menuExit_Click(object sender, EventArgs e)
        {
            exit();
        }

        private void menuSave_Click(object sender, EventArgs e)
        {
            save();
        }

        private void menuSaveAs_Click(object sender, EventArgs e)
        {
            saveAs();
        }

        private void menuNewBlank_Click(object sender, EventArgs e)
        {
            newFile("txt");
        }

        private void menuNewPhp_Click(object sender, EventArgs e)
        {
            newFile("php");
        }

        private void menuFtPHP_Click(object sender, EventArgs e)
        {
            changeExtension("php");
        }

        private void menuFtText_Click(object sender, EventArgs e)
        {
            changeExtension("txt");
        }

        private void menuNewTutorial_Click(object sender, EventArgs e)
        {
            Document d = getOpenDoc();
            if (d != null)
            {
                d.showTutorial();
            }
            update_currdoc_window();
        }

        private void fileToolStripMenuItem_Click(object sender, EventArgs e)
        {
        }

        private void menuTutorials_Click(object sender, EventArgs e)
        {
            Document d = getOpenDoc();
            if (d != null)
            {
                d.showTutorial();
            }
            update_currdoc_window();
        }

        private void tabControl1_SelectedIndexChanged(object sender, EventArgs e)
        {
            update_currdoc_window();
        }

        private void menuClose_Click(object sender, EventArgs e)
        {
            Document this_doc = getOpenDoc();
            if (this_doc != null)
            {
                this_doc.close(this);
            }
        }

        private void aboutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            AboutBox b = new AboutBox();
            b.ShowDialog(this);
        }

        private void MainWindow_Load(object sender, EventArgs e)
        {
            bool createNewFile = true;
            if (openArgs != null)
            {
                foreach (string s in openArgs)
                {
                    try
                    {
                        openDocs.Add(new Document(this, tabControl1, s));
                        tabControl1.SelectedIndex = openDocs.Count() - 1;
                        createNewFile = false;
                    }
                    catch
                    {
                        //do nothing
                    }
                }
            }
            if (createNewFile)
            {
                newFile("txt");
            }
            update_currdoc_window();
        }

        private void tabControl1_MouseClick(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right)
            {
                // iterate through all the tab pages
                for (int i = 0; i < tabControl1.TabCount; i++)
                {
                    // get their rectangle area and check if it contains the mouse cursor
                    Rectangle r = tabControl1.GetTabRect(i);
                    if (r.Contains(e.Location))
                    {
                        // show the context menu here
                        tabRCMenu.Tag = i;
                        tabRCMenu.Show(this.tabControl1, e.Location);
                    }
                }
            }
        }

        private void saveToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(tabRCMenu.Tag) < openDocs.Count() && Convert.ToInt32(tabRCMenu.Tag)>=0)
            {
                openDocs[Convert.ToInt32(tabRCMenu.Tag)].save();
            }
        }

        private void tabRCSaveAs_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(tabRCMenu.Tag) < openDocs.Count() && Convert.ToInt32(tabRCMenu.Tag) >= 0)
            {
                openDocs[Convert.ToInt32(tabRCMenu.Tag)].saveAs();
            }
        }

        private void tabRCClose_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(tabRCMenu.Tag) < openDocs.Count() && Convert.ToInt32(tabRCMenu.Tag) >= 0)
            {
                openDocs[Convert.ToInt32(tabRCMenu.Tag)].close(this);
            }
        }

        private void menuUndo_Click(object sender, EventArgs e)
        {
            Document this_doc = getOpenDoc();
            if (this_doc != null)
            {
                this_doc.urc.undo();
                checkUndoRedo();
            }
        }

        private void menuRedo_Click(object sender, EventArgs e)
        {
            Document this_doc = getOpenDoc();
            if (this_doc != null)
            {
                this_doc.urc.redo();
                checkUndoRedo();
            }
        }

        private void menuFTPerl_Click(object sender, EventArgs e)
        {
            changeExtension("pl");
        }

        private void menuFtPython_Click(object sender, EventArgs e)
        {
            changeExtension("py");
        }

        private void menuNewPython_Click(object sender, EventArgs e)
        {
            newFile("py");
        }

        private void menuNewPerl_Click(object sender, EventArgs e)
        {
            newFile("pl");
        }

        private void menuFtRuby_Click(object sender, EventArgs e)
        {
            changeExtension("rb");
        }

        private void menuNewRuby_Click(object sender, EventArgs e)
        {
            newFile("rb");
        }

        private void menuRun_Click_1(object sender, EventArgs e)
        {
            Document d = getOpenDoc();
            if (d != null)
            {
                d.run();
            }
        }

        private void menuStopRun_Click(object sender, EventArgs e)
        {
            Document d = getOpenDoc();
            if (d != null)
            {
                d.end_run();
            }
        }

    }
}
