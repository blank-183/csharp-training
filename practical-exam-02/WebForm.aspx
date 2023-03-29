<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="ExamWebApp.WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div>
        <form runat="server">
            <!-- Input Person Details -->
            <div>
                <h2>Input Person Details</h2>
                <p>Name: <asp:TextBox ID="TbPersonName" runat="server"></asp:TextBox></p>
                <p>Age: <asp:TextBox ID="TbPersonAge" runat="server"></asp:TextBox></p>
                <p>Gender: <asp:TextBox ID="TbPersonGender" runat="server"></asp:TextBox></p>
                <asp:Button ID="BtnPerson" runat="server" Text="Get Person Details" OnClick="BtnPerson_Click"/>
            </div>

            <!-- Input Student Details -->
            <div>
                <h2>Input Student Details</h2>
                <p>Name: <asp:TextBox ID="TbStudentName" runat="server"></asp:TextBox></p>
                <p>Age: <asp:TextBox ID="TbStudentAge" runat="server"></asp:TextBox></p>
                <p>Gender: <asp:TextBox ID="TbStudentGender" runat="server"></asp:TextBox></p>
                <p>School: <asp:TextBox ID="TbStudentSchool" runat="server"></asp:TextBox></p>
                <p>Math Grade: <asp:TextBox ID="TbStudentMathGrade" runat="server"></asp:TextBox></p>
                <p>English Grade: <asp:TextBox ID="TbStudentEnglishGrade" runat="server"></asp:TextBox></p>
                <p>Science Grade: <asp:TextBox ID="TbStudentScienceGrade" runat="server"></asp:TextBox></p>
                <asp:Button ID="BtnStudent" runat="server" Text="Get Student Details" OnClick="BtnStudent_Click"/>
            </div>

            <!-- Input Teacher Details -->
            <div>
                <h2>Input Teacher Details</h2>
                <p>Name: <asp:TextBox ID="TbTeacherName" runat="server"></asp:TextBox></p>
                <p>Age: <asp:TextBox ID="TbTeacherAge" runat="server"></asp:TextBox></p>
                <p>Gender: <asp:TextBox ID="TbTeacherGender" runat="server"></asp:TextBox></p>
                <p>Subject: <asp:TextBox ID="TbTeacherSubject" runat="server"></asp:TextBox></p>
                <p>School: <asp:TextBox ID="TbTeacherSchool" runat="server"></asp:TextBox></p>
                <p>Salary: <asp:TextBox ID="TbTeacherSalary" runat="server"></asp:TextBox></p>
                <asp:Button ID="BtnTeacher" runat="server" Text="Get Teacher Details" OnClick="BtnTeacher_Click"/>
            </div>
        </form>
    </div> 
    <div>
        <div>
            <h2>Person Details</h2>
            <p>Name: <asp:Label ID="personName" runat="server" Text=""></asp:Label></p>
            <p>Age: <asp:Label ID="personAge" runat="server" Text=""></asp:Label></p>
            <p>Gender: <asp:Label ID="personGender" runat="server" Text=""></asp:Label></p>
        </div>
        <div>
            <h2>Student Details</h2>
            <p>Name: <asp:Label ID="studName" runat="server" Text=""></asp:Label></p>
            <p>Age: <asp:Label ID="studAge" runat="server" Text=""></asp:Label></p>
            <p>Gender: <asp:Label ID="studGender" runat="server" Text=""></asp:Label></p>
            <p>Math Grade: <asp:Label ID="studMathGrade" runat="server" Text=""></asp:Label></p>
            <p>English Grade: <asp:Label ID="studEnglishGrade" runat="server" Text=""></asp:Label></p>
            <p>Science Grade: <asp:Label ID="studScienceGrade" runat="server" Text=""></asp:Label></p>
            <p>GPA: <asp:Label ID="studGPA" runat="server" Text=""></asp:Label></p>
            <p>School: <asp:Label ID="studSchool" runat="server" Text=""></asp:Label></p>
        </div>
        <div>
            <h2>Teacher Details</h2>
            <p>Name: <asp:Label ID="teacherName" runat="server" Text=""></asp:Label></p>
            <p>Age: <asp:Label ID="teacherAge" runat="server" Text=""></asp:Label></p>
            <p>Gender: <asp:Label ID="teacherGender" runat="server" Text=""></asp:Label></p>
            <p>Subject: <asp:Label ID="teacherSubject" runat="server" Text=""></asp:Label></p>
            <p>School: <asp:Label ID="teacherSchool" runat="server" Text=""></asp:Label></p>
            <p>Grades: <asp:Label ID="teacherGrade" runat="server" Text=""></asp:Label></p>
            <p>Gross Salary: P<asp:Label ID="teacherGSalary" runat="server" Text=""></asp:Label></p>
            <p>Net Salary: P<asp:Label ID="teacherNSalary" runat="server" Text=""></asp:Label></p>
        </div>
    </div>
    
</body>
</html>
