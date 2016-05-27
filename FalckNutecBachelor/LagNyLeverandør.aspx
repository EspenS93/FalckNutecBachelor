<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LagNyLeverandør.aspx.cs" Inherits="FalckNutecBachelor.LagNyLeverandør" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


<head>
    <title>Ny Leverandør</title>
</head>

    <form id="form1">
    <div>
    <h1> Ny leverandør </h1>

       Legg til leverandør her: 
    <asp:TextBox runat="server"></asp:TextBox>
    <br />
    <asp:Button runat="server" Text="Legg til leverandør"></asp:Button>
    </div>
    </form>

</asp:Content>