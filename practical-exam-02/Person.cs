using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ExamWebApp
{
    public class Person
    {
        public string Name { get; set; }
        public int Age { get; set; }
        public string Gender { get; set; }

        public Person(string name, int age, string gender)
        {
            this.Name = name;
            this.Age = age;
            this.Gender = gender;
        }

        public virtual Dictionary<string, string> GetDetails()
        {
            Dictionary<string, string> dict = new Dictionary<string, string>();
            dict.Add("name", this.Name);
            dict.Add("age", this.Age.ToString());
            dict.Add("gender", this.Gender);

            return dict;
        }

    }
}