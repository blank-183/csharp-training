using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ExamWebApp
{
    public class Teacher : Person
    {
        public string Subject { get; set; }
        public string School { get; set; }
        public decimal Salary { get; set; }

        public Teacher(string name, int age, string gender, string subject, string school, decimal salary) : base(name, age, gender)
        {
            this.Subject = subject;
            this.School = school;
            this.Salary = salary;
        }

        public decimal GetNetSalary()
        {
            return Math.Round((this.Salary - (this.Salary * (decimal) 0.1)), 2);
        }

        public string GradeStudents()
        {
            return "GRADE NOT APPLICABLE";
        }

        public override Dictionary<string, string> GetDetails()
        {
            Dictionary<string, string> dict = new Dictionary<string, string>();
            dict.Add("name", this.Name);
            dict.Add("age", this.Age.ToString());
            dict.Add("gender", this.Gender);
            dict.Add("subject", this.Subject);
            dict.Add("school", this.School);
            dict.Add("salary", Math.Round(this.Salary, 2).ToString("#,##0.00"));

            return dict;
        }
    }
}