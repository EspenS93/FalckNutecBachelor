<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site.Master" CodeBehind="VisAvtale.aspx.cs" Inherits="FalckNutecBachelor.VisAvtale"  EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1>&nbsp;</h1>
        <h1>Oversikt over avtaler</h1>
        <p>Velg avtale</p>



        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="navn" DataValueField="navn" AutoPostBack="True" >
            </asp:DropDownList>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1"  >
            <EditItemTemplate>
                navn:
                <asp:TextBox ID="navnTextBox" runat="server" Text='<%# Bind("navn") %>' />
                <br />
                Arkivreferat:
                <asp:TextBox ID="ArkivreferatTextBox" runat="server" Text='<%# Bind("Arkivreferat") %>' />
                <br />
                Arkivmappe:
                <asp:TextBox ID="ArkivmappeTextBox" runat="server" Text='<%# Bind("Arkivmappe") %>' />
                <br />
                AvtaleTypeID:
                <asp:TextBox ID="AvtaleTypeIDTextBox" runat="server" Text='<%# Bind("AvtaleTypeID") %>' />
                <br />
                KategoriID:
                <asp:TextBox ID="KategoriIDTextBox" runat="server" Text='<%# Bind("KategoriID") %>' />
                <br />
                Beskrivelse:
                <asp:TextBox ID="BeskrivelseTextBox" runat="server" Text='<%# Bind("Beskrivelse") %>' />
                <br />
                FinansieringsselskapID:
                <asp:TextBox ID="FinansieringsselskapIDTextBox" runat="server" Text='<%# Bind("FinansieringsselskapID") %>' />
                <br />
                FornyAuto:
                <asp:CheckBox ID="FornyAutoCheckBox" runat="server" Checked='<%# Bind("FornyAuto") %>' />
                <br />
                AnsattRegistrert:
                <asp:TextBox ID="AnsattRegistrertTextBox" runat="server" Text='<%# Bind("AnsattRegistrert") %>' />
                <br />
                SluttDato:
                <asp:TextBox ID="SluttDatoTextBox" runat="server" Text='<%# Bind("SluttDato") %>' />
                <br />
                StartDato:
                <asp:TextBox ID="StartDatoTextBox" runat="server" Text='<%# Bind("StartDato") %>' />
                <br />
                stage:
                <asp:TextBox ID="stageTextBox" runat="server" Text='<%# Bind("stage") %>' />
                <br />
                LokasjonID:
                <asp:TextBox ID="LokasjonIDTextBox" runat="server" Text='<%# Bind("LokasjonID") %>' />
                <br />
                AnsvarligID:
                <asp:TextBox ID="AnsvarligIDTextBox" runat="server" Text='<%# Bind("AnsvarligID") %>' />
                <br />
                LeverandørID:
                <asp:TextBox ID="LeverandørIDTextBox" runat="server" Text='<%# Bind("LeverandørID") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                navn:
                <asp:TextBox ID="navnTextBox" runat="server" Text='<%# Bind("navn") %>' />
                <br />
                Arkivreferat:
                <asp:TextBox ID="ArkivreferatTextBox" runat="server" Text='<%# Bind("Arkivreferat") %>' />
                <br />
                Arkivmappe:
                <asp:TextBox ID="ArkivmappeTextBox" runat="server" Text='<%# Bind("Arkivmappe") %>' />
                <br />
                AvtaleTypeID:
                <asp:TextBox ID="AvtaleTypeIDTextBox" runat="server" Text='<%# Bind("AvtaleTypeID") %>' />
                <br />
                KategoriID:
                <asp:TextBox ID="KategoriIDTextBox" runat="server" Text='<%# Bind("KategoriID") %>' />
                <br />
                Beskrivelse:
                <asp:TextBox ID="BeskrivelseTextBox" runat="server" Text='<%# Bind("Beskrivelse") %>' />
                <br />
                FinansieringsselskapID:
                <asp:TextBox ID="FinansieringsselskapIDTextBox" runat="server" Text='<%# Bind("FinansieringsselskapID") %>' />
                <br />
                FornyAuto:
                <asp:CheckBox ID="FornyAutoCheckBox" runat="server" Checked='<%# Bind("FornyAuto") %>' />
                <br />
                AnsattRegistrert:
                <asp:TextBox ID="AnsattRegistrertTextBox" runat="server" Text='<%# Bind("AnsattRegistrert") %>' />
                <br />
                SluttDato:
                <asp:TextBox ID="SluttDatoTextBox" runat="server" Text='<%# Bind("SluttDato") %>' />
                <br />
                StartDato:
                <asp:TextBox ID="StartDatoTextBox" runat="server" Text='<%# Bind("StartDato") %>' />
                <br />
                stage:
                <asp:TextBox ID="stageTextBox" runat="server" Text='<%# Bind("stage") %>' />
                <br />
                LokasjonID:
                <asp:TextBox ID="LokasjonIDTextBox" runat="server" Text='<%# Bind("LokasjonID") %>' />
                <br />
                AnsvarligID:
                <asp:TextBox ID="AnsvarligIDTextBox" runat="server" Text='<%# Bind("AnsvarligID") %>' />
                <br />
                LeverandørID:
                <asp:TextBox ID="LeverandørIDTextBox" runat="server" Text='<%# Bind("LeverandørID") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                navn:
                <asp:Label ID="navnLabel" runat="server" Text='<%# Bind("navn") %>' />
                <br />
                Arkivreferat:
                <asp:Label ID="ArkivreferatLabel" runat="server" Text='<%# Bind("Arkivreferat") %>' />
                <br />
                Arkivmappe:
                <asp:Label ID="ArkivmappeLabel" runat="server" Text='<%# Bind("Arkivmappe") %>' />
                <br />
                AvtaleTypeID:
                <asp:Label ID="AvtaleTypeIDLabel" runat="server" Text='<%# Bind("AvtaleTypeID") %>' />
                <br />
                KategoriID:
                <asp:Label ID="KategoriIDLabel" runat="server" Text='<%# Bind("KategoriID") %>' />
                <br />
                Beskrivelse:
                <asp:Label ID="BeskrivelseLabel" runat="server" Text='<%# Bind("Beskrivelse") %>' />
                <br />
                FinansieringsselskapID:
                <asp:Label ID="FinansieringsselskapIDLabel" runat="server" Text='<%# Bind("FinansieringsselskapID") %>' />
                <br />
                FornyAuto:
                <asp:CheckBox ID="FornyAutoCheckBox" runat="server" Checked='<%# Bind("FornyAuto") %>' Enabled="false" />
                <br />
                AnsattRegistrert:
                <asp:Label ID="AnsattRegistrertLabel" runat="server" Text='<%# Bind("AnsattRegistrert") %>' />
                <br />
                SluttDato:
                <asp:Label ID="SluttDatoLabel" runat="server" Text='<%# Bind("SluttDato") %>' />
                <br />
                StartDato:
                <asp:Label ID="StartDatoLabel" runat="server" Text='<%# Bind("StartDato") %>' />
                <br />
                stage:
                <asp:Label ID="stageLabel" runat="server" Text='<%# Bind("stage") %>' />
                <br />
                LokasjonID:
                <asp:Label ID="LokasjonIDLabel" runat="server" Text='<%# Bind("LokasjonID") %>' />
                <br />
                AnsvarligID:
                <asp:Label ID="AnsvarligIDLabel" runat="server" Text='<%# Bind("AnsvarligID") %>' />
                <br />
                LeverandørID:
                <asp:Label ID="LeverandørIDLabel" runat="server" Text='<%# Bind("LeverandørID") %>' />
                <br />

            </ItemTemplate>
           
        </asp:FormView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>' SelectCommand="SELECT [navn], [Arkivreferat], [Arkivmappe], [AvtaleTypeID], [KategoriID], [Beskrivelse], [FinansieringsselskapID], [FornyAuto], [AnsattRegistrert], [SluttDato], [StartDato], [stage], [LokasjonID], [AnsvarligID], [LeverandørID] FROM [Avtaler]"></asp:SqlDataSource>
            </div>
    </div>
    <div class="links">
    </div>
</asp:Content>

