<%@ Page Language="C#" MasterPageFile="~/Site.Master" Title="Ny Leverandør" AutoEventWireup="true" CodeBehind="LagNyLeverandør.aspx.cs" Inherits="FalckNutecBachelor.LagNyLeverandør" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


        <div>
            <h1>Ny leverandør </h1>
            <table>
                <tr>
            <td style="width: 150px"><p style="text-align: right; width: 150px;">Navn:</p></td>
            <td><p><asp:TextBox ID="NavnText" runat="server" OnTextChanged="NavnText_TextChanged"></asp:TextBox></p></td>
                    </tr>
                <tr>
            <td style="width: 150px"><p style="text-align: right; width: 150px;">Underleverandør:</p></td>
            <td><p><asp:DropDownList ID="ULevDDL" runat="server" DataSourceID="SqlDataSource1" DataTextField="Navn" DataValueField="ID" AutoPostBack="True"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [Navn], [ID] FROM [Leverandør]"></asp:SqlDataSource>
            </p></td>
                    </tr>
            <p>Organisasjonsnr:
            <asp:TextBox ID="OrgNrText" runat="server"></asp:TextBox>
            </p>
            <p>Adresse:
            <asp:TextBox ID="AdresseText" runat="server"></asp:TextBox>
            </p>
            <p>Postadresse:
            <asp:TextBox ID="PostText" runat="server"></asp:TextBox>
            </p>
            <p>Kontaktperson:
            <asp:TextBox ID="KontaktText" runat="server"></asp:TextBox>
            </p>
            <p>Telefonnr:
            <asp:TextBox ID="TLFText" runat="server"></asp:TextBox>
            </p>
            <p>Telefaks:
            <asp:TextBox ID="FaxText" runat="server"></asp:TextBox>
            </p>
            <p>Epost:
            <asp:TextBox ID="EpostText" runat="server"></asp:TextBox>
            </p>
            <asp:Button ID="SubmitKnapp" runat="server" Text="Legg til leverandør" OnClick="SubmitKnapp_Click"></asp:Button>
            </table>
            <br />
            <asp:Label ID="svar" runat="server" Text="" Visible="false"></asp:Label>
        </div>

</asp:Content>
