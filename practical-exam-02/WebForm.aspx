<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="ExamWebApp.WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Object Oriented Programming Exam</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" 
        rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous"/>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    <div class="container m-3 px-4 d-flex justify-content-center">
        <form runat="server">
            
            <!-- start of all details row -->
            <div class="row mb-3">
                <div class="justify-content-center">
                    <div class="row m-1">
                        <div class="col mx-2 justify-content-center">
                            <asp:Button ID="BtnClear" runat="server" Text="Clear Details" OnClick="BtnClearDetails_Click" CssClass="btn btn-dark"/>
                        </div>
                        <div class="col mx-2 justify-content-center">
                            <asp:Button ID="BtnAllDetails" runat="server" Text="Get All Details" OnClick="BtnAllDetails_Click" CssClass="btn btn-dark"/>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end of all details row -->

            <!-- start of person -->
            <div class="row mb-3">
                <!-- Input Person Details -->
                <div class="col mx-2 card justify-content-center">
                    <div class="card-body m-1">
                        <h3 class="text-center">INPUT PERSON DETAILS</h3>
                        <p>Name: <asp:TextBox ID="TbPersonName" runat="server"></asp:TextBox></p>
                        <p>Age: <asp:TextBox ID="TbPersonAge" runat="server"></asp:TextBox></p>
                        <p>Select Gender: </p>
                        <div class="rbutton">
                             <asp:RadioButtonList ID="RbPersonGender" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <p><asp:Label ID="LblPersonError" runat="server" Text="" CssClass="red-text"></asp:Label></p>
                        <asp:Button ID="BtnPerson" runat="server" Text="Get Person Details" OnClick="BtnPerson_Click" CssClass="btn btn-dark"/>
                    </div>     
                </div>

                <!-- Display Person Details -->
                <div class="col mx-2 card justify-content-center">
                    <div class="card-body m-1">
                        <h3 class="text-center">PERSON DETAILS</h3>
                        <p>Name: <asp:Label ID="LblPersonName" runat="server" Text=""></asp:Label></p>
                        <p>Age: <asp:Label ID="LblPersonAge" runat="server" Text=""></asp:Label></p>
                        <p>Gender: <asp:Label ID="LblPersonGender" runat="server" Text=""></asp:Label></p>
                    </div>     
                </div>      
            </div>
            <!-- end of person row -->

            <!-- start of student row -->
            <div class="row mb-3">
                <!-- Input Student Details -->
                <div class="col mx-2 card justify-content-center">
                    <div class="card-body m-1">
                        <h3 class="text-center">INPUT STUDENT DETAILS</h3>
                        <p>Name: <asp:TextBox ID="TbStudentName" runat="server"></asp:TextBox></p>
                        <p>Age: <asp:TextBox ID="TbStudentAge" runat="server"></asp:TextBox></p>
                        <p>Select Gender: </p>
                        <div class="rbutton">
                             <asp:RadioButtonList ID="RbStudentGender" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <p>School: <asp:TextBox ID="TbStudentSchool" runat="server"></asp:TextBox></p>
                        <p>Math Grade: <asp:TextBox ID="TbStudentMathGrade" runat="server"></asp:TextBox></p>
                        <p>English Grade: <asp:TextBox ID="TbStudentEnglishGrade" runat="server"></asp:TextBox></p>
                        <p>Science Grade: <asp:TextBox ID="TbStudentScienceGrade" runat="server"></asp:TextBox></p>
                        <p><asp:Label ID="LblStudentError" runat="server" Text="" CssClass="red-text"></asp:Label></p>
                        <asp:Button ID="BtnStudent" runat="server" Text="Get Student Details" OnClick="BtnStudent_Click" CssClass="btn btn-dark"/>
                    </div>
                </div>

                <!-- Display Student Details -->
                <div class="col mx-2 card justify-content-center">
                    <div class="card-body m-1">
                        <h3 class="text-center">STUDENT DETAILS</h3>
                        <p>Name: <asp:Label ID="LblStudentName" runat="server" Text=""></asp:Label></p>
                        <p>Age: <asp:Label ID="LblStudentAge" runat="server" Text=""></asp:Label></p>
                        <p>Gender: <asp:Label ID="LblStudentGender" runat="server" Text=""></asp:Label></p>
                        <p>School: <asp:Label ID="LblStudentSchool" runat="server" Text=""></asp:Label></p>
                        <p>Math Grade: <asp:Label ID="LblStudentMathGrade" runat="server" Text=""></asp:Label></p>
                        <p>English Grade: <asp:Label ID="LblStudentEnglishGrade" runat="server" Text=""></asp:Label></p>
                        <p>Science Grade: <asp:Label ID="LblStudentScienceGrade" runat="server" Text=""></asp:Label></p>
                        <p>GPA: <asp:Label ID="LblStudentGPA" runat="server" Text=""></asp:Label></p>
                    </div>
                </div>
            </div>
            <!-- end of student row -->

            <!-- start of teacher row -->
            <div class="row mb-3">
                <!-- Input Teacher Details -->
                <div class="col mx-2 card justify-content-center">
                    <div class="card-body m-1">
                        <h3 class="text-center">INPUT TEACHER DETAILS</h3>
                        <p>Name: <asp:TextBox ID="TbTeacherName" runat="server"></asp:TextBox></p>
                        <p>Age: <asp:TextBox ID="TbTeacherAge" runat="server"></asp:TextBox></p>
                        <p>Select Gender: </p>
                        <div class="rbutton">
                             <asp:RadioButtonList ID="RbTeacherGender" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <p>Subject: <asp:TextBox ID="TbTeacherSubject" runat="server"></asp:TextBox></p>
                        <p>School: <asp:TextBox ID="TbTeacherSchool" runat="server"></asp:TextBox></p>
                        <p>Salary: <asp:TextBox ID="TbTeacherSalary" runat="server"></asp:TextBox></p>
                        <p><asp:Label ID="LblTeacherError" runat="server" Text="" CssClass="red-text"></asp:Label></p>
                        <asp:Button ID="BtnTeacher" runat="server" Text="Get Teacher Details" OnClick="BtnTeacher_Click" CssClass="btn btn-dark"/>
                    </div>
                </div>

                <!-- Display Teacher Details -->
                <div class="col mx-2 card justify-content-center">
                    <div class="card-body m-1">
                        <h3 class="text-center">TEACHER DETAILS</h3>
                        <p>Name: <asp:Label ID="LblTeacherName" runat="server" Text=""></asp:Label></p>
                        <p>Age: <asp:Label ID="LblTeacherAge" runat="server" Text=""></asp:Label></p>
                        <p>Gender: <asp:Label ID="LblTeacherGender" runat="server" Text=""></asp:Label></p>
                        <p>Subject: <asp:Label ID="LblTeacherSubject" runat="server" Text=""></asp:Label></p>
                        <p>School: <asp:Label ID="LblTeacherSchool" runat="server" Text=""></asp:Label></p>
                        <p>Grades: <asp:Label ID="LblTeacherGrade" runat="server" Text=""></asp:Label></p>
                        <p>Gross Salary: P<asp:Label ID="LblTeacherGSalary" runat="server" Text=""></asp:Label></p>
                        <p>Net Salary: P<asp:Label ID="LblTeacherNSalary" runat="server" Text=""></asp:Label></p>
                    </div>  
                </div>
            </div>
            <!-- end of teacher row -->

        </form>      
    </div> 

    <script 
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" 
        crossorigin="anonymous">
    </script>
</body>
</html>
