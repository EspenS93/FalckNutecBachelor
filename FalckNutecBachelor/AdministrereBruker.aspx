<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site.Master" CodeBehind="AdministrereBruker.aspx.cs" Inherits="FalckNutecBachelor.AdministrereBruker"  EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1>Administrer Bruker</h1>
        <div>
         
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                <EditItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"  />
                <ItemTemplate>
                    NOnr:
                    <asp:TextBox ID="NOnrLabel" runat="server" Text='<%# Eval("NOnr") %>' />
                    <br />
                    Fornavn:
                    <asp:TextBox ID="FornavnLabel" runat="server" Text='<%# Eval("Fornavn") %>' />
                    <br />
                    Etternavn:
                    <asp:TextBox ID="EtternavnLabel" runat="server" Text='<%# Eval("Etternavn") %>' />
                    <br />
                    Mail:
                    <asp:TextBox ID="MailLabel" runat="server" Text='<%# Eval("Mail") %>' />
                    <br />
                    Seksjon:
                    <asp:TextBox ID="SeksjonLabel" runat="server" Text='<%# Eval("Seksjon") %>' />
                    <br />
                    Vara 1:
                    <asp:TextBox ID="Fornavn1Label" runat="server" Text='<%# Eval("Fornavn1") %>' />
                    <br />
                    Vara 2:
                    <asp:TextBox ID="Fornavn2Label" runat="server" Text='<%# Eval("Fornavn2") %>' />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="HentAnsatt" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:QueryStringParameter Name="AnsattID" QueryStringField="AnsattID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            </div>
        </div>
    <div class="links">
    </div>
</asp:Content>

