<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LagNyAvtaletype.aspx.cs" Inherits="FalckNutecBachelor.LagNyAvtaletype" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<head>
    <title>Ny Avtaletype</title>
</head>

    <form id="form1">
    <div>
    <h1>Ny Avtaletype</h1>
        
        <p>Legg til avtaletype:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" Text="legg til avtaletype" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="svar" runat="server" Text="" Visible="false" />
    </div>
    </form>



</asp:Content>
