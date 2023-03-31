using System.Collections;

namespace WordCounter
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void textBox_TextChanged(object sender, EventArgs e)
        {

        }

        private void lblEnterText_Click(object sender, EventArgs e)
        {

        }

        private void btnCount_Click(object sender, EventArgs e)
        {
            string message = textBox.Text;
            List<string> lines = new List<string>(message.Split("\n"));
            int wordCount = 0;
            int parCount = 1;

            foreach (string line in lines)
            {
                List<string> words = new List<string>(line.Split(" "));
                foreach (string word in words)
                {
                    if (word.Equals("\r"))
                    {
                        parCount++;
                        continue;
                    }
                    wordCount++;
                }
            }

            lblNumWordResult.Text = wordCount.ToString();
            lblNumParResult.Text = parCount.ToString();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void lblNumResult_Click(object sender, EventArgs e)
        {

        }
    }
}