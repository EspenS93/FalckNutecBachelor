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
            <div style="position: relative; z-index: auto; top: -5px; left: 13px; width: 338px;">
                <p>Lag ny</p>
                    <asp:DropDownList ID="LagNyListe" runat="server" OnSelectedIndexChanged="LagNyListe_SelectedIndexChanged" AutoPostBack="true" >
                        <asp:ListItem Value="LagNyAnsatt" Selected="True">Ansatt</asp:ListItem>
                        <asp:ListItem Value="LagNyAvtale">Avtale</asp:ListItem>
                        <asp:ListItem Value="LagNyAvtaleType">AvtaleType</asp:ListItem>
                        <asp:ListItem Value="LagNyFinansieringsselskap">Finansieringsselskap</asp:ListItem>
                        <asp:ListItem Value="LagNyKategori">Kategori</asp:ListItem>
                        <asp:ListItem Value="LagNyLeverandør">Leverandør</asp:ListItem>
                        <asp:ListItem Value="LagNyLokasjon">Lokasjon</asp:ListItem>
                        <asp:ListItem Value="LagNySeksjon">Seksjon</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="LagNyButton" runat="server" Text="Gå til" PostBackUrl="LagNyAnsatt.aspx" />
                </div>
            <div style="position: relative; z-index: auto; top: 0px; left: 13px; width: 414px;" dir="ltr">
                <p>Vis</p>
                <p>Finansieringsselskap: <asp:DropDownList ID="VisListe1" runat="server" OnSelectedIndexChanged="VisListe_SelectedIndexChanged" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Navn" DataValueField="ID">
                </asp:DropDownList>
                <asp:Button ID="VisButton1" runat="server" Text="Gå til" />
                </p>
                <p>Leverandør:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:DropDownList ID="VisListe2" runat="server" OnSelectedIndexChanged="VisListe2_SelectedIndexChanged" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Navn" DataValueField="ID">
                </asp:DropDownList>
                <asp:Button ID="VisButton2" runat="server" Text="Gå til" />
                </p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [Navn], [ID] FROM [Finansieringsselskap]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [Navn], [ID] FROM [Leverandør]"></asp:SqlDataSource>

            </div>
            
        </div>

        <h3>Avtaler</h3>
        <div id="sokefelt" style="border: thick solid #000000; background-color: #999999; width: 443px;">
            <asp:Button ID="apneSokeFelt" Text="Søk" runat="server" OnClick="apneSokeFelt_Click" />
            <asp:DropDownList ID="DropDownList3" runat="server" Visible="false">
                </asp:DropDownList>
            <asp:DropDownList ID="DropDownList4" runat="server" Visible="false">
                </asp:DropDownList>
            <asp:DropDownList ID="DropDownList5" runat="server" Visible="false">
                </asp:DropDownList>
            <asp:DropDownList ID="DropDownList6" runat="server" Visible="false">
                </asp:DropDownList>
            <asp:CheckBox ID="AlleCheckbox" runat="server" Visible="false" Text="Alle Avtaler"/>
            <asp:Button ID="lukkeSokeFelt" runat="server" Text="X" OnClick="lukkeSokeFelt_Click" Visible="false" />
        </div>
        <asp:GridView ID="avtaler2" runat="server" DataSourceID="SqlDataSource3" AutoGenerateColumns="False" DataKeyNames="ID" OnSelectedIndexChanged="avtaler2_SelectedIndexChanged" OnRowDataBound = "OnRowDataBound" AllowSorting="True" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="Navn" HeaderText="Navn" SortExpression="Navn" />
                <asp:BoundField DataField="Ansvarlig" HeaderText="Ansvarlig" SortExpression="Ansvarlig" />
                <asp:BoundField DataField="SluttDato" HeaderText="SluttDato" SortExpression="SluttDato" />
                <asp:CheckBoxField DataField="FornyAuto" HeaderText="FornyAuto" SortExpression="FornyAuto" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
        </asp:GridView>
                <asp:Button ID="AvtaleKnapp" runat="server" Text="Hent Avtale" OnClick="AvtaleKnapp_Click"/>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="HentAvtaler" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <br />
        <asp:Button ID="AvtaleKnapp" runat="server" Text="Hent avtale" onClick="AvtaleKnapp_Click"/>
    </div>
</asp:Content>