<%@ Page Language="C#" Title="Ny Avtaletype" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LagNyAvtaletype.aspx.cs" Inherits="FalckNutecBachelor.LagNyAvtaletype" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
    <h1>Ny Avtaletype</h1>

        <table>
            <tr>
        <td style="width: 150px"><p style="width: 150px; text-align: left">Legg til avtaletype:</p></td>
        <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Button1" runat="server" Text="legg til avtaletype" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="svar" runat="server" Text="" Visible="false" />

    </div>

</asp:Content>
