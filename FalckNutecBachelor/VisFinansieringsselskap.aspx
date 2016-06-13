<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="VisFinansieringsselskap.aspx.cs" Inherits="FalckNutecBachelor.VisFinansieringsselskap" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1>Finansieringsselskap</h1>
        <div>
         
        

            <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    Navn:
                    <asp:TextBox ID="NavnLabel" runat="server" Text='<%# Eval("Navn") %>' AutoPostBack="true" OnTextChanged="DataList1_SelectedIndexChanged" />
                    <br />
                    Adresse:
                    <asp:TextBox ID="AdresseLabel" runat="server" Text='<%# Eval("Adresse") %>' AutoPostBack="true" OnTextChanged="DataList1_SelectedIndexChanged" />
                    <br />
                    Postadresse:
                    <asp:TextBox ID="PostadresseLabel" runat="server" Text='<%# Eval("Postadresse") %>' AutoPostBack="true" OnTextChanged="DataList1_SelectedIndexChanged" />
                    <br />
                    Kontaktperson:
                    <asp:TextBox ID="KontaktpersonLabel" runat="server" Text='<%# Eval("Kontaktperson") %>' AutoPostBack="true" OnTextChanged="DataList1_SelectedIndexChanged" />
                    <br />
                    Telefonnr:
                    <asp:TextBox ID="TelefonnrLabel" runat="server" Text='<%# Eval("Telefonnr") %>' AutoPostBack="true" OnTextChanged="DataList1_SelectedIndexChanged"/>
                    <br />
                    Telefaks:
                    <asp:TextBox ID="TelefaksLabel" runat="server" Text='<%# Eval("Telefaks") %>' AutoPostBack="true" OnTextChanged="DataList1_SelectedIndexChanged"/>
                    <br />
                    Epost:
                    <asp:TextBox ID="EpostLabel" runat="server" Text='<%# Eval("Epost") %>' AutoPostBack="true" OnTextChanged="DataList1_SelectedIndexChanged"/>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:Button ID="EndreKnapp" runat="server" Visible="false" Text="Endre" OnClick="EndreKnapp_Click" />
            <asp:Label ID="Melding" runat="server" Visible="false"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="HentEtFinansieringsselskap" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:QueryStringParameter Name="FinansieringsselskapID" QueryStringField="FinansieringsselskapID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
         
        

            </div>
    </div>
    <div class="links">
    </div>
</asp:Content>

