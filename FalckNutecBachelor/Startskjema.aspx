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
            <asp:GridView ID="avtaler2" runat="server" DataSourceID="SqlDataSource3" AutoGenerateColumns="False" DataKeyNames="ID">
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="HentAvtalerOgPDF" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </div>
    </form>
</asp:Content>
