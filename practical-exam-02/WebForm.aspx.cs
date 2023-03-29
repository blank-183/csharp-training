using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamWebApp
{
    public partial class WebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Person person = new Person("Ivee", 22, "Female");
            ////DisplayPersonDetails(person);

            //Student student = new Student("Justin", 25, "Male", 75, 92, 93, "Sorsogon Pilot Elementary School");
            ////DisplayStudentDetails(student);

            //Teacher teacher = new Teacher("John", 30, "Male", "Programming Languages", "Harvard", 150000);
            ////DisplayTeacherDetails(teacher);

            //Person[] persons = new Person[] { person, student, teacher };

            //DisplayPersonDetails(persons[0]);
            //DisplayStudentDetails((Student) persons[1]);
            //DisplayTeacherDetails((Teacher)persons[2]);

        }

        protected void BtnPerson_Click(object sender, EventArgs e)
        {
            if(TbPersonName.Text.Equals("") || TbPersonAge.Text.Equals("") || TbPersonGender.Text.Equals("") )
            {
                LblPersonError.Text = "Please fill all input fields!";
                return;
            }

            string name = TbPersonName.Text;
            int age;
            string gender = TbPersonGender.Text;

            try
            {
                age = Convert.ToInt32(TbPersonAge.Text);
            } catch(FormatException)
            {
                LblPersonError.Text = "Age is not a valid number!";
                return;
            }

            Person person = new Person(name, age, gender);
            DisplayPersonDetails(person);

            LblPersonError.Text = string.Empty;
        }

        protected void BtnStudent_Click(object sender, EventArgs e)
        {

        }

        protected void BtnTeacher_Click(object sender, EventArgs e)
        {

        }

        private void DisplayPersonDetails(Person person)
        {
            Dictionary<string, string> dict = person.GetDetails();
            LblPersonName.Text = dict["name"];
            LblPersonAge.Text = dict["age"];
            LblPersonGender.Text = dict["gender"];
        }

        private void DisplayStudentDetails(Student student)
        {
            Dictionary<string, string> dict = student.GetDetails();
            double studentGrade = student.CalculateGPA();
            studName.Text = dict["name"];
            studAge.Text = dict["age"];
            studGender.Text = dict["gender"];
            studMathGrade.Text = dict["mathGrade"];
            studEnglishGrade.Text = dict["englishGrade"];
            studScienceGrade.Text = dict["scienceGrade"];
            studGPA.Text = student.CalculateGPA().ToString();
            studSchool.Text = dict["school"];
        }

        private void DisplayTeacherDetails(Teacher teacher)
        {
            Dictionary<string, string> dict = teacher.GetDetails();
            teacherName.Text = dict["name"];
            teacherAge.Text = dict["age"];
            teacherGender.Text = dict["gender"];
            teacherSubject.Text = dict["subject"];
            teacherSchool.Text = dict["school"];
            teacherGrade.Text = teacher.GradeStudents();
            teacherGSalary.Text = dict["salary"];
            teacherNSalary.Text = teacher.GetNetSalary().ToString("#.##");
        }
    }
}