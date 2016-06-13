<%@ Page Language="C#" MasterPageFile="~/Site.Master" Title="Ny Kategori" AutoEventWireup="true" CodeBehind="LagNyKategori.aspx.cs" Inherits="FalckNutecBachelor.LagNyKategori" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div>

        <h1>Ny Kategori</h1>
    <table>
        <tr>
        <td style="width: 150px"><p style="width: 150px; text-align: left">Kategori:</p></td>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
    </table>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Lag Ny Kategori" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="svar" runat="server" Text="" Visible="false"></asp:Label>
    
</div>

</asp:Content>

