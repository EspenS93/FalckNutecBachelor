<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site.Master" CodeBehind="VisAvtale.aspx.cs" Inherits="FalckNutecBachelor.VisAvtale"  EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1>Avtale</h1>
        <div>
         
        

            <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    navn:
                    <asp:Label ID="navnLabel" runat="server" Text='<%# Eval("navn") %>' />
                    <br />
                    Arkivreferat:
                    <asp:Label ID="ArkivreferatLabel" runat="server" Text='<%# Eval("Arkivreferat") %>' />
                    <br />
                    Arkivmappe:
                    <asp:Label ID="ArkivmappeLabel" runat="server" Text='<%# Eval("Arkivmappe") %>' />
                    <br />
                    AvtaleType:
                    <asp:Label ID="AvtaleTypeLabel" runat="server" Text='<%# Eval("AvtaleType") %>' />
                    <br />
                    Kategori:
                    <asp:Label ID="KategoriLabel" runat="server" Text='<%# Eval("Kategori") %>' />
                    <br />
                    Beskrivelse:
                    <asp:Label ID="BeskrivelseLabel" runat="server" Text='<%# Eval("Beskrivelse") %>' />
                    <br />
                    Finansieringsselskap:
                    <asp:Label ID="FinansieringsselskapLabel" runat="server" Text='<%# Eval("Finansieringsselskap") %>' />
                    <br />
                    Leverandør:
                    <asp:Label ID="LeverandørLabel" runat="server" Text='<%# Eval("Leverandør") %>' />
                    <br />
                    Ansvarlig:
                    <asp:Label ID="AnsvarligLabel" runat="server" Text='<%# Eval("Ansvarlig") %>' />
                    <br />
                    Lokasjon:
                    <asp:Label ID="LokasjonLabel" runat="server" Text='<%# Eval("Lokasjon") %>' />
                    <br />
                    Status:
                    <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                    <br />
                    StartDato:
                    <asp:Label ID="StartDatoLabel" runat="server" Text='<%# Eval("StartDato") %>' />
                    <br />
                    SluttDato:
                    <asp:Label ID="SluttDatoLabel" runat="server" Text='<%# Eval("SluttDato") %>' />
                    <br />
                    Registrert Av:
                    <asp:Label ID="Registrert_AvLabel" runat="server" Text='<%# Eval("[Registrert Av]") %>' />
                    <br />
                    FornyAuto:
                    <asp:Label ID="FornyAutoLabel" runat="server" Text='<%# Eval("FornyAuto") %>' />
                    <br />
                    PDF:
                    <asp:Label ID="PDFLabel" runat="server" Text='<%# Eval("PDF") %>' />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="HentEnAvtaleOgPDF" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:QueryStringParameter Name="AvtaleID" QueryStringField="AvtaleID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
         
        

            </div>
        <div>
            <h2>Memo: </h2>

            <br />

        </div>
    </div>
    <div class="links">
    </div>
</asp:Content>

