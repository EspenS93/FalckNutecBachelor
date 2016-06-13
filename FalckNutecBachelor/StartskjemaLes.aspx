<%@ Page Language="C#" MasterPageFile="~/Site.Master" Title="Startskjema" AutoEventWireup="true" CodeBehind="StartskjemaLes.aspx.cs" Inherits="FalckNutecBachelor.StartskjemaLes" EnableEventValidation="false" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <head>
        <title>Startskjema</title>
    </head>

    <form id="form1">
        <h1>Startskjema</h1>
        <div>
            <p>Velg registeringsskjema</p>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Avtaler" PostBackUrl="~/LagNyAvtale.aspx" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Leverandører" PostBackUrl="~/LagNyLeverandør.aspx" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Finansieringsselskap" PostBackUrl="~/LagNyFinansieringsselskap.aspx" />
            </p>
        </div>
        <div>
            <h3>Avtaler</h3>
        <div id="sokefelt" style="border: thick solid #000000; background-color: #999999; width: 443px;">
            <asp:Button ID="apneSokeFelt" Text="Søk" runat="server" OnClick="apneSokeFelt_Click" />
            <asp:DropDownList ID="DropDownList3" runat="server" Visible="false">
                </asp:DropDownList>
            <asp:DropDownList ID="DropDownList4" runat="server" Visible="false">
                </asp:DropDownList>
            <asp:DropDownList ID="DropDownList5" runat="server" Visible="false">
                </asp:DropDownList>
            <asp:DropDownList ID="DropDownList6" runat="server" Visible="false">
                </asp:DropDownList>
            <asp:CheckBox ID="AlleCheckbox" runat="server" Visible="false" Text="Alle Avtaler" OnCheckedChanged="AlleCheckbox_CheckedChanged" AutoPostBack="True"/>
            <asp:Button ID="lukkeSokeFelt" runat="server" Text="X" OnClick="lukkeSokeFelt_Click" Visible="false" />
        </div>
        <asp:GridView ID="avtaler2" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="ID" OnSelectedIndexChanged="avtaler2_SelectedIndexChanged" OnRowDataBound = "OnRowDataBound" AllowSorting="True" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="Navn" HeaderText="Navn" SortExpression="Navn" />
                <asp:BoundField DataField="Ansvarlig" HeaderText="Ansvarlig" SortExpression="Ansvarlig" />
                <asp:BoundField DataField="SluttDato" HeaderText="SluttDato" SortExpression="SluttDato" />
                <asp:CheckBoxField DataField="FornyAuto" HeaderText="FornyAuto" SortExpression="FornyAuto" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="HentMineAvtaler" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:Parameter Name="AnsattID" Type="Int32" />
                </SelectParameters>         
            </asp:SqlDataSource>
            <%SqlDataSource4.SelectParameters["AnsattID"].DefaultValue = WebMatrix.WebData.WebSecurity.CurrentUserId.ToString(); ;
                SqlDataSource4.DataBind();avtaler2.DataBind(); %>
        <asp:Button ID="AvtaleKnapp" runat="server" Text="Hent Avtale" OnClick="AvtaleKnapp_Click"/>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="HentAvtaler" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </div>
    </form>
</asp:Content>
