using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using SyntaxHighlighter;
using System.IO;
using System.Text.RegularExpressions;
using System.Drawing;
using System.Diagnostics;
using System.Threading;

namespace SchoolScript
{
    public class Document
    {

        public TabPage container = null;
        public TabControl controller = null;
        String prevSave = "";
        String fileExtension = "txt";
        String saveFileName = "";
        String filename = "";
        public SyntaxRichTextBox editorPane;
        public RichTextBox consolePane;
        public Panel tutorialPanel;
        public TutorialManager tutMan;
        private int thisDocumentNumber;
        public MainWindow parent;
        public bool tutorial_open=false;
        public UndoRedoController urc;

        public bool isRunning = false;

        public Process runProcess = null;
        StreamWriter myStreamWriter = null;

        public Thread runThread = null;

        public static int documentNumber = 0;

        public Document(MainWindow p, TabControl cont, bool open=false,String extension="")
        {
            parent = p;
            this.controller = cont;
            if (open)
            {
                OpenFileDialog openDlg = new OpenFileDialog();
                openDlg.Filter = "PHP Script|*.php|Python Script|*.py|Perl Script|*.pl|Ruby Script|*.rb|Text File|*.txt|All Files|*.*";
                openDlg.FilterIndex=6;
                if (openDlg.ShowDialog() == DialogResult.OK)
                {
                    String file = openDlg.FileName;

                    if (file != null && File.Exists(file))
                    {
                        String text = System.IO.File.ReadAllText(file);
                        setFileName(file);
                        setExtension(file.Substring(file.LastIndexOf('.') + 1));
                        createElements();
                        editorPane.Text = text;
                        prevSave = editorPane.Text;
                    }
                    else
                    {
                        throw new Exception("File not opened");
                    }
                }
                else
                {
                    throw new Exception("File not opened");
                }
                openDlg.Dispose();
            }
            else
            {
                Document.documentNumber++;
                thisDocumentNumber = documentNumber;
                createElements();
                setFileName("Untitled " + thisDocumentNumber+ "."+extension);
                setExtension(extension);
                editorPane.Text = "";
                prevSave = editorPane.Text;
            }
            tutMan = new TutorialManager(tutorialPanel);
        }
        public Document(MainWindow p, TabControl cont, String open)
        {
            parent = p;
            this.controller = cont;
            String file = open;

            if (file != null && File.Exists(file))
            {
                String text = System.IO.File.ReadAllText(file);
                createElements();
                setFileName(file);
                setExtension(file.Substring(file.LastIndexOf('.') + 1));
                editorPane.Text = text;
                prevSave = editorPane.Text;
            }
            else
            {
                throw new Exception("File not opened");
            }

            tutMan = new TutorialManager(tutorialPanel);
        }

        public void grabFocus()
        {
            editorPane.Focus();
        }

