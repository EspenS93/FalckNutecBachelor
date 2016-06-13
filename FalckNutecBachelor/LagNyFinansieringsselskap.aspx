<%@ Page Language="C#" MasterPageFile="~/Site.Master" Title="Nytt Finansieringsselskap" AutoEventWireup="true" CodeBehind="LagNyFinansieringsselskap.aspx.cs" Inherits="FalckNutecBachelor.LagNyFinansieringsselskap" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


        <div>
            <h1>Nytt Finansieringsselskap </h1>

            <table>
                <tr>
            <td style="width: 150px"><p style="text-align: left; width: 150px">Navn:</p></td>
            <td><asp:TextBox ID="NavnText" runat="server"></asp:TextBox></td>
            </tr>
                <tr>
            <td style="width: 150px"><p style="text-align: left; width: 150px">Adresse:</p></td>
            <td><asp:Textbox ID="AdresseText" runat="server"></asp:Textbox></td>
            </tr>
                <tr>
            <td style="width: 150px"><p style="text-align: left; width: 150px">Postadresse:</p></td>
            <td><asp:TextBox ID="PostadresseText" runat="server"></asp:TextBox></td>
            </tr>
                <tr>
            <td style="width: 150px"><p style="text-align: left; width: 150px">Kontaktperson:</p></td>
            <td><asp:TextBox ID="KontaktText" runat="server"></asp:TextBox></td>
            </tr>
                <tr>
            <td style="width: 150px"><p style="text-align: left; width: 150px">Telefonnr:</p></td>
            <td><asp:TextBox ID="TLFText" runat="server"></asp:TextBox></td>
            </tr>
                <tr>
            <td style="width: 150px"><p style="text-align: left; width: 150px">Telefaks:</p></td>
            <td><asp:TextBox ID="FaksText" runat="server"></asp:TextBox></td>
            </tr>
                <tr>
            <td style="width: 150px"><p style="text-align: left; width: 150px">Epost:</p></td>
            <td><asp:TextBox ID="EpostText" runat="server"></asp:TextBox></td>
            </tr>
            </table>

            <br />
            <asp:Button ID="SubmitKnapp" runat="server" Text="Legg til Finansieringsselskap" OnClick="SubmitKnapp_Click"></asp:Button>
            <br />
            <asp:Label ID="svar" runat="server" Text="" Visible="false"></asp:Label>
        </div>

</asp:Content>
