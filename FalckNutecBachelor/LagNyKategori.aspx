<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LagNyKategori.aspx.cs" Inherits="FalckNutecBachelor.LagNyKategori" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <head>
        <title>Ny Kategori</title>
    </head>

    <form id="form1">

        <h1>Ny Kategori</h1>
        <p>
            Kategori:
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>

        <p></p>
        <asp:Button ID="Button1" runat="server" Text="Lag Ny Kategori" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="svar" runat="server" Text="" Visible="false"></asp:Label>

    </form>
</asp:Content>

