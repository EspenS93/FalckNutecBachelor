<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="VisLeverandør.aspx.cs" Inherits="FalckNutecBachelor.VisLeverandør" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>Leverandør</h1>
        <div>
         
        

            <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    Navn:
                    <asp:TextBox ID="NavnLabel" runat="server" Text='<%# Eval("Navn") %>' />
                    <br />
                    UnderleverandørAv:
                    <asp:DropDownList ID="UnderleverandørAvLabel" runat="server" Text='<%# Eval("UnderleverandørAv") %>' DataSourceID="SqlDataSource2" DataTextField="Navn" DataValueField="ID" />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [ID], [Navn] FROM [Leverandør]"></asp:SqlDataSource>
                    <br />
                    Organisasjonsnr:
                   <asp:TextBox ID="OrganisasjonsnrLabel" runat="server" Text='<%# Eval("Organisasjonsnr") %>' />
                    <br />
                    Adresse:
                   <asp:TextBox ID="AdresseLabel" runat="server" Text='<%# Eval("Adresse") %>' />
                    <br />
                    Postadresse:
                    <asp:TextBox ID="PostadresseLabel" runat="server" Text='<%# Eval("Postadresse") %>' />
                    <br />
                    Kontaktperson:
                   <asp:TextBox ID="KontaktpersonLabel" runat="server" Text='<%# Eval("Kontaktperson") %>' />
                    <br />
                    Telefonnr:
                    <asp:TextBox ID="TelefonnrLabel" runat="server" Text='<%# Eval("Telefonnr") %>' />
                    <br />
                    Telefaks:
                    <asp:TextBox ID="TelefaksLabel" runat="server" Text='<%# Eval("Telefaks") %>' />
                    <br />
                    Epost:
                    <asp:TextBox ID="EpostLabel" runat="server" Text='<%# Eval("Epost") %>' />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:Button ID="EndreKnapp" runat="server" Visible="false" Text="Endre" OnClick="EndreKnapp_Click" />
            <asp:Label ID="Melding" runat="server" Visible="false"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="HentEnLeverandør" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:QueryStringParameter Name="LeverandørID" QueryStringField="LeverandørID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
         
        

            </div>
    </div>
    <div class="links">
    </div></asp:Content>

