using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Drawing;
using System.Windows.Forms;
using System.IO;

namespace SchoolScript
{
    public class TutorialManager
    {
        private Panel whole_panel;

        public TutorialManager(Panel tutorial_panel)
        {
            whole_panel = tutorial_panel;

            Size tsize = whole_panel.Size;
            string curDir = Directory.GetCurrentDirectory();
            WebBrowser main_browser = new WebBrowser();
            main_browser.Url = new Uri(String.Format("file:///{0}/tutorials/index.html", curDir));
            main_browser.Size = tsize;
            main_browser.Width -= 5;

            main_browser.AllowWebBrowserDrop = false;
            main_browser.WebBrowserShortcutsEnabled = false;
            
            whole_panel.Controls.Add(main_browser);
        }
    }
}
