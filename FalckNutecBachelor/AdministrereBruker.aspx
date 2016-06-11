<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site.Master" CodeBehind="AdministrereBruker.aspx.cs" Inherits="FalckNutecBachelor.AdministrereBruker"  EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1>Administrer Bruker</h1>
        <div>
         
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                <EditItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"  />
                <ItemTemplate>
                    NOnr:
                    <asp:Label ID="NOnrLabel" runat="server" Text='<%# Eval("NOnr") %>' />
                    <br />
                    Fornavn:
                    <asp:Label ID="FornavnLabel" runat="server" Text='<%# Eval("Fornavn") %>'/>
                    <br />
                    Etternavn:
                    <asp:Label ID="EtternavnLabel" runat="server" Text='<%# Eval("Etternavn") %>' />
                    <br />
                    Mail:
                    <asp:TextBox ID="MailLabel" runat="server" Text='<%# Eval("Mail") %>' AutoPostBack="true" OnTextChanged="DataList1_SelectedIndexChanged" />
                    <br />
                    Seksjon:
                    <asp:DropDownList ID="SeksjonLabel" runat="server" DataTextField="Seksjon" DataSourceID="SqlDataSource2" DataValueField="Seksjon" SelectedValue='<%# Eval("Seksjon") %>' AutoPostBack="true" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" AppendDataBoundItems="True"/>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [ID], [Seksjon] FROM [Seksjoner]" ></asp:SqlDataSource>
                    <br />
                    Vara 1:
                    <asp:DropDownList ID="Fornavn1Label" runat="server" SelectedValue='<%# Eval("Fornavn1") %>' DataSourceID="SqlDataSource3" DataTextField="Fornavn" DataValueField="Fornavn" AutoPostBack="true" OnSelectedIndexChanged="DataList1_SelectedIndexChanged"/>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [Fornavn] FROM [Ansatte]"></asp:SqlDataSource>
                    <br />
                    Vara 2:
                    <asp:DropDownList ID="Fornavn2Label" runat="server" SelectedValue='<%# Eval("Fornavn2") %>' DataSourceID="SqlDataSource3" DataTextField="Fornavn" DataValueField="Fornavn" AutoPostBack="true" OnSelectedIndexChanged="DataList1_SelectedIndexChanged"/>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <p>Nårverende Passord: <asp:Textbox ID="pass" runat="server" TextMode="Password"></asp:Textbox></p>
            <p>Nytt Passord: <asp:Textbox ID="NyPass1" runat="server" TextMode="Password"></asp:Textbox></p>
            <p>Nytt Passord igjen: <asp:Textbox ID="NyPass2" runat="server" TextMode="Password"></asp:Textbox></p>
            <asp:Button ID="EndreKnapp" runat="server" Visible="false" Text="Endre" OnClick="EndreKnapp_Click" />
            <asp:Label ID="Melding" runat="server" Visible="false"></asp:Label>
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

