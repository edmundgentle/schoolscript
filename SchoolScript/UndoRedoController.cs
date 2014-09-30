using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SyntaxHighlighter;
using System.Text.RegularExpressions;
using System.Windows.Forms;

namespace SchoolScript
{
    public class UndoRedoController
    {
        SyntaxRichTextBox rte;
        String text = "";
        List<String[]> undo_list = new List<String[]>();
        List<String[]> redo_list = new List<String[]>();
        Boolean isMe = false;

        public UndoRedoController(SyntaxRichTextBox rtb)
        {
            rte = rtb;
            text = rte.Text;
            //rte.TextChanged += new EventHandler(rte_TextChanged);
        }
        public void rte_TextChanged(Object sender, EventArgs e)
        {
            if (!isMe)
            {
                String[] cmd = new String[3];
                cmd[0] = rte.Text;
                cmd[1] = rte.SelectionStart.ToString();
                cmd[2] = rte.SelectionLength.ToString();
                undo_list.Add(cmd);
                redo_list.Clear();
            }
        }
        public void undo()
        {
            rte.Undo();
            /*
            isMe = true;
            if (undo_list.Count()>0)
            {
                String[] cmd = undo_list[undo_list.Count() - 1];
                undo_list.RemoveAt(undo_list.Count() - 1);
                redo_list.Add(cmd);
                rte.Text=cmd[0];
                rte.SelectionStart=Convert.ToInt32(cmd[1]);
                rte.SelectionLength = Convert.ToInt32(cmd[2]);
            }
            isMe = false;*/
        }
        public void redo()
        {
            rte.Redo();/*
            isMe = true;
            if (redo_list.Count() > 0)
            {
                String[] cmd = redo_list[redo_list.Count() - 1];
                redo_list.RemoveAt(redo_list.Count() - 1);
                undo_list.Add(cmd);
                if (cmd[0] == "d")
                {
                    //remove character
                    rte.SelectionStart = Convert.ToInt32(cmd[1]);
                    rte.SelectionLength = cmd[2].Length;
                    rte.SelectedText = "";
                }
                else
                {
                    //add the character back in
                    rte.SelectionStart = Convert.ToInt32(cmd[1]);
                    rte.SelectionLength = 0;
                    rte.SelectedText = cmd[2];
                    rte.SelectionStart += rte.SelectionLength;
                    rte.SelectionLength = 0;
                }
            }
            isMe = false;*/
        }
        public bool can_undo()
        {
            return rte.CanUndo;
        }
        public bool can_redo()
        {
            return rte.CanRedo;
        }
    }
}
