<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LagNyLokasjon.aspx.cs" Inherits="FalckNutecBachelor.LagNyLokasjon" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


<head>
    <title>Ny Lokasjon</title>
</head>

    <form id="form1">
    <div>
        <h1>Ny lokasjon</h1>
        Skriv inn ny lokasjon her:
        <asp:TextBox runat="server"></asp:TextBox>
        <br />
        <asp:Button runat="server" Text="Legg til lokasjon"></asp:Button>
    </div>
    </form>

</asp:Content>