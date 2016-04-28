<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LagNySeksjon.aspx.cs" Inherits="FalckNutecBachelor.LagNySeksjon" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<head>
    <title>Ny Seksjon</title>
</head>

    <form id="form1">
    <div>
        <h1>Ny Seksjon</h1>
        <p>//Lager en ny seksjon for en Admin, og skal også kunne redigere eksisterende seksjoner.</p>
        <p>SeksjonsID: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> <-Skal være et tall!</p>
        <p>Navn: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></p>
        <p></p>
        <asp:Button ID="Button1" runat="server" Text="Lan ny Seksjon" />
    </div>
    </form>
</asp:Content>

