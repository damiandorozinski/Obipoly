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
                <asp:Label ID="lblUsername" runat="server" Text="Nazwa użytkownika:"></asp:Label>
                <asp:TextBox ID="txbUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Pole wymagane" ControlToValidate="txbUsername"></asp:RequiredFieldValidator>
            </div>
            <div class="reg_box">
                <asp:Label ID="lblPassword" runat="server" Text="Hasło:"></asp:Label>
                <asp:TextBox ID="txbPassword" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Pole wymagane" ControlToValidate="txbPassword"></asp:RequiredFieldValidator>
            </div>
            <div class="reg_box">
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Potwierdź hasło:"></asp:Label>
                <asp:TextBox ID="txbConfirmPassword" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="cvConfirmPassword" runat="server" ErrorMessage="Hasła nie zgadzają się" ControlToValidate="txbConfirmPassword" ControlToCompare="txbPassword"></asp:CompareValidator>
            </div>
            <asp:Button ID="btnRegister" runat="server" Text="Zarejestruj" OnClick="registerUser" />
            <asp:Label ID="lblRegistrationError" runat="server" Text="" ForeColor="Red"></asp:Label>
        </div>
        <div id="footer"></div>
    </div>
    </form>
</body>
</html>
