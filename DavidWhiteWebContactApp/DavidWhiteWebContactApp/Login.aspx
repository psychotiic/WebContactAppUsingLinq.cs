<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DavidWhiteWebContactApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Required</title>
    <style type="text/css">
       .UserCSS
        {
            font-family:Britannic;
            font-size:x-large;
            color:lime;
            background-color:black;
        }
        .login
        {
             position: absolute;
             top: 50%;
             left: 50%;
             margin-top: -245px;
             margin-left: -200px;
        }
    </style>
</head>
<body class="UserCSS">
    <form id="form1" runat="server">
    <div id="LoginWizard" class="login">
        <asp:Login ID="Login1" runat="server" CreateUserText="Create New Account...Click Me!" 
            CreateUserUrl="~/RegisterUser.aspx" DestinationPageUrl="~/MemberPages/Default.aspx">
        </asp:Login>
    </div>       
    </form>
</body>
</html>
