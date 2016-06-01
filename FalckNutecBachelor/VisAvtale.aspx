<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site.Master" CodeBehind="VisAvtale.aspx.cs" Inherits="FalckNutecBachelor.VisAvtale"  EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1>&nbsp;</h1>
        <h1>Oversikt over avtaler</h1>
        <p>Velg avtale</p>


        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Beskrivelse" DataValueField="Beskrivelse" AutoPostBack="True" >
            </asp:DropDownList>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1"  >
            <EditItemTemplate>
                Beskrivelse:
                <asp:TextBox ID="BeskrivelseTextBox" runat="server" Text='<%# Bind("Beskrivelse") %>' />
                <br />
                AvtaleTypeID:
                <asp:TextBox ID="AvtaleTypeIDTextBox" runat="server" Text='<%# Bind("AvtaleTypeID") %>' />
                <br />
                KategoriID:
                <asp:TextBox ID="KategoriIDTextBox" runat="server" Text='<%# Bind("KategoriID") %>' />
                <br />
                FinansieringsselskapID:
                <asp:TextBox ID="FinansieringsselskapIDTextBox" runat="server" Text='<%# Bind("FinansieringsselskapID") %>' />
                <br />
                LeverandørID:
                <asp:TextBox ID="LeverandørIDTextBox" runat="server" Text='<%# Bind("LeverandørID") %>' />
                <br />
                AnsvarligID:
                <asp:TextBox ID="AnsvarligIDTextBox" runat="server" Text='<%# Bind("AnsvarligID") %>' />
                <br />
                LokasjonID:
                <asp:TextBox ID="LokasjonIDTextBox" runat="server" Text='<%# Bind("LokasjonID") %>' />
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
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Beskrivelse:
                <asp:TextBox ID="BeskrivelseTextBox" runat="server" Text='<%# Bind("Beskrivelse") %>' />
                <br />
                AvtaleTypeID:
                <asp:TextBox ID="AvtaleTypeIDTextBox" runat="server" Text='<%# Bind("AvtaleTypeID") %>' />
                <br />
                KategoriID:
                <asp:TextBox ID="KategoriIDTextBox" runat="server" Text='<%# Bind("KategoriID") %>' />
                <br />
                FinansieringsselskapID:
                <asp:TextBox ID="FinansieringsselskapIDTextBox" runat="server" Text='<%# Bind("FinansieringsselskapID") %>' />
                <br />
                LeverandørID:
                <asp:TextBox ID="LeverandørIDTextBox" runat="server" Text='<%# Bind("LeverandørID") %>' />
                <br />
                AnsvarligID:
                <asp:TextBox ID="AnsvarligIDTextBox" runat="server" Text='<%# Bind("AnsvarligID") %>' />
                <br />
                LokasjonID:
                <asp:TextBox ID="LokasjonIDTextBox" runat="server" Text='<%# Bind("LokasjonID") %>' />
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
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Beskrivelse:
                <asp:Label ID="BeskrivelseLabel" runat="server" Text='<%# Bind("Beskrivelse") %>' />
                <br />
                AvtaleTypeID:
                <asp:Label ID="AvtaleTypeIDLabel" runat="server" Text='<%# Bind("AvtaleTypeID") %>' />
                <br />
                KategoriID:
                <asp:Label ID="KategoriIDLabel" runat="server" Text='<%# Bind("KategoriID") %>' />
                <br />
                FinansieringsselskapID:
                <asp:Label ID="FinansieringsselskapIDLabel" runat="server" Text='<%# Bind("FinansieringsselskapID") %>' />
                <br />
                LeverandørID:
                <asp:Label ID="LeverandørIDLabel" runat="server" Text='<%# Bind("LeverandørID") %>' />
                <br />
                AnsvarligID:
                <asp:Label ID="AnsvarligIDLabel" runat="server" Text='<%# Bind("AnsvarligID") %>' />
                <br />
                LokasjonID:
                <asp:Label ID="LokasjonIDLabel" runat="server" Text='<%# Bind("LokasjonID") %>' />
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

            </ItemTemplate>
           
        </asp:FormView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>' SelectCommand="SELECT [Beskrivelse], [AvtaleTypeID], [KategoriID], [FinansieringsselskapID], [LeverandørID], [AnsvarligID], [LokasjonID], [FornyAuto], [AnsattRegistrert], [SluttDato], [StartDato], [stage] FROM [Avtaler]" 
            UpdateCommand="UPDATE [Avtaler]
   SET [Beskrivelse] = Beskrivelse
      ,[AvtaleTypeID] = AvtaleTypeID
      ,[KategoriID] = KategoriID
      ,[FinansieringsselskapID] = FinansieringsselskapID
      ,[LeverandørID] = LeverandørID
      ,[AnsvarligID] = AnsvarligID
      ,[LokasjonID] = LokasjonID
      ,[stage] = stage
      ,[StartDato] = StartDato
      ,[SluttDato] = SluttDato
      ,[AnsattRegistrert] = AnsattRegistrert
      ,[FornyAuto] = FornyAuto
 WHERE Search Conditions" UpdateCommandType="Text">
        </asp:SqlDataSource>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Start redigering" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Lagre endringer" />
            <br />
            <asp:Label ID="Label2" runat="server" />
            </div>
    </div>
    <div class="links">
    </div>
</asp:Content>

