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
        <asp:Button ID="Button1" runat="server" Text="Gå til" OnClick="Button1_Click" />
    </div>
    </form>
    <div>

        <h3>Rapporter</h3>
        <asp:GridView ID="avtaler2" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="ID">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="navn" HeaderText="navn" SortExpression="navn" />
                <asp:BoundField DataField="Arkivreferat" HeaderText="Arkivreferat" SortExpression="Arkivreferat" />
                <asp:BoundField DataField="Arkivmappe" HeaderText="Arkivmappe" SortExpression="Arkivmappe" />
                <asp:BoundField DataField="AvtaleType" HeaderText="AvtaleType" SortExpression="AvtaleType" />
                <asp:BoundField DataField="Kategori" HeaderText="Kategori" SortExpression="Kategori" />
                <asp:BoundField DataField="Beskrivelse" HeaderText="Beskrivelse" SortExpression="Beskrivelse" />
                <asp:BoundField DataField="Finansieringsselskap" HeaderText="Finansieringsselskap" SortExpression="Finansieringsselskap" />
                <asp:BoundField DataField="Leverandør" HeaderText="Leverandør" SortExpression="Leverandør" />
                <asp:BoundField DataField="Ansvarlig" HeaderText="Ansvarlig" SortExpression="Ansvarlig" />
                <asp:BoundField DataField="Lokasjon" HeaderText="Lokasjon" SortExpression="Lokasjon" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="StartDato" HeaderText="StartDato" SortExpression="StartDato" />
                <asp:BoundField DataField="SluttDato" HeaderText="SluttDato" SortExpression="SluttDato" />
                <asp:BoundField DataField="Registrert Av" HeaderText="Registrert Av" SortExpression="Registrert Av" />
                <asp:CheckBoxField DataField="FornyAuto" HeaderText="FornyAuto" SortExpression="FornyAuto" />
                <asp:BoundField DataField="PDF" HeaderText="PDF" SortExpression="PDF" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="HentAvtalerOgPDF" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </div>
</asp:Content>
