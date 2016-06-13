<%@ Page Language="C#" Title="Ny Ansatt" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LagNyAnsatt.aspx.cs" Inherits="FalckNutecBachelor.LagNyAnsatt"EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <h1>Ny Ansatt</h1>

    <table>
        <tr>
        <td style="width: 150px"><p style="text-align: left; width: 150px">NOnr:</p></td>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
        <td style="width: 150px"><p style="text-align: left; width: 150px">Passord:</p></td>
                <td><asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server"
                ControlToValidate="TextBox2"
                CssClass="ValidationError"
                ControlToCompare="TextBox6"
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
        <td style="width: 150px"><p style="text-align: left; width: 150px">Gjenta Passord:</p></td>
                <td><asp:TextBox ID="TextBox6" TextMode="Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                ErrorMessage="&laquo; (Required)"
                ControlToValidate="TextBox6"
                CssClass="ValidationError"
                ToolTip="Compare Password is a REQUIRED field">
            </asp:RequiredFieldValidator></td>
        </tr>
        <tr>
        <td style="width: 150px"><p style="text-align: left; width: 150px">Fornavn:</p></td>
                <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
        <td style="width: 150px"><p style="text-align: left; width: 150px">Etternavn:</p></td>
                <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
        <td style="width: 150px"><p style="text-align: left; width: 150px">Email:</p></td>
                <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator runat=server display=dynamic
            ControlToValidate="TextBox5" 
            ErrorMessage="Password must contain one of @."
            ValidationExpression=".*[@].*" /></td>
        </tr>
        <tr>
       <td style="width: 150px"><p style="text-align: left; width: 150px">Vara 1:</p></td>
                <td><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Fornavn" DataValueField="Fornavn">
                </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [Fornavn] FROM [Ansatte]"></asp:SqlDataSource></td>
            </tr>
        <tr>
        <td style="width: 150px"><p style="text-align: left; width: 150px">Vara 2:</p></td>
                <td><asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Fornavn" DataValueField="Fornavn">
                </asp:DropDownList></td>
        </tr>
        <tr>
        <td style="width: 150px"><p style="text-align: left; width: 150px">Rolle:</p></td>
                <td><asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="RoleName" DataValueField="RoleName">
                </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [RoleName] FROM [webpages_Roles]"></asp:SqlDataSource></td>
        </tr>
        <tr>
        <td style="width: 150px"><p style="text-align: left; width: 150px">Seksjon:</p></td>
                <td><asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="Seksjon" DataValueField="Seksjon">
                </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [Seksjon] FROM [Seksjoner]"></asp:SqlDataSource></td>
        </tr>
    </table>

        <br />
        <asp:Button ID="Button1" runat="server" Text="Lag Ny Bruker" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="svar" runat="server" Text="" Visible="false"></asp:Label>

</asp:Content>

