using SyntaxHighlighter;
namespace SchoolScript
{
    partial class MainWindow
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainWindow));
            this.mainMenu = new System.Windows.Forms.MenuStrip();
            this.fileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuNew = new System.Windows.Forms.ToolStripMenuItem();
            this.menuNewBlank = new System.Windows.Forms.ToolStripMenuItem();
            this.menuNewPhp = new System.Windows.Forms.ToolStripMenuItem();
            this.menuNewPython = new System.Windows.Forms.ToolStripMenuItem();
            this.menuNewPerl = new System.Windows.Forms.ToolStripMenuItem();
            this.menuNewRuby = new System.Windows.Forms.ToolStripMenuItem();
            this.menuOpen = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator4 = new System.Windows.Forms.ToolStripSeparator();
            this.menuSave = new System.Windows.Forms.ToolStripMenuItem();
            this.menuSaveAs = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator5 = new System.Windows.Forms.ToolStripSeparator();
            this.tutorialToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator7 = new System.Windows.Forms.ToolStripSeparator();
            this.menuClose = new System.Windows.Forms.ToolStripMenuItem();
            this.menuExit = new System.Windows.Forms.ToolStripMenuItem();
            this.editToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuUndo = new System.Windows.Forms.ToolStripMenuItem();
            this.menuRedo = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator9 = new System.Windows.Forms.ToolStripSeparator();
            this.menuCut = new System.Windows.Forms.ToolStripMenuItem();
            this.menuCopy = new System.Windows.Forms.ToolStripMenuItem();
            this.menuPaste = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.menuSelectAll = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.menuFindAndReplace = new System.Windows.Forms.ToolStripMenuItem();
            this.fileTypeToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuFtPHP = new System.Windows.Forms.ToolStripMenuItem();
            this.menuFtPython = new System.Windows.Forms.ToolStripMenuItem();
            this.menuFtPerl = new System.Windows.Forms.ToolStripMenuItem();
            this.menuFtRuby = new System.Windows.Forms.ToolStripMenuItem();
            this.menuFtText = new System.Windows.Forms.ToolStripMenuItem();
            this.runToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuRun = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStopRun = new System.Windows.Forms.ToolStripMenuItem();
            this.helpToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuHelp = new System.Windows.Forms.ToolStripMenuItem();
            this.menuTutorials = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator6 = new System.Windows.Forms.ToolStripSeparator();
            this.menuAbout = new System.Windows.Forms.ToolStripMenuItem();
            this.printDlg = new System.Windows.Forms.PrintDialog();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabRCMenu = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.tabRCSave = new System.Windows.Forms.ToolStripMenuItem();
            this.tabRCSaveAs = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator3 = new System.Windows.Forms.ToolStripSeparator();
            this.tabRCClose = new System.Windows.Forms.ToolStripMenuItem();
            this.mainMenu.SuspendLayout();
            this.tabRCMenu.SuspendLayout();
            this.SuspendLayout();
            // 
            // mainMenu
            // 
            this.mainMenu.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.mainMenu.Dock = System.Windows.Forms.DockStyle.None;
            this.mainMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.fileToolStripMenuItem,
            this.editToolStripMenuItem,
            this.fileTypeToolStripMenuItem,
            this.runToolStripMenuItem,
            this.helpToolStripMenuItem});
            this.mainMenu.Location = new System.Drawing.Point(0, 0);
            this.mainMenu.Name = "mainMenu";
            this.mainMenu.Size = new System.Drawing.Size(234, 24);
            this.mainMenu.TabIndex = 0;
            this.mainMenu.Text = "menuStrip1";
            // 
            // fileToolStripMenuItem
            // 
            this.fileToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menuNew,
            this.menuOpen,
            this.toolStripSeparator4,
            this.menuSave,
            this.menuSaveAs,
            this.toolStripSeparator5,
            this.tutorialToolStripMenuItem,
            this.toolStripSeparator7,
            this.menuClose,
            this.menuExit});
            this.fileToolStripMenuItem.Name = "fileToolStripMenuItem";
            this.fileToolStripMenuItem.Size = new System.Drawing.Size(37, 20);
            this.fileToolStripMenuItem.Text = "File";
            // 
            // menuNew
            // 
            this.menuNew.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menuNewBlank,
            this.menuNewPhp,
            this.menuNewPython,
            this.menuNewPerl,
            this.menuNewRuby});
            this.menuNew.Name = "menuNew";
            this.menuNew.Size = new System.Drawing.Size(155, 22);
            this.menuNew.Text = "New";
            // 
            // menuNewBlank
            // 
            this.menuNewBlank.Name = "menuNewBlank";
            this.menuNewBlank.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.N)));
            this.menuNewBlank.Size = new System.Drawing.Size(160, 22);
            this.menuNewBlank.Text = "Text File";
            this.menuNewBlank.Click += new System.EventHandler(this.menuNewBlank_Click);
            // 
            // menuNewPhp
            // 
            this.menuNewPhp.Name = "menuNewPhp";
            this.menuNewPhp.Size = new System.Drawing.Size(160, 22);
            this.menuNewPhp.Text = "PHP Script";
            this.menuNewPhp.Click += new System.EventHandler(this.menuNewPhp_Click);
            // 
            // menuNewPython
            // 
            this.menuNewPython.Name = "menuNewPython";
            this.menuNewPython.Size = new System.Drawing.Size(160, 22);
            this.menuNewPython.Text = "Python Script";
            this.menuNewPython.Click += new System.EventHandler(this.menuNewPython_Click);
            // 
            // menuNewPerl
            // 
            this.menuNewPerl.Name = "menuNewPerl";
            this.menuNewPerl.Size = new System.Drawing.Size(160, 22);
            this.menuNewPerl.Text = "Perl Script";
            this.menuNewPerl.Click += new System.EventHandler(this.menuNewPerl_Click);
            // 
            // menuNewRuby
            // 
            this.menuNewRuby.Name = "menuNewRuby";
            this.menuNewRuby.Size = new System.Drawing.Size(160, 22);
            this.menuNewRuby.Text = "Ruby Script";
            this.menuNewRuby.Click += new System.EventHandler(this.menuNewRuby_Click);
            // 
            // menuOpen
            // 
            this.menuOpen.Name = "menuOpen";
            this.menuOpen.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.O)));
            this.menuOpen.Size = new System.Drawing.Size(155, 22);
            this.menuOpen.Text = "Open...";
            this.menuOpen.Click += new System.EventHandler(this.menuOpen_Click);
            // 
            // toolStripSeparator4
            // 
            this.toolStripSeparator4.Name = "toolStripSeparator4";
            this.toolStripSeparator4.Size = new System.Drawing.Size(152, 6);
            // 
            // menuSave
            // 
            this.menuSave.Name = "menuSave";
            this.menuSave.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.S)));
            this.menuSave.Size = new System.Drawing.Size(155, 22);
            this.menuSave.Text = "Save";
            this.menuSave.Click += new System.EventHandler(this.menuSave_Click);
            // 
            // menuSaveAs
            // 
            this.menuSaveAs.Name = "menuSaveAs";
            this.menuSaveAs.Size = new System.Drawing.Size(155, 22);
            this.menuSaveAs.Text = "Save As...";
            this.menuSaveAs.Click += new System.EventHandler(this.menuSaveAs_Click);
            // 
            // toolStripSeparator5
            // 
            this.toolStripSeparator5.Name = "toolStripSeparator5";
            this.toolStripSeparator5.Size = new System.Drawing.Size(152, 6);
            // 
            // tutorialToolStripMenuItem
            // 
            this.tutorialToolStripMenuItem.Name = "tutorialToolStripMenuItem";
            this.tutorialToolStripMenuItem.Size = new System.Drawing.Size(155, 22);
            this.tutorialToolStripMenuItem.Text = "Show Tutorial";
            this.tutorialToolStripMenuItem.Click += new System.EventHandler(this.menuNewTutorial_Click);
            // 
            // toolStripSeparator7
            // 
            this.toolStripSeparator7.Name = "toolStripSeparator7";
            this.toolStripSeparator7.Size = new System.Drawing.Size(152, 6);
            // 
            // menuClose
            // 
            this.menuClose.Name = "menuClose";
            this.menuClose.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.W)));
            this.menuClose.Size = new System.Drawing.Size(155, 22);
            this.menuClose.Text = "Close";
            this.menuClose.Click += new System.EventHandler(this.menuClose_Click);
            // 
            // menuExit
            // 
            this.menuExit.Name = "menuExit";
            this.menuExit.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.Q)));
            this.menuExit.Size = new System.Drawing.Size(155, 22);
            this.menuExit.Text = "Exit";
            this.menuExit.Click += new System.EventHandler(this.menuExit_Click);
            // 
            // editToolStripMenuItem
            // 
            this.editToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menuUndo,
            this.menuRedo,
            this.toolStripSeparator9,
            this.menuCut,
            this.menuCopy,
            this.menuPaste,
            this.toolStripSeparator1,
            this.menuSelectAll,
            this.toolStripSeparator2,
            this.menuFindAndReplace});
            this.editToolStripMenuItem.Name = "editToolStripMenuItem";
            this.editToolStripMenuItem.Size = new System.Drawing.Size(39, 20);
            this.editToolStripMenuItem.Text = "Edit";
            // 
            // menuUndo
            // 
            this.menuUndo.Name = "menuUndo";
            this.menuUndo.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.Z)));
            this.menuUndo.Size = new System.Drawing.Size(213, 22);
            this.menuUndo.Text = "Undo";
            this.menuUndo.Click += new System.EventHandler(this.menuUndo_Click);
            // 
            // menuRedo
            // 
            this.menuRedo.Name = "menuRedo";
            this.menuRedo.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.Y)));
            this.menuRedo.Size = new System.Drawing.Size(213, 22);
            this.menuRedo.Text = "Redo";
            this.menuRedo.Click += new System.EventHandler(this.menuRedo_Click);
            // 
            // toolStripSeparator9
            // 
            this.toolStripSeparator9.Name = "toolStripSeparator9";
            this.toolStripSeparator9.Size = new System.Drawing.Size(210, 6);
            // 
            // menuCut
            // 
            this.menuCut.Name = "menuCut";
            this.menuCut.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.X)));
            this.menuCut.Size = new System.Drawing.Size(213, 22);
            this.menuCut.Text = "Cut";
            this.menuCut.Click += new System.EventHandler(this.menuCut_Click);
            // 
            // menuCopy
            // 
            this.menuCopy.Name = "menuCopy";
            this.menuCopy.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.C)));
            this.menuCopy.Size = new System.Drawing.Size(213, 22);
            this.menuCopy.Text = "Copy";
            this.menuCopy.Click += new System.EventHandler(this.menuCopy_Click);
            // 
            // menuPaste
            // 
            this.menuPaste.Name = "menuPaste";
            this.menuPaste.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.V)));
            this.menuPaste.Size = new System.Drawing.Size(213, 22);
            this.menuPaste.Text = "Paste";
            this.menuPaste.Click += new System.EventHandler(this.menuPaste_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(210, 6);
            // 
            // menuSelectAll
            // 
            this.menuSelectAll.Name = "menuSelectAll";
            this.menuSelectAll.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.A)));
            this.menuSelectAll.Size = new System.Drawing.Size(213, 22);
            this.menuSelectAll.Text = "Select All";
            this.menuSelectAll.Click += new System.EventHandler(this.menuSelectAll_Click);
            // 
            // toolStripSeparator2
            // 
            this.toolStripSeparator2.Name = "toolStripSeparator2";
            this.toolStripSeparator2.Size = new System.Drawing.Size(210, 6);
            // 
            // menuFindAndReplace
            // 
            this.menuFindAndReplace.Name = "menuFindAndReplace";
            this.menuFindAndReplace.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.F)));
            this.menuFindAndReplace.Size = new System.Drawing.Size(213, 22);
            this.menuFindAndReplace.Text = "Find and Replace...";
            this.menuFindAndReplace.Click += new System.EventHandler(this.menuFindAndReplace_Click);
            // 
            // fileTypeToolStripMenuItem
            // 
            this.fileTypeToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menuFtPHP,
            this.menuFtPython,
            this.menuFtPerl,
            this.menuFtRuby,
            this.menuFtText});
            this.fileTypeToolStripMenuItem.Name = "fileTypeToolStripMenuItem";
            this.fileTypeToolStripMenuItem.Size = new System.Drawing.Size(66, 20);
            this.fileTypeToolStripMenuItem.Text = "File Type";
            // 
            // menuFtPHP
            // 
            this.menuFtPHP.Name = "menuFtPHP";
            this.menuFtPHP.Size = new System.Drawing.Size(112, 22);
            this.menuFtPHP.Text = "PHP";
            this.menuFtPHP.Click += new System.EventHandler(this.menuFtPHP_Click);
            // 
            // menuFtPython
            // 
            this.menuFtPython.Name = "menuFtPython";
            this.menuFtPython.Size = new System.Drawing.Size(112, 22);
            this.menuFtPython.Text = "Python";
            this.menuFtPython.Click += new System.EventHandler(this.menuFtPython_Click);
            // 
            // menuFtPerl
            // 
            this.menuFtPerl.Name = "menuFtPerl";
            this.menuFtPerl.Size = new System.Drawing.Size(112, 22);
            this.menuFtPerl.Text = "Perl";
            this.menuFtPerl.Click += new System.EventHandler(this.menuFTPerl_Click);
            // 
            // menuFtRuby
            // 
            this.menuFtRuby.Name = "menuFtRuby";
            this.menuFtRuby.Size = new System.Drawing.Size(112, 22);
            this.menuFtRuby.Text = "Ruby";
            this.menuFtRuby.Click += new System.EventHandler(this.menuFtRuby_Click);
            // 
            // menuFtText
            // 
            this.menuFtText.Checked = true;
            this.menuFtText.CheckState = System.Windows.Forms.CheckState.Checked;
            this.menuFtText.Name = "menuFtText";
            this.menuFtText.Size = new System.Drawing.Size(112, 22);
            this.menuFtText.Text = "Text";
            this.menuFtText.Click += new System.EventHandler(this.menuFtText_Click);
            // 
            // runToolStripMenuItem
            // 
            this.runToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menuRun,
            this.menuStopRun});
            this.runToolStripMenuItem.Name = "runToolStripMenuItem";
            this.runToolStripMenuItem.Size = new System.Drawing.Size(40, 20);
            this.runToolStripMenuItem.Text = "Run";
            // 
            // menuRun
            // 
            this.menuRun.Name = "menuRun";
            this.menuRun.ShortcutKeys = System.Windows.Forms.Keys.F5;
            this.menuRun.Size = new System.Drawing.Size(117, 22);
            this.menuRun.Text = "Run";
            this.menuRun.Click += new System.EventHandler(this.menuRun_Click_1);
            // 
            // menuStopRun
            // 
            this.menuStopRun.Name = "menuStopRun";
            this.menuStopRun.ShortcutKeys = System.Windows.Forms.Keys.F6;
            this.menuStopRun.Size = new System.Drawing.Size(117, 22);
            this.menuStopRun.Text = "Stop";
            this.menuStopRun.Click += new System.EventHandler(this.menuStopRun_Click);
            // 
            // helpToolStripMenuItem
            // 
            this.helpToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menuHelp,
            this.menuTutorials,
            this.toolStripSeparator6,
            this.menuAbout});
            this.helpToolStripMenuItem.Name = "helpToolStripMenuItem";
            this.helpToolStripMenuItem.Size = new System.Drawing.Size(44, 20);
            this.helpToolStripMenuItem.Text = "Help";
            // 
            // menuHelp
            // 
            this.menuHelp.Name = "menuHelp";
            this.menuHelp.ShortcutKeys = System.Windows.Forms.Keys.F1;
            this.menuHelp.Size = new System.Drawing.Size(176, 22);
            this.menuHelp.Text = "View Help";
            // 
            // menuTutorials
            // 
            this.menuTutorials.Name = "menuTutorials";
            this.menuTutorials.Size = new System.Drawing.Size(176, 22);
            this.menuTutorials.Text = "Show Tutorial";
            this.menuTutorials.Click += new System.EventHandler(this.menuTutorials_Click);
            // 
            // toolStripSeparator6
            // 
            this.toolStripSeparator6.Name = "toolStripSeparator6";
            this.toolStripSeparator6.Size = new System.Drawing.Size(173, 6);
            // 
            // menuAbout
            // 
            this.menuAbout.Name = "menuAbout";
            this.menuAbout.Size = new System.Drawing.Size(176, 22);
            this.menuAbout.Text = "About SchoolScript";
            this.menuAbout.Click += new System.EventHandler(this.aboutToolStripMenuItem_Click);
            // 
            // printDlg
            // 
            this.printDlg.UseEXDialog = true;
            // 
            // tabControl1
            // 
            this.tabControl1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.tabControl1.Location = new System.Drawing.Point(12, 27);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(760, 543);
            this.tabControl1.TabIndex = 4;
            this.tabControl1.SelectedIndexChanged += new System.EventHandler(this.tabControl1_SelectedIndexChanged);
            this.tabControl1.MouseClick += new System.Windows.Forms.MouseEventHandler(this.tabControl1_MouseClick);
            // 
            // tabRCMenu
            // 
            this.tabRCMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tabRCSave,
            this.tabRCSaveAs,
            this.toolStripSeparator3,
            this.tabRCClose});
            this.tabRCMenu.Name = "tabRCMenu";
            this.tabRCMenu.Size = new System.Drawing.Size(124, 76);
            // 
            // tabRCSave
            // 
            this.tabRCSave.Name = "tabRCSave";
            this.tabRCSave.Size = new System.Drawing.Size(123, 22);
            this.tabRCSave.Text = "Save";
            this.tabRCSave.Click += new System.EventHandler(this.saveToolStripMenuItem_Click);
            // 
            // tabRCSaveAs
            // 
            this.tabRCSaveAs.Name = "tabRCSaveAs";
            this.tabRCSaveAs.Size = new System.Drawing.Size(123, 22);
            this.tabRCSaveAs.Text = "Save As...";
            this.tabRCSaveAs.Click += new System.EventHandler(this.tabRCSaveAs_Click);
            // 
            // toolStripSeparator3
            // 
            this.toolStripSeparator3.Name = "toolStripSeparator3";
            this.toolStripSeparator3.Size = new System.Drawing.Size(120, 6);
            // 
            // tabRCClose
            // 
            this.tabRCClose.Name = "tabRCClose";
            this.tabRCClose.Size = new System.Drawing.Size(123, 22);
            this.tabRCClose.Text = "Close";
            this.tabRCClose.Click += new System.EventHandler(this.tabRCClose_Click);
            // 
            // MainWindow
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.ClientSize = new System.Drawing.Size(784, 582);
            this.Controls.Add(this.tabControl1);
            this.Controls.Add(this.mainMenu);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MainMenuStrip = this.mainMenu;
            this.MinimumSize = new System.Drawing.Size(400, 620);
            this.Name = "MainWindow";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "SchoolScript";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.MainWindow_FormClosing);
            this.Load += new System.EventHandler(this.MainWindow_Load);
            this.mainMenu.ResumeLayout(false);
            this.mainMenu.PerformLayout();
            this.tabRCMenu.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip mainMenu;
        private System.Windows.Forms.ToolStripMenuItem fileToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem menuNew;
        private System.Windows.Forms.ToolStripMenuItem menuNewBlank;
        private System.Windows.Forms.ToolStripMenuItem menuNewPhp;
        private System.Windows.Forms.ToolStripMenuItem menuOpen;
        private System.Windows.Forms.ToolStripMenuItem menuSave;
        private System.Windows.Forms.ToolStripMenuItem menuSaveAs;
        private System.Windows.Forms.ToolStripMenuItem menuExit;
        private System.Windows.Forms.ToolStripMenuItem editToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator4;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator5;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator7;
        private System.Windows.Forms.ToolStripMenuItem menuCut;
        private System.Windows.Forms.ToolStripMenuItem menuCopy;
        private System.Windows.Forms.ToolStripMenuItem menuPaste;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripMenuItem menuSelectAll;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.ToolStripMenuItem menuFindAndReplace;
        private System.Windows.Forms.ToolStripMenuItem helpToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem menuHelp;
        private System.Windows.Forms.ToolStripMenuItem menuTutorials;
        private System.Windows.Forms.PrintDialog printDlg;
        private System.Windows.Forms.ToolStripMenuItem menuUndo;
        private System.Windows.Forms.ToolStripMenuItem menuRedo;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator9;
        private System.Windows.Forms.ToolStripMenuItem fileTypeToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem menuFtPHP;
        private System.Windows.Forms.ToolStripMenuItem menuFtText;
        private System.Windows.Forms.ToolStripMenuItem tutorialToolStripMenuItem;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.ToolStripMenuItem menuClose;
        private System.Windows.Forms.ToolStripMenuItem menuAbout;
        private System.Windows.Forms.ContextMenuStrip tabRCMenu;
        private System.Windows.Forms.ToolStripMenuItem tabRCSave;
        private System.Windows.Forms.ToolStripMenuItem tabRCSaveAs;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator3;
        private System.Windows.Forms.ToolStripMenuItem tabRCClose;
        private System.Windows.Forms.ToolStripMenuItem menuFtPerl;
        private System.Windows.Forms.ToolStripMenuItem menuFtPython;
        private System.Windows.Forms.ToolStripMenuItem menuNewPython;
        private System.Windows.Forms.ToolStripMenuItem menuNewPerl;
        private System.Windows.Forms.ToolStripMenuItem menuFtRuby;
        private System.Windows.Forms.ToolStripMenuItem menuNewRuby;
        private System.Windows.Forms.ToolStripMenuItem runToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem menuRun;
        private System.Windows.Forms.ToolStripMenuItem menuStopRun;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator6;
    }
}

