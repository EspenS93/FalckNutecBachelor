<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Startskjema.aspx.cs" Inherits="Oving1.Startskjema" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<head>
    <title>Startskjema</title>
</head>

    <form id="form1">
    <h1>Startskjema</h1>
        <p><asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/Pictures/FalckN_logo_pos_trans.png" style="margin-right: 0px" /></p>
    <div>
    <p>Velg registeringsskjema</p>
    <p><asp:Button ID="Button1" runat="server" Text="Avtaler" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Leverandører" /></p>

        <h3>Rapporter</h3>
        <p><asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Velg ett eller anna</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>Seksjon/Kategori/Ansatt</asp:ListItem>
            </asp:DropDownList></p>
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
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/LagNyBruker.aspx">LagNyBruker</asp:HyperLink>
           &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/LagNySeksjon.aspx">LagNySeksjon</asp:HyperLink>
           <p></p>
        </div>
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Hjem</asp:HyperLink>
        </div>
    </form>
</asp:Content>
