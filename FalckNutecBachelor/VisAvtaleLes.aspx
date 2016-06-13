<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="VisAvtaleLes.aspx.cs" Inherits="FalckNutecBachelor.VisAvtaleLes" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1>Avtale</h1>
        <div>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    Navn:
                    <asp:Label ID="BeskrivelseLabel" runat="server" Text='<%# Eval("Navn") %>' />
                    <br />
                    AvtaleType:
                    <asp:Label ID="AvtaleTypeLabel" runat="server" Text='<%# Eval("AvtaleType") %>' />
                    <br />
                    Kategori:
                    <asp:Label ID="KategoriLabel" runat="server" Text='<%# Eval("Kategori") %>' />
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
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:GridView ID="GridView1" runat="server" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
                AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                <AlternatingRowStyle BackColor="White" ForeColor="#000000"></AlternatingRowStyle>
                <Columns>
                    <asp:BoundField DataField="Navn" HeaderText="File Name" />
                    <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="DownloadFile" CommandArgument='<%# Eval("ID") %>'></asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:TemplateField>
                </Columns>

                <HeaderStyle BackColor="#3AC0F2" ForeColor="White"></HeaderStyle>

                <RowStyle BackColor="#A1DCF2"></RowStyle>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="HentPDF" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:QueryStringParameter Name="AvtaleID" QueryStringField="AvtaleID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="HentEnAvtale" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:QueryStringParameter Name="AvtaleID" QueryStringField="AvtaleID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div>
            <h2>Memo: </h2>
            <asp:DataList ID="memo" runat="server" DataSourceID="SqlDataSource2" BorderColor="Black" GridLines="Both">
                <ItemTemplate>
                    <asp:Label ID="FornavnLabel" runat="server" Text='<%# Eval("Fornavn") %>' />
                    &nbsp
                   <asp:Label ID="EtternavnLabel" runat="server" Text='<%# Eval("Etternavn") %>' />
                    &nbsp
                   <asp:Label ID="datetimeLabel" runat="server" Text='<%# Eval("datetime") %>' />
                    <br />
                    <asp:Label ID="MemoLabel" runat="server" Text='<%# Eval("Memo") %>' />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="HentMemo" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:QueryStringParameter Name="AvtaleID" QueryStringField="AvtaleID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />

        </div>
    </div>
    <div class="links">
    </div>
</asp:Content>

