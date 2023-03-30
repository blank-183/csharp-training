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
        List<Person> personList = new List<Person>();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnPerson_Click(object sender, EventArgs e)
        {
            string name = TbPersonName.Text;
            string ageInput = TbPersonAge.Text;
            int genderIndex = RbPersonGender.SelectedIndex;
            int age;
            string gender;

            if (String.IsNullOrEmpty(name) || String.IsNullOrEmpty(ageInput) || genderIndex == -1 )
            {
                LblPersonError.Text = "Please fill all input fields!";
                return;
            }

            try
            {
                age = Convert.ToInt32(ageInput);
            } catch(FormatException)
            {
                LblPersonError.Text = "'Age' is not a valid number!";
                return;
            }

            gender = RbPersonGender.SelectedItem.Value.ToString();
            Person person = new Person(name, age, gender);
            DisplayPersonDetails(person);

            LblPersonError.Text = string.Empty;
            personList.Add(person);
        }

        protected void BtnStudent_Click(object sender, EventArgs e)
        {
            string name = TbStudentName.Text;
            string ageInput = TbStudentAge.Text;
            int genderIndex = RbStudentGender.SelectedIndex;
            string school = TbStudentSchool.Text;
            string mathGradeInput = TbStudentMathGrade.Text, 
                englishGradeInput = TbStudentEnglishGrade.Text, 
                scienceGradeInput = TbStudentScienceGrade.Text;
            double mathGrade, englishGrade, scienceGrade;
            string invalidInput = "";
            int age;
            string gender;

            if (String.IsNullOrEmpty(name) || String.IsNullOrEmpty(ageInput) || genderIndex == -1 
                || String.IsNullOrEmpty(school) || String.IsNullOrEmpty(mathGradeInput) || String.IsNullOrEmpty(englishGradeInput)
                || String.IsNullOrEmpty(scienceGradeInput) || String.IsNullOrEmpty(school))
            {
                LblStudentError.Text = "Please fill all input fields!";
                return;
            }

            try
            {
                invalidInput = "Age";
                age = Convert.ToInt32(ageInput);
                invalidInput = "Math Grade";
                mathGrade = Convert.ToDouble(mathGradeInput);
                invalidInput = "English Grade";
                englishGrade = Convert.ToDouble(englishGradeInput);
                invalidInput = "Science Grade";
                scienceGrade = Convert.ToDouble(scienceGradeInput);
            }
            catch (FormatException)
            {
                LblStudentError.Text = $"'{invalidInput}' is not a valid number!";
                return;
            }

            gender = RbStudentGender.SelectedItem.Value.ToString();
            Student student = new Student(name, age, gender, mathGrade, englishGrade, scienceGrade, school);
            DisplayStudentDetails(student);

            LblStudentError.Text = string.Empty;
            personList.Add(student);
        }

        protected void BtnTeacher_Click(object sender, EventArgs e)
        {
            string name = TbTeacherName.Text;
            string ageInput = TbTeacherAge.Text;
            int genderIndex = RbTeacherGender.SelectedIndex;
            string subject = TbTeacherSubject.Text;
            string school = TbTeacherSchool.Text;
            string salaryInput = TbTeacherSalary.Text;
            string invalidInput = "";
            int age;
            decimal salary;
            string gender;

            if (String.IsNullOrEmpty(name) || String.IsNullOrEmpty(ageInput) || genderIndex == -1
                || String.IsNullOrEmpty(subject) || String.IsNullOrEmpty(school) || String.IsNullOrEmpty(salaryInput))
            {
                LblTeacherError.Text = "Please fill all input fields!";
                return;
            }

            try
            {
                invalidInput = "Age";
                age = Convert.ToInt32(ageInput);
                invalidInput = "Salary";
                salary = Convert.ToDecimal(salaryInput);
            }
            catch (FormatException)
            {
                LblTeacherError.Text = $"'{invalidInput}' is not a valid number!";
                return;
            }

            gender = RbTeacherGender.SelectedItem.Value.ToString();
            Teacher teacher = new Teacher(name, age, gender, subject, school, salary);
            DisplayTeacherDetails(teacher);

            LblTeacherError.Text = string.Empty;
            personList.Add(teacher);
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
            LblStudentName.Text = dict["name"];
            LblStudentAge.Text = dict["age"];
            LblStudentGender.Text = dict["gender"];
            LblStudentMathGrade.Text = dict["mathGrade"];
            LblStudentEnglishGrade.Text = dict["englishGrade"];
            LblStudentScienceGrade.Text = dict["scienceGrade"];
            LblStudentGPA.Text = student.CalculateGPA().ToString();
            LblStudentSchool.Text = dict["school"];
        }

        private void DisplayTeacherDetails(Teacher teacher)
        {
            Dictionary<string, string> dict = teacher.GetDetails();
            LblTeacherName.Text = dict["name"];
            LblTeacherAge.Text = dict["age"];
            LblTeacherGender.Text = dict["gender"];
            LblTeacherSubject.Text = dict["subject"];
            LblTeacherSchool.Text = dict["school"];
            LblTeacherGrade.Text = teacher.GradeStudents();
            LblTeacherGSalary.Text = dict["salary"];
            LblTeacherNSalary.Text = teacher.GetNetSalary().ToString("#,##0.00");
        }

    }
}