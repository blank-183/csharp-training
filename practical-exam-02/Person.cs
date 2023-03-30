using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ExamWebApp
{
    public class Person
    {
        protected string _name;
        protected int _age;
        protected string _gender;

        public Person(string name, int age, string gender)
        {
            this._name = name;
            this._age = age;
            this._gender = gender;
        }

        public virtual Dictionary<string, string> GetDetails()
        {
            Dictionary<string, string> dict = new Dictionary<string, string>();
            dict.Add("name", this._name);
            dict.Add("age", this._age.ToString());
            dict.Add("gender", this._gender);

            return dict;
        }

    }
}