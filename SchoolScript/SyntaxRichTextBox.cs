using System;
using System.Windows.Forms;
using System.Text.RegularExpressions;
using System.Drawing;
using System.Runtime.InteropServices;
using zeroflag.Windows;
using System.Threading;
using System.ComponentModel;
using System.Collections.Generic;
using System.Collections;
using System.Reflection;

namespace SyntaxHighlighter
{
    public class SyntaxRichTextBox : System.Windows.Forms.RichTextBox
    {
        [DllImport("user32.dll")]
        public static extern int SendMessage(IntPtr hWnd, int wMsg, IntPtr wParam, IntPtr lParam);

        [DllImport("user32.dll")]
        public static extern int SendMessage(IntPtr hWnd, int wMsg, IntPtr wParam, ref Point lParam);

        private static bool m_bPaint = true;

        private static Color col_default = Color.Black;
        private static Color col_keywords = Color.FromArgb(0, 0, 255);
        private static Color col_numbers = Color.FromArgb(68, 162, 0);
        private static Color col_strings = Color.FromArgb(193, 21, 21);
        private static Color col_comments = Color.FromArgb(0, 128, 0);
        private static Color col_bg = Color.White;

        private bool syntaxHighlighting=true;
        private System.Windows.Forms.Timer timer1;

        public SyntaxRichTextBox()
        {
            SelectionTabs = new int[] { 28, 56, 84, 112, 140, 168, 196, 224, 252, 280 };
            timer1 = new System.Windows.Forms.Timer();
            timer1.Tick += new EventHandler(timer1_Tick);
            timer1.Interval = 2500; // in miliseconds
            timer1.Start();
            ColorCode();

            this.TextChanged += new EventHandler(this.TemporalTextBox_TextChanged);
            this.KeyDown += new KeyEventHandler(this.TemporalTextBox_KeyDown);

            

            /*SetStyle(ControlStyles.UserPaint, true);
            SetStyle(ControlStyles.AllPaintingInWmPaint, true);
            SetStyle(ControlStyles.OptimizedDoubleBuffer, true);
            SetStyle(ControlStyles.ResizeRedraw, true);
            this.SelectionChanged += new EventHandler(selectionChanged);
            this.VScroll += new EventHandler(OnVScroll);
            */
        }

        protected override void WndProc(ref System.Windows.Forms.Message m)
        {
            if (m.Msg == 0x00f)
            {
                if (m_bPaint)
                    base.WndProc(ref m);
                else
                    m.Result = IntPtr.Zero;
            }
            else
                base.WndProc(ref m);
        }

        private double _Yfactor = 1.0d;


        public Point ScrollPos
        {
            get
            {
                Point scrollPoint = new Point();
                SendMessage(this.Handle, (int)WindowsMessages.EM_GETSCROLLPOS, (IntPtr) 0, ref scrollPoint);
                return scrollPoint;
            }
            set
            {
                Point original = value;
                if (original.Y < 0)
                    original.Y = 0;
                if (original.X < 0)
                    original.X = 0;

                Point factored = value;
                factored.Y = (int)((double)original.Y * _Yfactor);
                Point result = value;
                SendMessage(this.Handle, (int)WindowsMessages.EM_SETSCROLLPOS, (IntPtr) 0, ref factored);
                SendMessage(this.Handle, (int)WindowsMessages.EM_GETSCROLLPOS, (IntPtr) 0, ref result);
                int loopcount = 0;
                int maxloop = 100;
                while (result.Y != original.Y)
                {
                    if (result.Y > original.Y)
                        factored.Y -= (result.Y - original.Y) / 2 - 1;
                    else if (result.Y < original.Y)
                        factored.Y += (original.Y - result.Y) / 2 + 1;
                    SendMessage(this.Handle, (int)WindowsMessages.EM_SETSCROLLPOS, (IntPtr) 0, ref factored);
                    SendMessage(this.Handle, (int)WindowsMessages.EM_GETSCROLLPOS, (IntPtr) 0, ref result);
                    loopcount++;
                    if (loopcount >= maxloop || result.Y == original.Y)
                    {
                        _Yfactor = (double)factored.Y / (double)original.Y;
                        break;
                    }
                }
            }
        }

