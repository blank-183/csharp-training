<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FormWebApp.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Account</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous" />
</head>
<body>
    <div class="form-body">
        <h2 class="title">Sign in</h2>
        <form id="loginForm" runat="server">
            <div class="input-group">
                <asp:Label runat="server" CssClass="label">Email</asp:Label>
                <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter email"></asp:TextBox>
            </div>
            <div class="input-group">
                <asp:Label runat="server" CssClass="label">Password</asp:Label>
                <asp:TextBox runat="server" CssClass="form-control" placeholder="Enter password" type="password"></asp:TextBox>
            </div>
            <asp:Button ID="btnSignIn" runat="server" Text="Sign in" CssClass="btn btn-primary" />
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
</body>
</html>