        public void createElements()
        {
            container = new TabPage(filename);
            controller.TabPages.Add(container);
            if (container!=null)
            {
                Size tsize=container.Size;
                editorPane = new SyntaxRichTextBox();
                editorPane.AcceptsTab = true;
                editorPane.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                            | System.Windows.Forms.AnchorStyles.Left)
                            | System.Windows.Forms.AnchorStyles.Right)));
                editorPane.BackColor = System.Drawing.Color.White;
                editorPane.Font = new System.Drawing.Font("Consolas", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
                editorPane.ForeColor = Color.Black;
                editorPane.Location = new System.Drawing.Point(0, 0);
                editorPane.Size = new Size(tsize.Width, tsize.Height-175);
                editorPane.TabIndex = 1;
                editorPane.Text = "";
                editorPane.TextChanged+=new EventHandler(editor_textChanged);
                container.Controls.Add(editorPane);

                consolePane = new RichTextBox();
                consolePane.AcceptsTab = true;
                consolePane.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)
                            | System.Windows.Forms.AnchorStyles.Right)));
                consolePane.Font = new System.Drawing.Font("Consolas", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
                consolePane.Location = new System.Drawing.Point(0, tsize.Height-175);
                consolePane.Size = new System.Drawing.Size(tsize.Width, 175);
                consolePane.TabIndex = 2;
                consolePane.Text = "";
                consolePane.BackColor = Color.Black;
                consolePane.ForeColor = Color.White;
                consolePane.KeyDown += new KeyEventHandler(console_keyPress);

                container.Controls.Add(consolePane);

                tutorialPanel = new Panel();
                this.tutorialPanel.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                            | System.Windows.Forms.AnchorStyles.Right)));
                this.tutorialPanel.BackColor = System.Drawing.SystemColors.Control;
                this.tutorialPanel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
                this.tutorialPanel.Location = new System.Drawing.Point(tsize.Width-300, 0);
                this.tutorialPanel.Size = new System.Drawing.Size(300, tsize.Height-175);
                this.tutorialPanel.TabIndex = 3;
                this.tutorialPanel.Visible = false;

                container.Controls.Add(tutorialPanel);

                ContextMenu editorRightClickMenu = new ContextMenu();
                editorRightClickMenu.MenuItems.Add("Cut",new EventHandler(parent.rcCut_Click));
                editorRightClickMenu.MenuItems.Add("Copy",new EventHandler(parent.rcCopy_Click));
                editorRightClickMenu.MenuItems.Add("Paste",new EventHandler(parent.rcPaste_Click));
                editorPane.ContextMenu = editorRightClickMenu;

                urc = new UndoRedoController(editorPane);
            }
        }

        private string sendString = "";

        private void console_keyPress(Object sender, KeyEventArgs e)
        {
            if (myStreamWriter != null)
            {
                myStreamWriter.Write(e.KeyValue);
            }
        }

        private void editor_textChanged(Object sender, EventArgs e)
        {
            parent.checkUndoRedo();
        }

        public String getExtension()
        {
            return fileExtension;
        }
        public void setExtension(String ext)
        {
            fileExtension = ext.ToLower();
            if (saveFileName.Length == 0 && thisDocumentNumber>0)
            {
                setFileName("Untitled " + thisDocumentNumber + "." + fileExtension);
            }
            if (fileExtension == "php")
            {
                string[] kw = new string[] { "__halt_compiler", "abstract", "and", "array", "as", "break", "callable", "case", "catch", "class", "clone", "const", "continue", "declare", "default", "die", "do", "echo", "else", "elseif", "empty", "enddeclare", "endfor", "endforeach", "endif", "endswitch", "endwhile", "eval", "exit", "extends", "final", "for", "foreach", "function", "global", "goto", "if", "implements", "include", "include_once", "instanceof", "insteadof", "interface", "isset", "list", "namespace", "new", "or", "print", "private", "protected", "public", "require", "require_once", "return", "static", "switch", "throw", "trait", "try", "unset", "use", "var", "while", "xor", "__CLASS__", "__DIR__", "__FILE__", "__FUNCTION__", "__LINE__", "__METHOD__", "__NAMESPACE__", "__TRAIT__" };

                editorPane.setKeywords(kw);
                editorPane.setComments(@"(/\*((.|\n|\r)*?)\*/)|(//(.*)(\n|\r|$))");
                editorPane.enableHighlighting();
            }
            else if (fileExtension == "py")
            {
                string[] kw = new string[] { "and", "del", "from", "not", "while", "as", "elif", "global", "or", "with", "assert", "else", "if", "pass", "yield", "break", "except", "import", "print", "class", "exec", "in", "raise", "continue", "finally", "is", "return", "def", "for", "lambda", "try" };

                editorPane.setKeywords(kw);
                editorPane.setComments(@"(""(\W?)""(\W?)""((.|\n|\r)*?)""(\W?)""(\W?)"")|(#(.*)(\n|\r|$))");
                editorPane.enableHighlighting();
            }
            else if (fileExtension == "pl")
            {
                string[] kw = new string[] { "and", "del", "from", "not", "while", "as", "elif", "global", "or", "with", "assert", "else", "if", "pass", "yield", "break", "except", "import", "print", "class", "exec", "in", "raise", "continue", "finally", "is", "return", "def", "for", "lambda", "try" };

                editorPane.setKeywords(kw);
                editorPane.enableHighlighting();
            }
            else
            {
                string[] kw = new string[0];

                editorPane.setKeywords(kw);

                editorPane.disableHighlighting();
            }
            
        }

        public bool isSaved()
        {
            return false;
        }

        private void rewriteTabName()
        {
            if (container != null)
            {
                container.Text = getFileName();
            }
        }

        public void setFileName(String name)
        {
            filename = name;
            if (Path.GetDirectoryName(name).Length>0)
            {
                saveFileName = filename;
            }
            filename = Path.GetFileName(filename);
            rewriteTabName();
        }

        public String getFileName()
        {
            return filename;
        }

        public String getFullName()
        {
            if (saveFileName.Length > 0)
            {
                return saveFileName;
            }
            else
            {
                return filename;
            }
        }

        public void save()
        {
            if (saveFileName.Length == 0)
            {
                saveAs();
            }
            else
            {
                TextWriter tw = new StreamWriter(saveFileName);
                tw.Write(editorPane.Text);
                tw.Close();
                prevSave = editorPane.Text;
            }
        }

        public void saveAs()
        {
            SaveFileDialog saveDlg = new SaveFileDialog();
            saveDlg.Filter = "PHP Script|*.php|Python Script|*.py|Perl Script|*.pl|Ruby Script|*.rb|Text File|*.txt";
            if (fileExtension == "php")
            {
                saveDlg.FilterIndex = 1;
            }
            if (fileExtension == "py")
            {
                saveDlg.FilterIndex = 2;
            }
            if (fileExtension == "pl")
            {
                saveDlg.FilterIndex = 3;
            }
            if (fileExtension == "rb")
            {
                saveDlg.FilterIndex = 4;
            }
            if (fileExtension == "txt")
            {
                saveDlg.FilterIndex = 5;
            }
            saveDlg.DefaultExt = fileExtension;
            saveDlg.AddExtension = true;

            saveDlg.FileName = getFileName();

            if (saveDlg.ShowDialog() == DialogResult.OK)
            {
                String file = saveDlg.FileName;

                if (file != null && file.Length > 0)
                {
                    setFileName(file);
                    setExtension(file.Substring(file.LastIndexOf('.') + 1));

                    save();
                }
            }
            saveDlg.Dispose();
            parent.update_currdoc_window();
        }

        public bool close(MainWindow parent)
        {
            end_run();
            bool ga = true;
            if (prevSave != editorPane.Text)
            {
                DialogResult response = MessageBox.Show("Do you want to save the changes to "+getFileName()+"?", "SchoolScript", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Exclamation, MessageBoxDefaultButton.Button1);
                if (response == DialogResult.Yes)
                {
                    save();
                }
                else if (response == DialogResult.Cancel)
                {
                    ga = false;
                }
            }

            if (ga)
            {
                if (parent != null)
                {
                    parent.removeDoc(this);
                }
                if (controller.SelectedIndex >= 0)
                {
                    controller.SelectedIndex--;
                }
                controller.TabPages.Remove(container);
            }

            return ga;
        }

        public void run()
        {
            isRunning = true;
            parent.update_currdoc_window();
            String fn = saveFileName;
            consolePane.Text = "";
            if (fn.Length > 0 && prevSave != editorPane.Text)
            {
                DialogResult res = MessageBox.Show("Do you want to save the file before running it?", "", MessageBoxButtons.YesNo);
                if (res == DialogResult.Yes)
                {
                    save();
                }
                else
                {
                    fn = "";
                }
            }
            if (fn.Length == 0)
            {
                if (!Directory.Exists("tempstore"))
                {
                    Directory.CreateDirectory("tempstore");
                }
                fn = "tempstore\\" + RandomString(30) + "." + fileExtension;
                TextWriter tw = new StreamWriter(fn);
                tw.Write(editorPane.Text);
                tw.Close();
            }
            if (fileExtension == "php")
            {
                runThread = new Thread(delegate()
                {
                    run_php(fn);
                });
                runThread.Start();
            }
            if (fileExtension == "py")
            {
                runThread = new Thread(delegate()
                {
                    run_python(fn);
                });
                runThread.Start();
            }
            if (fileExtension == "pl")
            {
                runThread = new Thread(delegate()
                {
                    run_perl(fn);
                });
                runThread.Start();
            }
            if (fileExtension == "rb")
            {
                runThread = new Thread(delegate()
                {
                    run_ruby(fn);
                });
                runThread.Start();
            }
            if (fileExtension == "txt")
            {
                MessageBox.Show("You can't run text files");
                endRunning(fn);
            }
        }
        private void run_php(String file)
        {
            string call = @"""phplib\php-win.exe""";
            runProcess = new Process();

            ProcessStartInfo myProcessStartInfo = new ProcessStartInfo(call, "spawn");
            myProcessStartInfo.UseShellExecute = false;
            myProcessStartInfo.RedirectStandardOutput = true;

            myProcessStartInfo.Arguments = @"-f""" + file + @"""";
            runProcess.StartInfo = myProcessStartInfo;

            runProcess.Start();
            StreamReader myStreamReader = runProcess.StandardOutput;
            //myStreamWriter = runProcess.StandardInput;

            String myString = myStreamReader.ReadLine();
            while (myString != null && myString.Length > 0)
            {
                //consolePane.Text += myString + "\n";
                consolePane.Invoke((MethodInvoker)(()=>consolePane.Text+=myString + "\n"));
                myString = myStreamReader.ReadLine();
            }
            endRunning(file);
        }

        private void endRunning(String file)
        {
            isRunning = false;
            if (filename != file)
            {
                File.Delete(file);
            }
            parent.Invoke((MethodInvoker)(() => parent.update_currdoc_window()));
        }

        private void run_python(String file)
        {
            runProcess = new System.Diagnostics.Process();
            ProcessStartInfo startInfo = new System.Diagnostics.ProcessStartInfo();
            startInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden;
            startInfo.FileName = @"""pythonlib\pythonw.exe""";
            startInfo.Arguments = '"'+file+'"';
            startInfo.UseShellExecute = false;
            startInfo.RedirectStandardOutput = true;
            runProcess.StartInfo = startInfo;
            runProcess.Start();
            StreamReader myStreamReader = runProcess.StandardOutput;
            //myStreamWriter = runProcess.StandardInput;

            // Read the standard output of the spawned process.
            String myString = myStreamReader.ReadLine();
            while (myString != null && myString.Length > 0)
            {
                //consolePane.Text += myString + "\n";
                consolePane.Invoke((MethodInvoker)(() => consolePane.Text += myString + "\n"));
                myString = myStreamReader.ReadLine();
            }

            endRunning(file);
        }

        private void run_perl(String file)
        {
            runProcess = new System.Diagnostics.Process();
            ProcessStartInfo startInfo = new System.Diagnostics.ProcessStartInfo();
            startInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden;
            startInfo.FileName = @"""perllib\bin\wperl.exe""";
            startInfo.Arguments = '"' + file + '"';
            startInfo.UseShellExecute = false;
            startInfo.RedirectStandardOutput = true;
            startInfo.RedirectStandardInput = true;
            runProcess.StartInfo = startInfo;
            runProcess.Start();
            StreamReader myStreamReader = runProcess.StandardOutput;
            //myStreamWriter = runProcess.StandardInput;
            String res;
            while (!runProcess.HasExited)
            {
                res = runProcess.StandardOutput.ReadLine();
                consolePane.Invoke((MethodInvoker)(() => consolePane.Text += res));
                
            }
            endRunning(file);
        }

        private void run_ruby(String file)
        {
            runProcess = new System.Diagnostics.Process();
            ProcessStartInfo startInfo = new System.Diagnostics.ProcessStartInfo();
            startInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden;
            startInfo.FileName = @"""rubylib\bin\rubyw.exe""";
            startInfo.Arguments = '"' + file + '"';
            startInfo.UseShellExecute = false;
            startInfo.RedirectStandardOutput = true;
            runProcess.StartInfo = startInfo;
            runProcess.Start();
            StreamReader myStreamReader = runProcess.StandardOutput;
            //myStreamWriter = runProcess.StandardInput;

            // Read the standard output of the spawned process.
            String myString = myStreamReader.ReadLine();
            while (myString != null && myString.Length > 0)
            {
                //consolePane.Text += myString + "\n";
                consolePane.Invoke((MethodInvoker)(() => consolePane.Text += myString + "\n"));
                myString = myStreamReader.ReadLine();
            }

            endRunning(file);
        }

        public void end_run() {
            if (runProcess != null)
            {
                runProcess.Close();
                runProcess = null;
            }
            if (runThread != null)
            {
                runThread.Abort();
                runThread = null;
            }
            isRunning = false;
            parent.update_currdoc_window();
        }

        public void showTutorial()
        {
            if (!tutorialPanel.Visible)
            {
                editorPane.Width -= 300;
                tutorialPanel.Visible = true;
                tutorial_open = true;
            }
            else
            {
                tutorial_open = false;
                editorPane.Width += 300;
                tutorialPanel.Visible = false;
            }
        }

        private static Random random = new Random((int)DateTime.Now.Ticks);
        private string RandomString(int size)
        {
            StringBuilder builder = new StringBuilder();
            char ch;
            for (int i = 0; i < size; i++)
            {
                ch = Convert.ToChar(Convert.ToInt32(Math.Floor(26 * random.NextDouble() + 65)));
                builder.Append(ch);
            }

            return builder.ToString();
        }


        public Control GetIndexFocusedControl()
        {
            int ind = -1;
            foreach (Control ctr in container.Controls)
            {
                if (ctr.Focused)
                {
                    ind = (int)container.Controls.IndexOf(ctr);
                }
            }
            return container.Controls[ind];
        }

    }
}