        private bool isChanged=false;
        private void timer1_Tick(object sender, EventArgs e)
        {
            if (isChanged)
            {
                isChanged = false;
                int caret = SelectionStart;
                int caretend = SelectionLength;

                if (syntaxHighlighting)
                {
                    ColorCode();
                }
                NeedRecomputeOfLineNumbers();

                SelectionStart = 0;
                SelectionLength = 0;
                SelectionColor = col_default;

                SelectionStart = caret;
                SelectionLength = caretend;

                enableUpdates();
                
            }
        }

        Point sp;

        private void disableUpdates()
        {
            temporalOperationInProgress = true;
            sp = ScrollPos;
            SendMessage(this.Handle, (int)WindowsMessages.WM_SETREDRAW, (IntPtr)0, IntPtr.Zero);
        }

        private void enableUpdates()
        {
            ScrollPos = sp;
            SendMessage(this.Handle, (int)WindowsMessages.WM_SETREDRAW, (IntPtr)1, IntPtr.Zero);
            temporalOperationInProgress = false;
        }

        protected override void OnTextChanged(EventArgs e)
        {
            isChanged=true;
            base.OnTextChanged(e);
        }

        public String keywords = "and|or|xor|for|do|while|foreach|as|return|die|exit|if|then|else|elseif|new|delete|try|throw|catch|finally|class|function|string|array|object|resource|var|bool|boolean|int|integer|float|double|real|string|array|global|const|static|public|private|protected|published|extends|switch|true|false|null|void|this|self|struct|char|signed|unsigned|short|long|select|case|DEFINE|echo";

        public void setKeywords(String[] keywords)
        {
            this.keywords = String.Join("|", keywords);
        }

        public String commentRegex = @"(/\*((.|\n|\r)*?)\*/)|(//(.*)(\n|\r|$))";

        public void setComments(String reg)
        {
            commentRegex = reg;
        }

        public void enableHighlighting()
        {
            syntaxHighlighting = true;
            isChanged = true;
        }

        public void disableHighlighting()
        {
            syntaxHighlighting = false;
            ForeColor = col_default;
        }

        private void ColorCodeRegex(string strRegex, Color color)
        {
            MatchCollection matches = Regex.Matches(Text, strRegex, RegexOptions.IgnoreCase | RegexOptions.Compiled);
            foreach (Match theMatch in matches)
            {
                SelectionStart = theMatch.Index;
                SelectionLength = theMatch.Length;
                SelectionColor = color;

            }
        }

        public void ColorCode()
        {
            SelectionStart = 0;
            SelectionLength = Text.Length;
            SelectionColor = col_default;
            //Keywords
            ColorCodeRegex("\\b(" + keywords + ")\\b", col_keywords);
            //Strings
            ColorCodeRegex(@"(?<![\\])(("")((.|\n|\r|)*?)[^\\]"")|((')((.|\n|\r|)*?)[^\\]')", col_strings);
            //Comments
            ColorCodeRegex(commentRegex, col_comments);

        }

