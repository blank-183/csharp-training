using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ExamWebApp
{
    public class Student : Person
    {
        public double MathGrade { get; set; }
        public double EnglishGrade { get; set; }
        public double ScienceGrade { get; set; } 
        public string School { get; set; }

        public Student(string name, int age, string gender, double mathGrade, double englishGrade, double scienceGrade, string school) : base(name, age, gender)
        {
            this.MathGrade = mathGrade;
            this.EnglishGrade = englishGrade;
            this.ScienceGrade = scienceGrade;
            this.School = school;
        }

        public double CalculateGPA()
        {
            return Math.Round(((this.MathGrade + this.EnglishGrade + this.ScienceGrade) / (double) 3), 2);
        }

        public override Dictionary<string, string> GetDetails()
        {
            Dictionary<string, string> dict = new Dictionary<string, string>();
            dict.Add("name", this.Name);
            dict.Add("age", this.Age.ToString());
            dict.Add("gender", this.Gender);
            dict.Add("mathGrade", this.MathGrade.ToString());
            dict.Add("englishGrade", this.EnglishGrade.ToString());
            dict.Add("scienceGrade", this.ScienceGrade.ToString());
            dict.Add("school", this.School);

            return dict;
        }
    }
}