<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LagNyAvtaletype.aspx.cs" Inherits="FalckNutecBachelor.LagNyAvtaletype" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<head>
    <title>Ny Avtaletype</title>
</head>

    <form id="form1">
    <div>
    <h1>Ny Avtaletype</h1>
        
        Legg til avtaletype:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        <asp:Button ID="Button1" runat="server" Text="legg til avtaletype" />

    </div>
    </form>



</asp:Content>
