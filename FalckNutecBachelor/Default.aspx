<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Oving1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1>&nbsp;</h1>
        <h1>Velkommen til Falck Nutec AS</h1>
        <p class="lead">Her kan du logge inn og registrere avtaler for bedriften.</p>
        <asp:Login ID="Login" runat="server" DestinationPageUrl="terms.aspx" Font-Size="12pt" Height="120px" Width="500px">
            <LoginButtonStyle Height="50px" Width="100px" />
            <TextBoxStyle Height="30px" Width="200px" />
            </asp:Login>
        <p>&nbsp;</p>
        <p>Glemt passord osv...</p>
        <p></p>
    </div>
    <div class ="links">

        </div>

</asp:Content>
