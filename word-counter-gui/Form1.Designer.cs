namespace WordCounter
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            lblTitle = new Label();
            textBox = new TextBox();
            btnCount = new Button();
            lblNumberOfWords = new Label();
            lblNumWordResult = new Label();
            lblEnterText = new Label();
            lblNumberOfPars = new Label();
            lblNumParResult = new Label();
            SuspendLayout();
            // 
            // lblTitle
            // 
            lblTitle.AutoSize = true;
            lblTitle.Font = new Font("Segoe UI", 15.929204F, FontStyle.Bold, GraphicsUnit.Point);
            lblTitle.Location = new Point(142, 27);
            lblTitle.Name = "lblTitle";
            lblTitle.Size = new Size(235, 37);
            lblTitle.TabIndex = 0;
            lblTitle.Text = "WORD COUNTER";
            // 
            // textBox
            // 
            textBox.Font = new Font("Courier New", 10.8F, FontStyle.Regular, GraphicsUnit.Point);
            textBox.Location = new Point(41, 115);
            textBox.Multiline = true;
            textBox.Name = "textBox";
            textBox.ScrollBars = ScrollBars.Vertical;
            textBox.Size = new Size(431, 230);
            textBox.TabIndex = 1;
            textBox.TextChanged += textBox_TextChanged;
            // 
            // btnCount
            // 
            btnCount.BackColor = SystemColors.Highlight;
            btnCount.Cursor = Cursors.Hand;
            btnCount.Font = new Font("Segoe UI", 10.8318586F, FontStyle.Bold, GraphicsUnit.Point);
            btnCount.ForeColor = SystemColors.ButtonFace;
            btnCount.Location = new Point(192, 362);
            btnCount.Name = "btnCount";
            btnCount.Size = new Size(127, 46);
            btnCount.TabIndex = 3;
            btnCount.Text = "Count";
            btnCount.UseVisualStyleBackColor = false;
            btnCount.Click += btnCount_Click;
            // 
            // lblNumberOfWords
            // 
            lblNumberOfWords.AutoSize = true;
            lblNumberOfWords.Font = new Font("Segoe UI", 10.2F, FontStyle.Regular, GraphicsUnit.Point);
            lblNumberOfWords.Location = new Point(41, 437);
            lblNumberOfWords.Name = "lblNumberOfWords";
            lblNumberOfWords.Size = new Size(147, 23);
            lblNumberOfWords.TabIndex = 4;
            lblNumberOfWords.Text = "Number of words:";
            // 
            // lblNumWordResult
            // 
            lblNumWordResult.AutoSize = true;
            lblNumWordResult.Font = new Font("Segoe UI", 10.2F, FontStyle.Bold, GraphicsUnit.Point);
            lblNumWordResult.Location = new Point(192, 437);
            lblNumWordResult.Name = "lblNumWordResult";
            lblNumWordResult.Size = new Size(20, 23);
            lblNumWordResult.TabIndex = 5;
            lblNumWordResult.Text = "0";
            lblNumWordResult.Click += lblNumResult_Click;
            // 
            // lblEnterText
            // 
            lblEnterText.AutoSize = true;
            lblEnterText.Font = new Font("Segoe UI", 10.2F, FontStyle.Regular, GraphicsUnit.Point);
            lblEnterText.Location = new Point(41, 89);
            lblEnterText.Name = "lblEnterText";
            lblEnterText.Size = new Size(88, 23);
            lblEnterText.TabIndex = 6;
            lblEnterText.Text = "Enter text:";
            // 
            // lblNumberOfPars
            // 
            lblNumberOfPars.AutoSize = true;
            lblNumberOfPars.Font = new Font("Segoe UI", 10.2F, FontStyle.Regular, GraphicsUnit.Point);
            lblNumberOfPars.Location = new Point(41, 472);
            lblNumberOfPars.Name = "lblNumberOfPars";
            lblNumberOfPars.Size = new Size(188, 23);
            lblNumberOfPars.TabIndex = 7;
            lblNumberOfPars.Text = "Number of paragraphs:";
            // 
            // lblNumParResult
            // 
            lblNumParResult.AutoSize = true;
            lblNumParResult.Font = new Font("Segoe UI", 10.2F, FontStyle.Bold, GraphicsUnit.Point);
            lblNumParResult.Location = new Point(235, 472);
            lblNumParResult.Name = "lblNumParResult";
            lblNumParResult.Size = new Size(20, 23);
            lblNumParResult.TabIndex = 8;
            lblNumParResult.Text = "0";
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(516, 542);
            Controls.Add(lblNumParResult);
            Controls.Add(lblNumberOfPars);
            Controls.Add(lblEnterText);
            Controls.Add(lblNumWordResult);
            Controls.Add(lblNumberOfWords);
            Controls.Add(btnCount);
            Controls.Add(textBox);
            Controls.Add(lblTitle);
            Name = "Form1";
            Text = "Form1";
            Load += Form1_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label lblTitle;
        private TextBox textBox;
        private Button btnCount;
        private Label lblNumberOfWords;
        private Label lblNumWordResult;
        private Label lblEnterText;
        private Label lblNumberOfPars;
        private Label lblNumParResult;
    }
}