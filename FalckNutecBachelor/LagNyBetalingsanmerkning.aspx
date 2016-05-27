<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LagNyBetalingsanmerkning.aspx.cs" Inherits="FalckNutecBachelor.LagNyBetalingsanmerkning" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Ny Betalingsanmerking</h1>

            <p>Legg til Beskrivelse:</p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <p>Legg til Dato:</p>
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>            
            <p>Legg til Leverandør:</p>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Navn" DataValueField="Navn"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [Navn] FROM [Leverandør]"></asp:SqlDataSource>
            <br /><br />
            <asp:Button ID="Button1" runat="server" Text="legg til avtaletype" />
            <asp:Label ID="svar" runat="server" Text="" Visible="false"></asp:Label>
        </div>
    </form>
</body>
</html>
