<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LagNyBruker.aspx.cs" Inherits="FalckNutecBachelor.LagNyBruker" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <head>
        <title>NyBruker</title>
    </head>

    <form id="form1">
        <div>
            <h1>Ny Bruker</h1>
            <p>//Skal kunne lage nye og redigere eksisterende brukere gjennom Admin</p>
            <p>Fornavn:
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></p>
            <p>Etternavn:
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></p>
            <p>Email:
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></p>
            <p>
                Vara 1:
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Rolle" DataValueField="Rolle" Width="126px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT [Fornavn] FROM [Ansatte]"></asp:SqlDataSource>
            </p>
            <p>
                Vara 2:
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Fornavn" DataValueField="Fornavn" Width="126px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </p>

            <p>
                Rolle:
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="Rolle" DataValueField="Rolle" Width="126px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT [Rolle] FROM [Rolle]"></asp:SqlDataSource>
            </p>
            <p>
                Seksjon:
                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource2" DataTextField="Seksjoner" DataValueField="Seksjoner" Width="126px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT [Seksjon] FROM [Seksjoner]"></asp:SqlDataSource>
            </p>
            <p></p>
            <asp:Button ID="Button1" runat="server" Text="Lag Ny Bruker" OnClick="Button1_Click" />
        </div>
    </form>
</asp:Content>

