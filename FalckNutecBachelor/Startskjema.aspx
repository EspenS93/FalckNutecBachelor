<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Startskjema.aspx.cs" Inherits="Oving1.Startskjema" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Startskjema</title>
</head>
<body>
    <form id="form1" runat="server">
    <h1>Startskjema</h1>
        <p><asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/Pictures/FalckN_logo_pos_trans.png" style="margin-right: 0px" /></p>
    <div>
    <p>Velg registeringsskjema</p>
    <p><asp:Button ID="Button1" runat="server" Text="Avtaler" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Leverandører" /></p>

        <h3>Rapporter</h3>
        <p><asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Velg ett eller anna</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>Seksjon/Kategori/Ansatt</asp:ListItem>
            </asp:DropDownList></p>

    </div>
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Hjem</asp:HyperLink>
        </div>
    </form>
</body>
</html>
