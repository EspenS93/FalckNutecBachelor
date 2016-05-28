<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LagNyAvtale.aspx.cs" Inherits="FalckNutecBachelor.LagNyAvtale" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <head>
        <title>Ny Avtale</title>
    </head>

    <form id="form1">
        <div>
            <h1>Ny Avtale </h1>
            <p>Navn:
            <asp:TextBox ID="NavnText" runat="server"></asp:TextBox>
            </p>
            <p>Arkivreferat:
                <asp:TextBox ID="ArkivRef" MaxLength="1" runat="server"></asp:TextBox>
            </p>
            <p>Arkivmappe:
            <asp:TextBox ID="ArkivMappe" MaxLength="1" runat="server"></asp:TextBox>
            </p>
            <p>
            Avtaletype:
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="AvtaleType" DataValueField="AvtaleType">
                </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [AvtaleType] FROM [Avtaletype]"></asp:SqlDataSource>
            </p>
            <p>
            Kategori:
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Kategori" DataValueField="Kategori" >
                </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [Kategori] FROM [Kategorier]"></asp:SqlDataSource>
            </p>
            <p>Beskrivelse:
            <asp:TextBox ID="Beskrivelse" runat="server"></asp:TextBox>
            </p>
            <p>
            Finansieringsselskap:
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="Navn" DataValueField="Navn" >
                </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [Navn] FROM [Finansieringsselskap]"></asp:SqlDataSource>
            </p>
            <p>
            Leverandør:
                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="Navn" DataValueField="Navn">
                </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [Navn] FROM [Leverandør]"></asp:SqlDataSource>
            </p>
            <p>
            Ansvarlig:
                <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource5" DataTextField="Etternavn" DataValueField="Etternavn">
                </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [Etternavn] FROM [Ansatte]"></asp:SqlDataSource>
            </p>
            <p>
            Lokasjon:
                <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource6" DataTextField="Lokasjon" DataValueField="Lokasjon">
                </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [Lokasjon] FROM [Lokasjon]"></asp:SqlDataSource>
              </p>
            <p>Status:
            <asp:TextBox ID="Status" runat="server"></asp:TextBox>
            </p>
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>  
            <p>
            Velg ansatt:
                <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource7" DataTextField="Etternavn" DataValueField="Etternavn">
                </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [Etternavn] FROM [Ansatte]"></asp:SqlDataSource>
              </p>      
            <p>Autoforny
            <asp:CheckBox ID="CheckBox1" runat="server" />
            </p>
           <p>PDF: <asp:FileUpload ID="pdf" runat="server" />
            </p>
            <asp:Button ID="SubmitKnapp" runat="server" Text="Legg til avtale" OnClick="SubmitKnapp_Click"></asp:Button>
            <br />
            <asp:Label ID="svar" runat="server" Text="" Visible="false"></asp:Label>
        </div>
    </form>

</asp:Content>
