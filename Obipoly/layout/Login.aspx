<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Obipoly.layout.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Obipoly - login</title>

    <link href="login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
        <div id="banner">
            <h1>Obipoly</h1>
        </div>
        <div id="login_box">
            <h2>Zaloguj</h2>
            <asp:Login ID="loginControl" runat="server" OnAuthenticate="OnAuthenticate" DestinationPageUrl="~/layout/GameList.aspx"></asp:Login>
        </div>
        <div id="signup_box">
            <h2>Zarejestruj</h2>
            <div class="reg_box">
                <label>Username: </label>
                <input type="text" name="Username" />
            </div>
        </div>
        <div id="footer"></div>
    </div>
    </form>
</body>
</html>
