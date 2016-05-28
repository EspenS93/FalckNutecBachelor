<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminSkjema.aspx.cs" Inherits="FalckNutecBachelor.Startskjema" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<head>
    <title>Startskjema</title>
</head>

    <form id="form1">
    <h1>AdminSkjema</h1>
        <p><asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/Pictures/FalckN_logo_pos_trans.png" style="margin-right: 0px" /></p>
    <div>
    <p>Lag ny</p>
    <p><asp:DropDownList ID="LagNyListe" runat="server" >
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

        <h3>Rapporter</h3>
        <p>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="Navn" DataValueField="Navn">
                <asp:ListItem>Klikk for å velge leverandør</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:AvtaleDatabaseConnectionString %>' SelectCommand="SELECT [Navn] FROM [Leverandør]"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="navn" DataValueField="navn">
                <asp:ListItem>Seksjon/Kategori/Ansatt</asp:ListItem>
            </asp:DropDownList><asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:AvtaleDatabaseConnectionString %>' SelectCommand="SELECT [navn] FROM [Avtaler]"></asp:SqlDataSource>
        </p>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                AvtaleTypeID:
                <asp:DynamicControl DataField="AvtaleTypeID" runat="server" ID="AvtaleTypeIDDynamicControl" Mode="Edit" />
                <br />
                navn:
                <asp:DynamicControl DataField="navn" runat="server" ID="navnDynamicControl" Mode="Edit" />
                <br />
                Arkivreferat:
                <asp:DynamicControl DataField="Arkivreferat" runat="server" ID="ArkivreferatDynamicControl" Mode="Edit" />
                <br />
                Arkivmappe:
                <asp:DynamicControl DataField="Arkivmappe" runat="server" ID="ArkivmappeDynamicControl" Mode="Edit" />
                <br />
                KategoriID:
                <asp:DynamicControl DataField="KategoriID" runat="server" ID="KategoriIDDynamicControl" Mode="Edit" />
                <br />
                Beskrivelse:
                <asp:DynamicControl DataField="Beskrivelse" runat="server" ID="BeskrivelseDynamicControl" Mode="Edit" />
                <br />
                FinansieringsselskapID:
                <asp:DynamicControl DataField="FinansieringsselskapID" runat="server" ID="FinansieringsselskapIDDynamicControl" Mode="Edit" />
                <br />
                AnsattRegistrert:
                <asp:DynamicControl DataField="AnsattRegistrert" runat="server" ID="AnsattRegistrertDynamicControl" Mode="Edit" />
                <br />
                FornyAuto:
                <asp:DynamicControl DataField="FornyAuto" runat="server" ID="FornyAutoDynamicControl" Mode="Edit" />
                <br />
                StartDato:
                <asp:DynamicControl DataField="StartDato" runat="server" ID="StartDatoDynamicControl" Mode="Edit" />
                <br />
                SluttDato:
                <asp:DynamicControl DataField="SluttDato" runat="server" ID="SluttDatoDynamicControl" Mode="Edit" />
                <br />
                Status:
                <asp:DynamicControl DataField="Status" runat="server" ID="StatusDynamicControl" Mode="Edit" />
                <br />
                LokasjonID:
                <asp:DynamicControl DataField="LokasjonID" runat="server" ID="LokasjonIDDynamicControl" Mode="Edit" />
                <br />
                AnsvarligID:
                <asp:DynamicControl DataField="AnsvarligID" runat="server" ID="AnsvarligIDDynamicControl" Mode="Edit" />
                <br />
                LeverandørID:
                <asp:DynamicControl DataField="LeverandørID" runat="server" ID="LeverandørIDDynamicControl" Mode="Edit" />
                <br />
                <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" ValidationGroup="Insert" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
            </EditItemTemplate>
            <InsertItemTemplate>
                AvtaleTypeID:
                <asp:DynamicControl DataField="AvtaleTypeID" runat="server" ID="AvtaleTypeIDDynamicControl" Mode="Insert" ValidationGroup="Insert" />
                <br />
                navn:
                <asp:DynamicControl DataField="navn" runat="server" ID="navnDynamicControl" Mode="Insert" ValidationGroup="Insert" />
                <br />
                Arkivreferat:
                <asp:DynamicControl DataField="Arkivreferat" runat="server" ID="ArkivreferatDynamicControl" Mode="Insert" ValidationGroup="Insert" />
                <br />
                Arkivmappe:
                <asp:DynamicControl DataField="Arkivmappe" runat="server" ID="ArkivmappeDynamicControl" Mode="Insert" ValidationGroup="Insert" />
                <br />
                KategoriID:
                <asp:DynamicControl DataField="KategoriID" runat="server" ID="KategoriIDDynamicControl" Mode="Insert" ValidationGroup="Insert" />
                <br />
                Beskrivelse:
                <asp:DynamicControl DataField="Beskrivelse" runat="server" ID="BeskrivelseDynamicControl" Mode="Insert" ValidationGroup="Insert" />
                <br />
                FinansieringsselskapID:
                <asp:DynamicControl DataField="FinansieringsselskapID" runat="server" ID="FinansieringsselskapIDDynamicControl" Mode="Insert" ValidationGroup="Insert" />
                <br />
                AnsattRegistrert:
                <asp:DynamicControl DataField="AnsattRegistrert" runat="server" ID="AnsattRegistrertDynamicControl" Mode="Insert" ValidationGroup="Insert" />
                <br />
                FornyAuto:
                <asp:DynamicControl DataField="FornyAuto" runat="server" ID="FornyAutoDynamicControl" Mode="Insert" ValidationGroup="Insert" />
                <br />
                StartDato:
                <asp:DynamicControl DataField="StartDato" runat="server" ID="StartDatoDynamicControl" Mode="Insert" ValidationGroup="Insert" />
                <br />
                SluttDato:
                <asp:DynamicControl DataField="SluttDato" runat="server" ID="SluttDatoDynamicControl" Mode="Insert" ValidationGroup="Insert" />
                <br />
                Status:
                <asp:DynamicControl DataField="Status" runat="server" ID="StatusDynamicControl" Mode="Insert" ValidationGroup="Insert" />
                <br />
                LokasjonID:
                <asp:DynamicControl DataField="LokasjonID" runat="server" ID="LokasjonIDDynamicControl" Mode="Insert" ValidationGroup="Insert" />
                <br />
                AnsvarligID:
                <asp:DynamicControl DataField="AnsvarligID" runat="server" ID="AnsvarligIDDynamicControl" Mode="Insert" ValidationGroup="Insert" />
                <br />
                LeverandørID:
                <asp:DynamicControl DataField="LeverandørID" runat="server" ID="LeverandørIDDynamicControl" Mode="Insert" ValidationGroup="Insert" />
                <br />
                <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" ValidationGroup="Insert" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
            </InsertItemTemplate>
            <ItemTemplate>
                AvtaleTypeID:
                <asp:DynamicControl DataField="AvtaleTypeID" runat="server" ID="AvtaleTypeIDDynamicControl" Mode="ReadOnly" />
                <br />
                navn:
                <asp:DynamicControl DataField="navn" runat="server" ID="navnDynamicControl" Mode="ReadOnly" />
                <br />
                Arkivreferat:
                <asp:DynamicControl DataField="Arkivreferat" runat="server" ID="ArkivreferatDynamicControl" Mode="ReadOnly" />
                <br />
                Arkivmappe:
                <asp:DynamicControl DataField="Arkivmappe" runat="server" ID="ArkivmappeDynamicControl" Mode="ReadOnly" />
                <br />
                KategoriID:
                <asp:DynamicControl DataField="KategoriID" runat="server" ID="KategoriIDDynamicControl" Mode="ReadOnly" />
                <br />
                Beskrivelse:
                <asp:DynamicControl DataField="Beskrivelse" runat="server" ID="BeskrivelseDynamicControl" Mode="ReadOnly" />
                <br />
                FinansieringsselskapID:
                <asp:DynamicControl DataField="FinansieringsselskapID" runat="server" ID="FinansieringsselskapIDDynamicControl" Mode="ReadOnly" />
                <br />
                AnsattRegistrert:
                <asp:DynamicControl DataField="AnsattRegistrert" runat="server" ID="AnsattRegistrertDynamicControl" Mode="ReadOnly" />
                <br />
                FornyAuto:
                <asp:DynamicControl DataField="FornyAuto" runat="server" ID="FornyAutoDynamicControl" Mode="ReadOnly" />
                <br />
                StartDato:
                <asp:DynamicControl DataField="StartDato" runat="server" ID="StartDatoDynamicControl" Mode="ReadOnly" />
                <br />
                SluttDato:
                <asp:DynamicControl DataField="SluttDato" runat="server" ID="SluttDatoDynamicControl" Mode="ReadOnly" />
                <br />
                Status:
                <asp:DynamicControl DataField="Status" runat="server" ID="StatusDynamicControl" Mode="ReadOnly" />
                <br />
                LokasjonID:
                <asp:DynamicControl DataField="LokasjonID" runat="server" ID="LokasjonIDDynamicControl" Mode="ReadOnly" />
                <br />
                AnsvarligID:
                <asp:DynamicControl DataField="AnsvarligID" runat="server" ID="AnsvarligIDDynamicControl" Mode="ReadOnly" />
                <br />
                LeverandørID:
                <asp:DynamicControl DataField="LeverandørID" runat="server" ID="LeverandørIDDynamicControl" Mode="ReadOnly" />
                <br />

            </ItemTemplate>
        </asp:FormView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:AvtaleDatabaseConnectionString %>' SelectCommand="SELECT [AvtaleTypeID], [navn], [Arkivreferat], [Arkivmappe], [KategoriID], [Beskrivelse], [FinansieringsselskapID], [AnsattRegistrert], [FornyAuto], [StartDato], [SluttDato], [Status], [LokasjonID], [AnsvarligID], [LeverandørID] FROM [Avtaler]"></asp:SqlDataSource>
    </div>
       <div>
           <p></p>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/LagNyAnsatt.aspx">LagNyBruker</asp:HyperLink>
           &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/LagNySeksjon.aspx">LagNySeksjon</asp:HyperLink>
           <p></p>
        </div>
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Hjem</asp:HyperLink>
        </div>
    </form>
</asp:Content>
