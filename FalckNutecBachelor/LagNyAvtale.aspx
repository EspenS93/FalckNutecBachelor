<%@ Page Language="C#" Title="Ny Avtale" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LagNyAvtale.aspx.cs" Inherits="FalckNutecBachelor.LagNyAvtale" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


        <div>
            <h1>Ny Avtale </h1>
            <table>
                <tr>
            <td style="width: 150px"><p style="width: 150px; text-align: left;">Beskrivelse:</p></td>
            <td><asp:TextBox ID="NavnText" runat="server"></asp:TextBox></td>
                    </tr>
            <tr>
            <td style="width: 150px"><p style="width: 150px; text-align: left;">Leverandør:</p></td>
                <td><asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="Navn" DataValueField="Navn">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [Navn] FROM [Leverandør]"></asp:SqlDataSource></td>
                </tr>
            <tr>
            <td style="width: 150px"><p style="width: 150px; text-align: left;">Finansieringsselskap:</p></td>
                <td><asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="Navn" DataValueField="Navn">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [Navn] FROM [Finansieringsselskap]"></asp:SqlDataSource></td>
                </tr>
            <tr>
            <td style="width: 150px"><p style="width: 150px; text-align: left;">Ansvarlig:</p></td>
                <td><asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource5" DataTextField="Etternavn" DataValueField="Etternavn">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [Etternavn] FROM [Ansatte]"></asp:SqlDataSource></td>
                </tr>
            <tr>
            <td style="width: 150px"><p style="width: 150px; text-align: left;">Lokasjon:</p></td>
                <td><asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource6" DataTextField="Lokasjon" DataValueField="Lokasjon">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [Lokasjon] FROM [Lokasjon]"></asp:SqlDataSource></td>
                </tr>
            <tr>
            <td style="width: 150px"><p style="width: 150px; text-align: left;">Seksjon:</p></td>
                <td><asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource7" DataTextField="Seksjon" DataValueField="Seksjon">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [Seksjon] FROM [Seksjoner]"></asp:SqlDataSource></td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <table>
                <tr>
            <td style="width: 150px"><p style="text-align: left; width: 150px">Avtaletype:</p></td>
                <td><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="AvtaleType" DataValueField="AvtaleType">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [AvtaleType] FROM [Avtaletype]"></asp:SqlDataSource></td>
                    </tr>
                <tr>
            <td style="width: 150px"><p style="text-align: left; width: 150px">Kategori:</p></td>
                <td><asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Kategori" DataValueField="Kategori">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [Kategori] FROM [Kategorier]"></asp:SqlDataSource></td>
                    </tr>
               </table>
               <p style="width: 650px">StartDato:
            <asp:TextBox ID="StartDatoText" runat="server"></asp:TextBox>
                <asp:ImageButton ID="KalenderKnapp" runat="server" OnClick="KalenderKnapp_Click" ImageUrl="~/calendar_blank.png" />
                &nbsp;SluttDato:
            <asp:TextBox ID="SluttDatoText" runat="server"></asp:TextBox><asp:ImageButton ID="KalenderKnapp2" runat="server" OnClick="KalenderKnapp2_Click" ImageUrl="~/calendar_blank.png" />
                <asp:Calendar ID="Calendar1" Visible="False" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" OnSelectionChanged="KalenderTrykk1" CellPadding="1" DayNameFormat="Shortest">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
                <asp:Calendar ID="Calendar2" Visible="False" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" OnSelectionChanged="KalenderTrykk2" CellPadding="1" DayNameFormat="Shortest">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            </p>
            <table>
                <tr>
            <td style="width: 150px"><p style="text-align: left; width: 150px">Status:</p></td>
                <td><asp:DropDownList ID="StatusList" runat="server">
                    <asp:ListItem>Aktiv</asp:ListItem>
                    <asp:ListItem Value="TrengerTilsyn">Trenger tilsyn</asp:ListItem>
                    <asp:ListItem>Avsluttet</asp:ListItem>
                </asp:DropDownList></td>
                    </tr>
                <tr>
            <td style="width: 150px"><p style="width: 150px; text-align: left">Autoforny</p></td>
            <td><asp:CheckBox ID="CheckBox1" runat="server" /></td>
                    </tr>
            </table>
            <br />
            <br />
            <br />
            <p>
                PDF:
                <asp:FileUpload ID="pdf" runat="server" AllowMultiple="true" />
            </p>
            <div>
                <p>Skriv Memo:</p>
                <asp:TextBox ID="SkrivMemo" runat="server" TextMode="MultiLine"></asp:TextBox>
            </div>
            <asp:Button ID="SubmitKnapp" runat="server" Text="Legg til avtale" OnClick="SubmitKnapp_Click"></asp:Button>
            <br />
            <asp:Label ID="svar" runat="server" Text="" Visible="false"></asp:Label>
        </div>

</asp:Content>
