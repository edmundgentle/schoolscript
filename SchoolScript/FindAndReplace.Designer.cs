namespace SchoolScript
{
    partial class FindAndReplace
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.replaceAllButton = new System.Windows.Forms.Button();
            this.replaceNextButton = new System.Windows.Forms.Button();
            this.findNextButton = new System.Windows.Forms.Button();
            this.findPreviousButton = new System.Windows.Forms.Button();
            this.findBox = new System.Windows.Forms.RichTextBox();
            this.replaceBox = new System.Windows.Forms.RichTextBox();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(58, 14);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(30, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Find:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(16, 93);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(72, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Replace with:";
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(94, 93);
            this.textBox2.Multiline = true;
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(0, 0);
            this.textBox2.TabIndex = 3;
            // 
            // replaceAllButton
            // 
            this.replaceAllButton.Location = new System.Drawing.Point(94, 172);
            this.replaceAllButton.Name = "replaceAllButton";
            this.replaceAllButton.Size = new System.Drawing.Size(75, 23);
            this.replaceAllButton.TabIndex = 4;
            this.replaceAllButton.Text = "Replace All";
            this.replaceAllButton.UseVisualStyleBackColor = true;
            this.replaceAllButton.Click += new System.EventHandler(this.replaceAllButton_Click);
            // 
            // replaceNextButton
            // 
            this.replaceNextButton.Location = new System.Drawing.Point(175, 172);
            this.replaceNextButton.Name = "replaceNextButton";
            this.replaceNextButton.Size = new System.Drawing.Size(83, 23);
            this.replaceNextButton.TabIndex = 5;
            this.replaceNextButton.Text = "Replace Next";
            this.replaceNextButton.UseVisualStyleBackColor = true;
            this.replaceNextButton.Click += new System.EventHandler(this.replaceNextButton_Click);
            // 
            // findNextButton
            // 
            this.findNextButton.Location = new System.Drawing.Point(460, 172);
            this.findNextButton.Name = "findNextButton";
            this.findNextButton.Size = new System.Drawing.Size(63, 23);
            this.findNextButton.TabIndex = 6;
            this.findNextButton.Text = "Find Next";
            this.findNextButton.UseVisualStyleBackColor = true;
            this.findNextButton.Click += new System.EventHandler(this.findNextButton_Click);
            // 
            // findPreviousButton
            // 
            this.findPreviousButton.Location = new System.Drawing.Point(375, 172);
            this.findPreviousButton.Name = "findPreviousButton";
            this.findPreviousButton.Size = new System.Drawing.Size(79, 23);
            this.findPreviousButton.TabIndex = 7;
            this.findPreviousButton.Text = "Find Previous";
            this.findPreviousButton.UseVisualStyleBackColor = true;
            this.findPreviousButton.Click += new System.EventHandler(this.findPreviousButton_Click);
            // 
            // findBox
            // 
            this.findBox.Font = new System.Drawing.Font("Consolas", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.findBox.Location = new System.Drawing.Point(94, 14);
            this.findBox.Name = "findBox";
            this.findBox.Size = new System.Drawing.Size(429, 73);
            this.findBox.TabIndex = 8;
            this.findBox.Text = "";
            // 
            // replaceBox
            // 
            this.replaceBox.Font = new System.Drawing.Font("Consolas", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.replaceBox.Location = new System.Drawing.Point(94, 90);
            this.replaceBox.Name = "replaceBox";
            this.replaceBox.Size = new System.Drawing.Size(429, 73);
            this.replaceBox.TabIndex = 9;
            this.replaceBox.Text = "";
            // 
            // FindAndReplace
            // 
            this.AcceptButton = this.findNextButton;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(533, 203);
            this.Controls.Add(this.replaceBox);
            this.Controls.Add(this.findBox);
            this.Controls.Add(this.findPreviousButton);
            this.Controls.Add(this.findNextButton);
            this.Controls.Add(this.replaceNextButton);
            this.Controls.Add(this.replaceAllButton);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.Name = "FindAndReplace";
            this.ShowIcon = false;
            this.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Find";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FindAndReplace_FormClosing);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Button replaceAllButton;
        private System.Windows.Forms.Button replaceNextButton;
        private System.Windows.Forms.Button findNextButton;
        private System.Windows.Forms.Button findPreviousButton;
        private System.Windows.Forms.RichTextBox findBox;
        private System.Windows.Forms.RichTextBox replaceBox;
    }
}