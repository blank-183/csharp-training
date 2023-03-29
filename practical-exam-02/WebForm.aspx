<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="ExamWebApp.WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Object Oriented Programming Exam</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    <div class="container m-3 px-4 d-flex justify-content-center">
        <form runat="server">
            <div class="row mb-3">
                <!-- Input Person Details -->
                <div class="col mx-2 card justify-content-center">
                    <div class="card-body m-1">
                        <h3 class="text-center">INPUT PERSON DETAILS</h3>
                        <p>Name: <asp:TextBox ID="TbPersonName" runat="server"></asp:TextBox></p>
                        <p>Age: <asp:TextBox ID="TbPersonAge" runat="server"></asp:TextBox></p>
                        <p>Gender: <asp:TextBox ID="TbPersonGender" runat="server"></asp:TextBox></p>
                        <p><asp:Label ID="LblPersonError" runat="server" Text="" CssClass="red-text"></asp:Label></p>
                        <asp:Button ID="BtnPerson" runat="server" Text="Get Person Details" OnClick="BtnPerson_Click" CssClass="btn btn-dark"/>
                    </div>     
                </div>

                <!-- Input Student Details -->
                <div class="col mx-2 card justify-content-center">
                    <div class="card-body m-1">
                        <h3 class="text-center">INPUT STUDENT DETAILS</h3>
                        <p>Name: <asp:TextBox ID="TbStudentName" runat="server"></asp:TextBox></p>
                        <p>Age: <asp:TextBox ID="TbStudentAge" runat="server"></asp:TextBox></p>
                        <p>Gender: <asp:TextBox ID="TbStudentGender" runat="server"></asp:TextBox></p>
                        <p>School: <asp:TextBox ID="TbStudentSchool" runat="server"></asp:TextBox></p>
                        <p>Math Grade: <asp:TextBox ID="TbStudentMathGrade" runat="server"></asp:TextBox></p>
                        <p>English Grade: <asp:TextBox ID="TbStudentEnglishGrade" runat="server"></asp:TextBox></p>
                        <p>Science Grade: <asp:TextBox ID="TbStudentScienceGrade" runat="server"></asp:TextBox></p>
                        <p><asp:Label ID="LblStudentError" runat="server" Text="" CssClass="red-text"></asp:Label></p>
                        <asp:Button ID="BtnStudent" runat="server" Text="Get Student Details" OnClick="BtnStudent_Click" CssClass="btn btn-dark"/>
                    </div>
                </div>

                <!-- Input Teacher Details -->
                <div class="col mx-2 card justify-content-center">
                    <div class="card-body m-1">
                        <h3 class="text-center">INPUT TEACHER DETAILS</h3>
                        <p>Name: <asp:TextBox ID="TbTeacherName" runat="server"></asp:TextBox></p>
                        <p>Age: <asp:TextBox ID="TbTeacherAge" runat="server"></asp:TextBox></p>
                        <p>Gender: <asp:TextBox ID="TbTeacherGender" runat="server"></asp:TextBox></p>
                        <p>Subject: <asp:TextBox ID="TbTeacherSubject" runat="server"></asp:TextBox></p>
                        <p>School: <asp:TextBox ID="TbTeacherSchool" runat="server"></asp:TextBox></p>
                        <p>Salary: <asp:TextBox ID="TbTeacherSalary" runat="server"></asp:TextBox></p>
                        <p><asp:Label ID="LblTeacherError" runat="server" Text="" CssClass="red-text"></asp:Label></p>
                        <asp:Button ID="BtnTeacher" runat="server" Text="Get Teacher Details" OnClick="BtnTeacher_Click" CssClass="btn btn-dark"/>
                    </div>
                </div>
            </div>
            <div class="row">
                <!-- Input Person Details -->
                <div class="col mx-2 card justify-content-center">
                    <div class="card-body m-1">
                        <h3 class="text-center">PERSON DETAILS</h3>
                        <p>Name: <asp:Label ID="LblPersonName" runat="server" Text=""></asp:Label></p>
                        <p>Age: <asp:Label ID="LblPersonAge" runat="server" Text=""></asp:Label></p>
                        <p>Gender: <asp:Label ID="LblPersonGender" runat="server" Text=""></asp:Label></p>
                    </div>     
                </div>

                <!-- Input Student Details -->
                <div class="col mx-2 card justify-content-center">
                    <div class="card-body m-1">
                    </div>
                </div>

                <!-- Input Teacher Details -->
                <div class="col mx-2 card justify-content-center">
                    <div class="card-body m-1">
                    </div>  
                </div>
            </div>
        </form>
        
    </div> 



    <!--
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
    -->    


    <script 
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" 
        crossorigin="anonymous">
    </script>
</body>
</html>
