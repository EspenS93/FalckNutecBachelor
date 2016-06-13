<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="VisAvtale.aspx.cs" Inherits="FalckNutecBachelor.VisAvtale" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1>Avtale</h1>
        <div>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1">
                <EditItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"  />
                <ItemTemplate>
                    Beskrivelse:
                    <asp:TextBox ID="BeskrivelseLabel" runat="server" Text='<%# Eval("Beskrivelse") %>' AutoPostBack="true" OnTextChanged="DataList1_SelectedIndexChanged" />
                    <br />
                    AvtaleTypeID:
                    <asp:DropDownList ID="AvtaleTypeIDLabel" runat="server" Text='<%# Eval("AvtaleTypeID") %>' DataSourceID="SqlDataSource5" DataTextField="AvtaleType" DataValueField="ID" AutoPostBack="true" OnTextChanged="DataList1_SelectedIndexChanged" />
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [ID], [AvtaleType] FROM [AvtaleType]"></asp:SqlDataSource>
                    <br />
                    KategoriID:
                    <asp:DropDownList ID="KategoriIDLabel" runat="server" Text='<%# Eval("KategoriID") %>' DataSourceID="SqlDataSource6" DataTextField="Kategori" DataValueField="ID" AutoPostBack="true" OnSelectedIndexChanged="DataList1_SelectedIndexChanged"/>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [ID], [Kategori] FROM [Kategorier]"></asp:SqlDataSource>
                    <br />
                    LeverandørID:
                    <asp:DropDownList ID="LeverandørIDLabel" runat="server" Text='<%# Eval("LeverandørID") %>' DataSourceID="SqlDataSource7" DataTextField="Navn" DataValueField="ID" AutoPostBack="true" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" />
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [ID], [Navn] FROM [Leverandør]"></asp:SqlDataSource>
                    <br />
                    FinansieringsselskapID:
                    <asp:DropDownList ID="FinansieringsselskapIDLabel" runat="server" Text='<%# Eval("FinansieringsselskapID") %>' DataSourceID="SqlDataSource8" DataTextField="Navn" DataValueField="ID" AutoPostBack="true" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" />
                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [ID], [Navn] FROM [Finansieringsselskap]"></asp:SqlDataSource>
                    <br />
                    AnsvarligID:
                    <asp:DropDownList ID="AnsvarligIDLabel" runat="server" Text='<%# Eval("AnsvarligID") %>' DataSourceID="SqlDataSource9" DataTextField="Column1" DataValueField="ID" AutoPostBack="true" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" />
                    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [ID], (SELECT [Fornavn]+', '+ [Etternavn]) FROM [Ansatte]"></asp:SqlDataSource>
                    <br />
                    LokasjonID:
                    <asp:DropDownList ID="LokasjonIDLabel" runat="server" Text='<%# Eval("LokasjonID") %>' DataSourceID="SqlDataSource10" DataTextField="Lokasjon" DataValueField="ID" AutoPostBack="true" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" />
                    <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [ID], [Lokasjon] FROM [Lokasjon]"></asp:SqlDataSource>
                    <br />
                    stage:
                    <asp:DropDownList ID="stageLabel" runat="server" Text='<%# Eval("stage") %>' AutoPostBack="true" OnTextChanged="DataList1_SelectedIndexChanged" >
                        <asp:ListItem>Aktiv</asp:ListItem>
                        <asp:ListItem>Utgående</asp:ListItem>
                        <asp:ListItem>Utgått</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    StartDato:
                    <asp:TextBox ID="StartDatoLabel" runat="server" Text='<%# Eval("StartDato") %>' AutoPostBack="true" OnTextChanged="DataList1_SelectedIndexChanged" />
                    <br />
                    SluttDato:
                    <<asp:TextBox ID="SluttDatoLabel" runat="server" Text='<%# Eval("SluttDato") %>' AutoPostBack="true" OnTextChanged="DataList1_SelectedIndexChanged" />
                    <br />
                    AnsattRegistrert:
                   <asp:DropDownList ID="AnsattRegistrertLabel" runat="server" Text='<%# Eval("AnsattRegistrert") %>' DataSourceID="SqlDataSource9" DataTextField="Column1" DataValueField="ID" AutoPostBack="true" OnTextChanged="DataList1_SelectedIndexChanged" />
                    <br />
                    FornyAuto:
                    <asp:CheckBox ID="FornyAutoLabel" runat="server" Text='<%# Eval("FornyAuto") %>' AutoPostBack="true" OnTextChanged="DataList1_SelectedIndexChanged" />
                    <br />
                    Frist:
                    <asp:TextBox ID="FristLabel" runat="server" Text='<%# Eval("Frist") %>' AutoPostBack="true" OnTextChanged="DataList1_SelectedIndexChanged"/>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>

            
            <asp:Button ID="EndreKnapp" runat="server" Visible="false" Text="Endre" OnClick="EndreKnapp_Click" />
            <asp:Label ID="Melding" runat="server" Visible="false"></asp:Label>

            <asp:GridView ID="GridView1" runat="server" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
                AutoGenerateColumns="False" DataSourceID="SqlDataSource3" DataKeyNames="ID">
                <AlternatingRowStyle BackColor="White" ForeColor="#000000"></AlternatingRowStyle>
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="AvtaleID" HeaderText="AvtaleID" SortExpression="AvtaleID" />
                    <asp:BoundField DataField="Navn" HeaderText="Navn" SortExpression="Navn" />
                    <asp:BoundField DataField="ContentType" HeaderText="ContentType" SortExpression="ContentType" />
                </Columns>

                <HeaderStyle BackColor="#3AC0F2" ForeColor="White"></HeaderStyle>

                <RowStyle BackColor="#A1DCF2"></RowStyle>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT * FROM [PDF]" OnSelecting="SqlDataSource3_Selecting">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [Beskrivelse], [AvtaleTypeID], [KategoriID], [LeverandørID], [FinansieringsselskapID], [AnsvarligID], [LokasjonID], [stage], [StartDato], [SluttDato], [AnsattRegistrert], [FornyAuto], [Frist] FROM [Avtaler]" OnSelecting="SqlDataSource1_Selecting">
            </asp:SqlDataSource>
            

        </div>

        <div>
            <h2>Skriv Memo:</h2>
            <asp:TextBox ID="SkrivMemo" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:Button ID="MemoKnapp" runat="server" OnClick="MemoKnapp_Click" Text="Send" />
        </div>
        <div>
            <h2>Memo: </h2>
            <asp:DataList ID="memo" runat="server" DataSourceID="SqlDataSource2" BorderColor="Black" GridLines="Both" DataKeyField="ID">
                <ItemTemplate>
                    ID:
                   <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    AvtaleID: <asp:Label ID="AvtaleIDLabel" runat="server" Text='<%# Eval("AvtaleID") %>' />
                    <br />
                    AnsattID:
                   <asp:Label ID="AnsattIDLabel" runat="server" Text='<%# Eval("AnsattID") %>' />
                    <br />
                    Memo:
                    <asp:Label ID="MemoLabel" runat="server" Text='<%# Eval("Memo") %>' />
                    <br />
                    datetime:
                   <asp:Label ID="datetimeLabel" runat="server" Text='<%# Eval("datetime") %>' />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT * FROM [Memo]" OnSelecting="SqlDataSource2_Selecting">
            </asp:SqlDataSource>
            <br />

        </div>
    </div>
    <div class="links">
    </div>
</asp:Content>

