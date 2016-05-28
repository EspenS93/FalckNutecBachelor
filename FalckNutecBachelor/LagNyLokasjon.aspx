<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LagNyLokasjon.aspx.cs" Inherits="FalckNutecBachelor.LagNyLokasjon" EnableEventValidation="false"%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


<head>
    <title>Ny Lokasjon</title>
</head>

    <form id="form1">
    <div>
        <h1>Ny lokasjon</h1>
        <p>Skriv inn ny lokasjon her:
        <asp:TextBox ID="LokasjonText" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="SubmitKnapp" runat="server" Text="Legg til lokasjon" OnClick="SubmitKnapp_Click"></asp:Button>
        <br />
        <asp:Label ID="svar" runat="server" Text="" Visible="false"></asp:Label>
    </div>
    </form>

</asp:Content>