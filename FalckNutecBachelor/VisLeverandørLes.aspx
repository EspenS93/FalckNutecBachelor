<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="VisLeverandørLes.aspx.cs" Inherits="FalckNutecBachelor.VisLeverandørLes" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>Leverandør</h1>
        <div>
         
        

            <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    Navn:
                    <asp:Label ID="NavnLabel" runat="server" Text='<%# Eval("Navn") %>' />
                    <br />
                    UnderleverandørAv:
                    <asp:Label ID="UnderleverandørAvLabel" runat="server" Text='<%# Eval("UnderleverandørAv") %>' />
                    <br />
                    Organisasjonsnr:
                    <asp:Label ID="OrganisasjonsnrLabel" runat="server" Text='<%# Eval("Organisasjonsnr") %>' />
                    <br />
                    Adresse:
                    <asp:Label ID="AdresseLabel" runat="server" Text='<%# Eval("Adresse") %>' />
                    <br />
                    Postadresse:
                    <asp:Label ID="PostadresseLabel" runat="server" Text='<%# Eval("Postadresse") %>' />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="HentEnLeverandør" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:QueryStringParameter Name="LeverandørID" QueryStringField="LeverandørID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
         
        

            </div>
    </div>
    <div class="links">
    </div></asp:Content>

