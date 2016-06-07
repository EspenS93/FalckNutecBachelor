<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="VisFinansieringsselskap.aspx.cs" Inherits="FalckNutecBachelor.VisFinansieringsselskap" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1>Finansieringsselskap</h1>
        <div>
         
        

            <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    Navn:
                    <asp:Label ID="NavnLabel" runat="server" Text='<%# Eval("Navn") %>' />
                    <br />
                    Adresse:
                    <asp:Label ID="AdresseLabel" runat="server" Text='<%# Eval("Adresse") %>' />
                    <br />
                    Postnr:
                    <asp:Label ID="PostnrLabel" runat="server" Text='<%# Eval("Postnr") %>' />
                    <br />
                    Poststed:
                    <asp:Label ID="PoststedLabel" runat="server" Text='<%# Eval("Poststed") %>' />
                    <br />
                    Kontaktperson:
                    <asp:Label ID="KontaktpersonLabel" runat="server" Text='<%# Eval("Kontaktperson") %>' />
                    <br />
                    Telefonnr:
                    <asp:Label ID="TelefonnrLabel" runat="server" Text='<%# Eval("Telefonnr") %>' />
                    <br />
                    Telefaks:
                    <asp:Label ID="TelefaksLabel" runat="server" Text='<%# Eval("Telefaks") %>' />
                    <br />
                    Epost:
                    <asp:Label ID="EpostLabel" runat="server" Text='<%# Eval("Epost") %>' />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
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

