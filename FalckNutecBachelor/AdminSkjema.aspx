<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminSkjema.aspx.cs" Inherits="FalckNutecBachelor.AdminSkjema" EnableEventValidation="false" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<head>
    <title>Startskjema</title>
</head>

    <form id="form1">
    <h1>AdminSkjema</h1>
    <div>
    <p>Lag ny</p>
    <p><asp:DropDownList ID="LagNyListe" runat="server"  >
        <asp:ListItem Value="LagNyAnsatt">Ansatt</asp:ListItem>
        <asp:ListItem Value="LagNyAvtale">Avtale</asp:ListItem>
        <asp:ListItem Value="LagNyAvtaleType">AvtaleType</asp:ListItem>
        <asp:ListItem Value="LagNyBetalingsanmerkning">Betalingsanmerkning</asp:ListItem>
        <asp:ListItem Value="LagNyKategori">Kategori</asp:ListItem>
        <asp:ListItem Value="LagNyLeverandør">Leverandør</asp:ListItem>
        <asp:ListItem Value="LagNyLokasjon">Lokasjon</asp:ListItem>
        <asp:ListItem Value="LagNyMemo">Memo</asp:ListItem>
        <asp:ListItem Value="LagNySeksjon">Seksjon</asp:ListItem>
       </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="Gå til" OnClick="Button1_Click"  />
    </div>
    </form>
    <div>

        <h3>Rapporter</h3>
        
        </asp:FormView>
        <asp:GridView ID="avtaler2" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="HentAvtalerOgPDF" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </div>
</asp:Content>
