using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using SyntaxHighlighter;
using System.Text.RegularExpressions;

namespace SchoolScript
{
    public partial class FindAndReplace : Form
    {
        MainWindow parent;
        public FindAndReplace(MainWindow p)
        {
            InitializeComponent();
            parent = p;
        }

        public void findNext(String term)
        {
            SyntaxRichTextBox editorPane = parent.getCurrentRTE();
            int caretpos = 0;
            caretpos = editorPane.SelectionStart+editorPane.SelectionLength;
            if (editorPane.Text.IndexOf(term, caretpos, StringComparison.OrdinalIgnoreCase) >= 0)
            {
                editorPane.SelectionStart = editorPane.Text.IndexOf(term, caretpos, StringComparison.OrdinalIgnoreCase);//start position of highlighting
                editorPane.SelectionLength = term.Length;//length of text to highlight
                editorPane.Focus();
            }
            else
            {
                caretpos = 0;
                if (editorPane.Text.IndexOf(term, caretpos, StringComparison.OrdinalIgnoreCase) >= 0)
                {
                    editorPane.SelectionStart = editorPane.Text.IndexOf(term, caretpos, StringComparison.OrdinalIgnoreCase);//start position of highlighting
                    editorPane.SelectionLength = term.Length;//length of text to highlight
                    editorPane.Focus();
                }
                else
                {
                    MessageBox.Show("Not found");
                }
            }
        }

        public void findPrev(String term)
        {
            SyntaxRichTextBox editorPane = parent.getCurrentRTE();
            int caretpos = 0;
            caretpos = editorPane.SelectionStart;
            if (editorPane.Text.Substring(0, caretpos).LastIndexOf(term, StringComparison.OrdinalIgnoreCase) >= 0)
            {
                editorPane.SelectionStart = editorPane.Text.Substring(0, caretpos).LastIndexOf(term, StringComparison.OrdinalIgnoreCase);//start position of highlighting
                editorPane.SelectionLength = term.Length;//length of text to highlight
                editorPane.Focus();
            }
            else
            {
                caretpos = 0;
                if (editorPane.Text.LastIndexOf(term, StringComparison.OrdinalIgnoreCase) >= 0)
                {
                    editorPane.SelectionStart = editorPane.Text.LastIndexOf(term, StringComparison.OrdinalIgnoreCase);//start position of highlighting
                    editorPane.SelectionLength = term.Length;//length of text to highlight
                    editorPane.Focus();
                }
                else
                {
                    MessageBox.Show("Not found");
                }
            }
        }

        public void replaceNext(String term, String replace)
        {
            SyntaxRichTextBox editorPane = parent.getCurrentRTE();
            int caretpos = 0;
            caretpos = editorPane.SelectionStart + editorPane.SelectionLength;
            if (editorPane.Text.IndexOf(term, caretpos, StringComparison.OrdinalIgnoreCase) >= 0)
            {
                int tio = editorPane.Text.IndexOf(term, caretpos, StringComparison.OrdinalIgnoreCase);
                editorPane.Text = editorPane.Text.Substring(0, tio) + replace + editorPane.Text.Substring(tio + term.Length);
                editorPane.SelectionStart = tio;
                editorPane.SelectionLength = replace.Length;
                editorPane.Focus();
            }
            else
            {
                caretpos = 0;
                if (editorPane.Text.IndexOf(term, caretpos, StringComparison.OrdinalIgnoreCase) >= 0)
                {
                    int tio = editorPane.Text.IndexOf(term, caretpos, StringComparison.OrdinalIgnoreCase);
                    editorPane.Text = editorPane.Text.Substring(0, tio) + replace + editorPane.Text.Substring(tio + term.Length);
                    editorPane.SelectionStart = tio;
                    editorPane.SelectionLength = replace.Length;
                    editorPane.Focus();
                }
                else
                {
                    MessageBox.Show("Not found");
                }
            }
        }
        public void replaceAll(String term, String replace)
        {
            SyntaxRichTextBox editorPane = parent.getCurrentRTE();
            int caretpos = 0;
            bool found;
            do
            {
                found = false;
                if (editorPane.Text.IndexOf(term, caretpos, StringComparison.OrdinalIgnoreCase) >= 0)
                {
                    int tio = editorPane.Text.IndexOf(term, caretpos, StringComparison.OrdinalIgnoreCase);
                    editorPane.Text = editorPane.Text.Substring(0, tio) + replace + editorPane.Text.Substring(tio + term.Length);
                    editorPane.SelectionStart = tio;
                    editorPane.SelectionLength = replace.Length;
                    editorPane.Focus();
                    found = true;
                }

            } while (found);
        }

        public void showWindow(MainWindow parent)
        {
            Show(parent);
            Visible = true;
            BringToFront();
            findBox.Focus();
        }

        private void findNextButton_Click(object sender, EventArgs e)
        {
            findNext(findBox.Text);
        }

        private void FindAndReplace_FormClosing(object sender, FormClosingEventArgs e)
        {
            Hide();
            Visible = false;
            e.Cancel = true;
        }

        private void findPreviousButton_Click(object sender, EventArgs e)
        {
            findPrev(findBox.Text);
        }

        private void replaceNextButton_Click(object sender, EventArgs e)
        {
            replaceNext(findBox.Text, replaceBox.Text);
        }

        private void replaceAllButton_Click(object sender, EventArgs e)
        {
            replaceAll(findBox.Text, replaceBox.Text);
        }
    }
}
