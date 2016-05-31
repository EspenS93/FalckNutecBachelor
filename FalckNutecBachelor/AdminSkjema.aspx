<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminSkjema.aspx.cs" Inherits="FalckNutecBachelor.AdminSkjema" EnableEventValidation="false" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <head>
        <title>Startskjema</title>
    </head>

    <form id="form1">
        <h1>AdminSkjema</h1>
    </form>
    <div>
        <div>
            <asp:DropDownList ID="test" runat="server" >
                <asp:ListItem Selected="True">Avtaler</asp:ListItem>
                <asp:ListItem>Finansieringsselskaper</asp:ListItem>
                <asp:ListItem>Leverandører</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT Avtaler.navn AS Avtaler, Finansieringsselskap.Navn AS Finansieringsselskap, Leverandør.Navn AS Leverandører FROM Avtaler CROSS JOIN Finansieringsselskap CROSS JOIN Leverandør"></asp:SqlDataSource>
            <div style="position: relative; z-index: auto; top: -5px; left: 13px; width: 245px;">
                <p>Lag ny</p>
                    <asp:DropDownList ID="LagNyListe" runat="server" OnSelectedIndexChanged="LagNyListe_SelectedIndexChanged" >
                        <asp:ListItem Value="LagNyAnsatt" Selected="True">Ansatt</asp:ListItem>
                        <asp:ListItem Value="LagNyAvtale">Avtale</asp:ListItem>
                        <asp:ListItem Value="LagNyAvtaleType">AvtaleType</asp:ListItem>
                        <asp:ListItem Value="LagNyBetalingsanmerkning">Betalingsanmerkning</asp:ListItem>
                        <asp:ListItem Value="LagNyBruker">Bruker</asp:ListItem>
                        <asp:ListItem Value="LagNyKategori">Kategori</asp:ListItem>
                        <asp:ListItem Value="LagNyLeverandør">Leverandør</asp:ListItem>
                        <asp:ListItem Value="LagNyLokasjon">Lokasjon</asp:ListItem>
                        <asp:ListItem Value="LagNyMemo">Memo</asp:ListItem>
                        <asp:ListItem Value="LagNySeksjon">Seksjon</asp:ListItem>
                        <asp:ListItem Value="LagNyBruker">Bruker</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="LagNyButton" runat="server" Text="Gå til" PostBackUrl="LagNyAnsatt.aspx" />
                </div>
            <div style="position: relative; z-index: auto; top: 0px; left: 13px; width: 246px;">
                <p>Vis</p>
                <asp:DropDownList ID="VisListe" runat="server" OnSelectedIndexChanged="VisListe_SelectedIndexChanged">
                    <asp:ListItem Value="VisAvtale">Avtale</asp:ListItem> 
                    <asp:ListItem Value="VisFinansieringsselskap">Finansieringsselskap</asp:ListItem>
                    <asp:ListItem Value="VisLeverandør">Leverandør</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="VisButton" runat="server" Text="Gå til" PostBackUrl="VisAvtale.aspx" />
            </div>
            
        </div>

        <h3>Avtaler</h3>
        <asp:GridView ID="avtaler2" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="ID" OnSelectedIndexChanged="avtaler2_SelectedIndexChanged" OnRowDataBound = "OnRowDataBound">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="navn" HeaderText="Navn" SortExpression="navn" />
                <asp:BoundField DataField="AvtaleType" HeaderText="AvtaleType" SortExpression="AvtaleType" />
                <asp:BoundField DataField="Kategori" HeaderText="Kategori" SortExpression="Kategori" />
                <asp:BoundField DataField="Beskrivelse" HeaderText="Beskrivelse" SortExpression="Beskrivelse" />
                <asp:BoundField DataField="Finansieringsselskap" HeaderText="Finansiering" SortExpression="Finansieringsselskap" />
                <asp:BoundField DataField="Leverandør" HeaderText="Leverandør" SortExpression="Leverandør" />
                <asp:BoundField DataField="Ansvarlig" HeaderText="Ansvarlig" SortExpression="Ansvarlig" />
                <asp:BoundField DataField="Lokasjon" HeaderText="Lokasjon" SortExpression="Lokasjon" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="StartDato" HeaderText="StartDato" SortExpression="StartDato" />
                <asp:BoundField DataField="SluttDato" HeaderText="SluttDato" SortExpression="SluttDato" />
                <asp:BoundField DataField="Registrert Av" HeaderText="Registrert Av" SortExpression="Registrert Av" />
                <asp:CheckBoxField DataField="FornyAuto" HeaderText="FornyAuto" SortExpression="FornyAuto" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="AvtaleKnapp" runat="server" Text="Hent Avtale" OnClick="AvtaleKnapp_Click"/>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="HentAvtalerOgPDF" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <div>
            <h3>Rapporter</h3>
            <p>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Navn" DataValueField="Navn">
                    <asp:ListItem>Klikk for å velge leverandør</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:AvtaleDatabaseConnectionString %>' SelectCommand="SELECT [Navn] FROM [Leverandør]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="navn" DataValueField="navn">
                    <asp:ListItem>Seksjon/Kategori/Ansatt</asp:ListItem>
                </asp:DropDownList><asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:AvtaleDatabaseConnectionString %>' SelectCommand="SELECT [navn] FROM [Avtaler]"></asp:SqlDataSource>
            </p>
        </div>
    </div>
</asp:Content>