        protected override void OnKeyPress(KeyPressEventArgs e)
        {
            if (e.KeyChar == '(')
            {
                SelectedText = "()";
                SelectionLength = 0;
                SelectionStart--;
                e.Handled = true;
            }
            if (e.KeyChar == '{')
            {
                SelectedText = "{}";
                SelectionLength = 0;
                SelectionStart--;
                e.Handled = true;
            }
            if (e.KeyChar == '[')
            {
                SelectedText = "[]";
                SelectionLength = 0;
                SelectionStart--;
                e.Handled = true;
            }
            if (e.KeyChar == '"')
            {
                SelectedText = '"'.ToString()+'"'.ToString();
                SelectionLength = 0;
                SelectionStart--;
                e.Handled = true;
            }
            if (e.KeyChar == '\'')
            {
                SelectedText = "''";
                SelectionLength = 0;
                SelectionStart--;
                e.Handled = true;
            }
            if (e.KeyChar == '\r')
            {
                int pos = GetFirstCharIndexFromLine(GetLineFromCharIndex(GetFirstCharIndexOfCurrentLine())-1);
                int noTabs = 0;
                while (Text.Substring(pos, 1) == "\t")
                {
                    pos++;
                    SelectedText = "\t";
                    noTabs++;
                }
                SelectionLength = 0;
                //SelectionStart -= noTabs;
                if (GetFirstCharIndexOfCurrentLine() - 2 >= 0 
                    && Text.Substring(GetFirstCharIndexOfCurrentLine() - 2, 1) == "{")
                {
                    SelectedText = "\t";
                    if (SelectionLength + SelectionStart < Text.Length &&
                    Text.Substring(SelectionLength + SelectionStart, 1) == "}")
                    {
                        SelectedText += "\r";
                        for (int x = 1; x <= noTabs; x++)
                        {
                            SelectedText += "\t";
                        }
                        SelectionLength = 0;
                        SelectionStart -= (noTabs + 1);
                    }
                    else
                    {
                        SelectionLength = 0;
                    }
                    
                    e.Handled = true;
                }
            }
            base.OnKeyPress(e);
        }

        protected override void OnKeyDown(KeyEventArgs e)
        {
            if (e.KeyValue == 8 && SelectionLength==0 && SelectionStart>0 &&
                Text.Length>SelectionStart)
            {
                String prevChar = Text.Substring(SelectionStart - 1, 1);
                String nextChar = Text.Substring(SelectionStart, 1);

                if (prevChar == "{" && nextChar == "}")
                {
                    SelectionStart--;
                    SelectionLength = 2;
                    SelectedText = "";
                    e.Handled = true;
                }
                if (prevChar == "[" && nextChar == "]")
                {
                    SelectionStart--;
                    SelectionLength = 2;
                    SelectedText = "";
                    e.Handled = true;
                }
                if (prevChar == "(" && nextChar == ")")
                {
                    SelectionStart--;
                    SelectionLength = 2;
                    SelectedText = "";
                    e.Handled = true;
                }
                if (prevChar == "'" && nextChar == "'")
                {
                    SelectionStart--;
                    SelectionLength = 2;
                    SelectedText = "";
                    e.Handled = true;
                }
                if (prevChar == "\"" && nextChar == "\"")
                {
                    SelectionStart--;
                    SelectionLength = 2;
                    SelectedText = "";
                    e.Handled = true;
                }
            }
            base.OnKeyDown(e);
        }


        private void NeedRecomputeOfLineNumbers()
        {

        }

        private int lineIndex = 0;
        private void selectionChanged(object sender, EventArgs args) {
            FindLine();
            Invalidate();
        }

        private void FindLine() {
            int charIndex = this.GetCharIndexFromPosition(new Point(0, 0));
            lineIndex = this.GetLineFromCharIndex(charIndex);
        }

        private void DrawLines(Graphics g) {
            int counter, y;
            g.Clear(BackColor);
            counter = lineIndex + 1;
            y = 2;
            int max = 0;
            while (y < ClientRectangle.Height - 15) {
                SizeF size = g.MeasureString(counter.ToString(), Font);
                g.DrawString(counter.ToString(), Font, new SolidBrush(ForeColor), new Point(3, y));
                counter++;
                y += (int)size.Height;
                if (max < size.Width) {
                    max = (int) size.Width;
                }
            }
            max += 6;
            this.Location = new Point(max, 0);
            this.Size = new Size(ClientRectangle.Width - max, ClientRectangle.Height);
        }

