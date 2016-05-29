<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LagNyBruker.aspx.cs" Inherits="FalckNutecBachelor.LagNyBruker" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <head>
        <title>Ny Bruker</title>
    </head>

    <form id="form1">

        <h1>Ny Bruker</h1>
        <p>//Skal kunne lage nye og redigere eksisterende brukere gjennom Admin</p>
        <p>
            NOnr:
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            Passord:
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
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
            </asp:RequiredFieldValidator>
        </p>
        <p>
            Gjenta Passord:
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                ErrorMessage="&laquo; (Required)"
                ControlToValidate="TextBox3"
                CssClass="ValidationError"
                ToolTip="Compare Password is a REQUIRED field">
            </asp:RequiredFieldValidator>
        </p>
        <p>
            Ansatt:
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Fornavn" DataValueField="Fornavn">
                </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [Fornavn] FROM [Ansatte]"></asp:SqlDataSource>
        </p>
        <p></p>
        <asp:Button ID="Button1" runat="server" Text="Lag Ny Bruker" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="svar" runat="server" Text="" Visible="false"></asp:Label>

    </form>
</asp:Content>

