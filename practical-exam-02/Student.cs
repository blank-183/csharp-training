using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ExamWebApp
{
    public class Student : Person
    {
        private double _mathGrade;
        private double _englishGrade;
        private double _scienceGrade;
        private string _school;

        public Student(string name, int age, string gender, double mathGrade, double englishGrade, double scienceGrade, string school) : base(name, age, gender)
        {
            this._mathGrade = mathGrade;
            this._englishGrade = englishGrade;
            this._scienceGrade = scienceGrade;
            this._school = school;
        }

        public double CalculateGPA()
        {
            return Math.Round(((this._mathGrade + this._englishGrade + this._scienceGrade) / (double) 3), 2);
        }

        public override Dictionary<string, string> GetDetails()
        {
            Dictionary<string, string> dict = new Dictionary<string, string>();
            dict.Add("name", this._name);
            dict.Add("age", this._age.ToString());
            dict.Add("gender", this._gender);
            dict.Add("mathGrade", this._mathGrade.ToString());
            dict.Add("englishGrade", this._englishGrade.ToString());
            dict.Add("scienceGrade", this._scienceGrade.ToString());
            dict.Add("school", this._school);

            return dict;
        }
    }
}