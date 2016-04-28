<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LagNyBruker.aspx.cs" Inherits="FalckNutecBachelor.LagNyBruker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NyBruker</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Ny Bruker</h1>
        <p>//Skal kunne lage nye og redigere eksisterende brukere gjennom Admin</p>
        <p>Fornavn: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></p>
        <p>Etternavn: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></p>
        <p>Email: <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></p>
        <p>Rolle: <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></p>
        <p>Seksjon: <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Velg seksjon her</asp:ListItem>
            <asp:ListItem>Seksjon 1</asp:ListItem>
            <asp:ListItem>Seksjon 2</asp:ListItem>
            <asp:ListItem>Seksjon 3</asp:ListItem>
            <asp:ListItem></asp:ListItem>
            </asp:DropDownList></p>
        <p></p>
        <asp:Button ID="Button1" runat="server" Text="Lag Ny Bruker" />
    </div>
    </form>
</body>
</html>
