<%@ Page Language="C#" MasterPageFile="~/Site.Master" Title="Ny Bruker" AutoEventWireup="true" CodeBehind="LagNyBruker.aspx.cs" Inherits="FalckNutecBachelor.LagNyBruker" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


        <h1>Ny Bruker</h1>
        <p style="width: 450px">Her kan du lage nye og redigere eksisterende brukere gjennom Admin</p>
    <table style="width: 556px; height: 178px;">
        <tr>
        <td style="width: 150px" ><p style="text-align: left; width: 150px;">NOnr:</p></td>
        <td><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="NOnr" DataValueField="NOnr"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>"  SelectCommand="SELECT [NOnr] FROM [Ansatte]"></asp:SqlDataSource></td>
        </tr>
        <tr>
        <td style="width: 150px"><p style="text-align: left; width: 150px;">Passord:</p></td>
        <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server"
                ControlToValidate="TextBox2"
                CssClass="ValidationError"
                ControlToCompare="TextBox3"
                ErrorMessage="No Match"
                ToolTip="Password must be the same" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ErrorMessage="&laquo; (Required)"
                ControlToValidate="TextBox2"
                CssClass="ValidationError"
                ToolTip="Compare Password is a REQUIRED field">
            </asp:RequiredFieldValidator></td>
        </tr>
        <tr>
        <td style="width: 150px"><p style="text-align: left; width: 150px;">Gjenta Passord:</p></td>
        <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                ErrorMessage="&laquo; (Required)"
                ControlToValidate="TextBox3"
                CssClass="ValidationError"
                ToolTip="Compare Password is a REQUIRED field">
            </asp:RequiredFieldValidator></td>
        </tr>
        </table>
    <br />
        <asp:Button ID="Button1" runat="server" Text="Lag Ny Bruker" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="svar" runat="server" Text="" Visible="false"></asp:Label>

</asp:Content>

