using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ExamWebApp
{
    public class Teacher : Person
    {
        private string _subject;
        private string _school;
        private decimal _salary; 

        public Teacher(string name, int age, string gender, string subject, string school, decimal salary) : base(name, age, gender)
        {
            this._subject = subject;
            this._school = school;
            this._salary = salary;
        }

        public decimal GetNetSalary()
        {
            return Math.Round((this._salary - (this._salary * (decimal) 0.1)), 2);
        }

        public string GradeStudents()
        {
            return "GRADES NOT APPLICABLE";
        }

        public override Dictionary<string, string> GetDetails()
        {
            Dictionary<string, string> dict = new Dictionary<string, string>();
            dict.Add("name", this._name);
            dict.Add("age", this._age.ToString());
            dict.Add("gender", this._gender);
            dict.Add("subject", this._subject);
            dict.Add("school", this._school);
            dict.Add("salary", Math.Round(this._salary, 2).ToString("#,##0.00"));

            return dict;
        }
    }
}