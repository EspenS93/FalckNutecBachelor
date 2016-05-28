<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Startskjema.aspx.cs" Inherits="FalckNutecBachelor.Startskjema" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <head>
        <title>Startskjema</title>
    </head>

    <form id="form1">
        <h1>Startskjema</h1>
        <div>
            <p>Velg registeringsskjema</p>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Avtaler" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Leverandører" />
            </p>
        </div>
        <div>
            <h3>Rapporter</h3>
            <p>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Navn" DataValueField="Navn">
                    <asp:ListItem>Klikk for å velge leverandør</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:AvtaleDatabaseConnectionString %>' SelectCommand="SELECT [Navn] FROM [Leverandør]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="navn" DataValueField="navn">
                    <asp:ListItem>Seksjon/Kategori/Ansatt</asp:ListItem>
                </asp:DropDownList><asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:AvtaleDatabaseConnectionString %>' SelectCommand="SELECT [navn] FROM [Avtaler]"></asp:SqlDataSource>
            </p>
        </div>
        <div>
            <h3>Avtaler</h3>
            <asp:GridView ID="avtaler2" runat="server" DataSourceID="SqlDataSource3"></asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="HentAvtalerOgPDF" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </div>
    </form>
</asp:Content>
