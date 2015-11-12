<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Obipoly.layout.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Table runat="server" id="GameListTable" BorderWidth="1">
            <asp:TableRow>
                <asp:TableCell ColumnSpan="6">
                    <asp:Button runat="server" Text="Stwórz grę" OnClientClick="return alert('NIE!')"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableHeaderCell>Game ID</asp:TableHeaderCell>
                <asp:TableHeaderCell>Status</asp:TableHeaderCell>
                <asp:TableHeaderCell>Capacity</asp:TableHeaderCell>
                <asp:TableHeaderCell>Players</asp:TableHeaderCell>
                <asp:TableHeaderCell>Template</asp:TableHeaderCell>
                <asp:TableHeaderCell></asp:TableHeaderCell>
            </asp:TableRow>
        </asp:Table>
    </div>
    </form>
</body>
</html>
