<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CalculatorApp.WebForm1" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Simple Calculator</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <h1>SIMPLE CALCULATOR</h1>
        <div>
            <asp:Label ID="Num1Label" runat="server" Text="Enter first number: "></asp:Label>
            <br />
            <div class="flex-container">
                <asp:TextBox ID="Num1" runat="server" CssClass="input-box fill-width"></asp:TextBox>
            </div>
        </div>
        <br />
        <div>
            <asp:Label ID="Num2Label" runat="server" Text="Enter second number: "></asp:Label>
            <br />
            <div class="flex-container">
                <asp:TextBox ID="Num2" runat="server" CssClass="input-box fill-width"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="flex-container">
            <asp:Button ID="Button1" runat="server" Text="Add" Width="125px" OnClick="Add" CssClass="button fill-width"/>
        </div>
        <div class="flex-container">
            <asp:Button ID="Button2" runat="server" Text="Subtract" Width="125px" OnClick="Subtract" CssClass="button fill-width"/>
        </div>
        <div class="flex-container">
            <asp:Button ID="Button3" runat="server" Text="Multiply" Width="125px" OnClick="Multiply" CssClass="button fill-width"/>
        </div>
        <div class="flex-container">
            <asp:Button ID="Button4" runat="server" Text="Divide" Width="125px" OnClick="Divide" CssClass="button fill-width"/>
        </div>

        <div class="result">
            <p style="margin-right: 20px; font-size: 20px;"><asp:Label ID="Label3" runat="server" Text="RESULT: "></asp:Label></p>
            <p style="font-size: 20px; font-weight: 600;"><asp:Label ID="Label4" runat="server" Text=""></asp:Label></p>
        </div>
        
    </form>
</body>
</html>
