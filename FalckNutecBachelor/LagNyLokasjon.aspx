<%@ Page Language="C#" MasterPageFile="~/Site.Master" Title="Ny Lokasjon" AutoEventWireup="true" CodeBehind="LagNyLokasjon.aspx.cs" Inherits="FalckNutecBachelor.LagNyLokasjon" EnableEventValidation="false"%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1>Ny lokasjon</h1>

        <table>
            <tr>
        <td style="width: 150px; "><p style="width: 150px; text-align: left">Skriv ny lokasjon her:</p></td>
        <td><asp:TextBox ID="LokasjonText" runat="server"></asp:TextBox></td>
        </tr>
        </table>
        <br />
        <asp:Button ID="SubmitKnapp" runat="server" Text="Legg til lokasjon" OnClick="SubmitKnapp_Click"></asp:Button>
        <br />
        <asp:Label ID="svar" runat="server" Text="" Visible="false"></asp:Label>
    </div>

</asp:Content>