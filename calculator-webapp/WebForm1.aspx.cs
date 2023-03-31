using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CalculatorApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Add(object sender, EventArgs e)
        {
            double num1, num2, result = 0;
            num1 = Convert.ToDouble(Num1.Text);
            num2 = Convert.ToDouble(Num2.Text);
            result = num1 + num2;

            Label4.Text = result.ToString();
        }
        protected void Subtract(object sender, EventArgs e)
        {
            double num1, num2, result = 0;
            num1 = Convert.ToDouble(Num1.Text);
            num2 = Convert.ToDouble(Num2.Text);
            result = num1 - num2;

            Label4.Text = result.ToString();
        }
        protected void Multiply(object sender, EventArgs e)
        {
            double num1, num2, result = 0;
            num1 = Convert.ToDouble(Num1.Text);
            num2 = Convert.ToDouble(Num2.Text);
            result = num1 * num2;

            Label4.Text = result.ToString();
        }
        protected void Divide(object sender, EventArgs e)
        {
            double num1, num2, result = 0;
            num1 = Convert.ToDouble(Num1.Text);
            num2 = Convert.ToDouble(Num2.Text);
            result = num1 / num2;

            Label4.Text = result.ToString();
        }
    }
}