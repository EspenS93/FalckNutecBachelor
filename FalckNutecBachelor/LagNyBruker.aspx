<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LagNyBruker.aspx.cs" Inherits="FalckNutecBachelor.LagNyBruker" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<head>
    <title>NyBruker</title>
</head>

    <form id="form1">
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
</asp:Content>