        protected override void OnPaint(PaintEventArgs e) {
            DrawLines(e.Graphics);
            e.Graphics.TranslateTransform(50, 0);
            //this.Invalidate();
            base.OnPaint(e);
        }

        //Redraw the numbers when the editor is scrolled vertically
        private void OnVScroll(object sender, EventArgs e) {
            FindLine();
            Invalidate();
        }
        private System.ComponentModel.IContainer components = null;

        //custom undo/redo

        private Stack<String[]> redoStack = new Stack<String[]>();
        private Stack<String[]> undoStack = new Stack<String[]>();
        private bool temporalOperationInProgress = false;
        private String[] previousText = new String[3] {String.Empty,"0","0"};
        
        public new bool CanUndo
        {
            get { return (this.undoStack.Count > 0 || this.Text.Length > 0); }
        }
        public new bool CanRedo
        {
            get { return this.redoStack.Count > 0; }
        }
        private String[] createState()
        {
            String[] cmd = new String[3];
            cmd[0] = this.Text;
            cmd[1] = this.SelectionStart.ToString();
            cmd[2] = this.SelectionLength.ToString();
            return cmd;
        }
        private void inforceState(String[] cmd)
        {
            disableUpdates();
            this.Text = cmd[0];
            //ColorCode();
            //isChanged = false;
            this.SelectionStart = Convert.ToInt32(cmd[1]);
            this.SelectionLength = Convert.ToInt32(cmd[2]);
            enableUpdates();
        }
        public new void Undo()
        {
            this.redoStack.Push(createState());

            if (this.undoStack.Count == 0) {
                this.Text = string.Empty;
            }else{
                inforceState(this.undoStack.Pop());
            }
        }
        public new void Redo()
        {

            if (this.CanRedo)
            {
                this.undoStack.Push(createState());

                inforceState(this.redoStack.Pop());
            }
        }
        
        public void Transform(TextBox source, bool hideSource)
        {
            Type type = source.GetType();
            IEnumerator properties = type.GetProperties(BindingFlags.Public | BindingFlags.Instance)./*Where(p => p.CanRead && p.CanWrite && !p.Name.Equals("WindowTarget")).*/GetEnumerator();
            while (properties.MoveNext())
            {
                PropertyInfo property = properties.Current as PropertyInfo;
                object value = property.GetValue(source, null);
                property.SetValue(this, value, null);
            }

            source.Visible = !hideSource;
            this.previousText = createState();
        }

        public void Transform(TextBox source)
        {
            this.Transform(source, false);
        }

        private void TemporalTextBox_KeyDown(object sender, KeyEventArgs e)
        {
            // If we are using the custom undo method and the user hits
            // the space key, the enter key, the backspace key or the 
            // delete key, then we need to push the current text onto 
            // the undo stack.
            if (e.KeyCode == Keys.Space || e.KeyCode == Keys.Enter || e.KeyCode == Keys.Back || e.KeyCode == Keys.Delete)
            {
                this.undoStack.Push(createState());
                this.redoStack.Clear();
            }
        }
        private void TemporalTextBox_TextChanged(object sender, EventArgs e)
        {
            // If the text has been changed by an operation other than an
            // undo or redo operation then we need to clear the redo stack.
            if (!this.temporalOperationInProgress)
            {
                this.redoStack.Clear();

                // If the text is not in an undo or redo operation and the
                // previous and current strings are more than one character
                // different in length, then the user has executed either a
                // cut or paste operation, and thus we have to push to the 
                // undo stack if the custom method is being used.
                int difference = this.previousText[0].Length - this.Text.Length;
                if ((difference < -1) || (difference > 1)) {
                    this.undoStack.Push(this.previousText);
                }
                else if ((difference == 0) && (!this.previousText.Equals(createState())))
                {
                    this.undoStack.Push(this.previousText);
                }
                this.previousText = createState();
            }
        }
    }
}