<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Oving1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1>&nbsp;</h1>
        <h1>Velkommen til Falck Nutec AS</h1>
        <p>
            <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/Pictures/FalckN_logo_pos_trans.png" style="margin-right: 0px" />
        </p>
        <p class="lead">Her kan du logge inn og registrere avtaler for bedriften.</p>
        <p><asp:Login ID="Login1" runat="server"></asp:Login></p>
        <p>&nbsp;</p>
        <p>Glemt passord osv...</p>
        <p></p>
    </div>
    <div class ="links">

        </div>

</asp:Content>
