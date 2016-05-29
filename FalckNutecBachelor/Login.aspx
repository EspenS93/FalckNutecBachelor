<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FalckNutecBachelor.Login"EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1>&nbsp;</h1>
        <h1>Velkommen til Falck Nutec AS</h1>
        <p class="lead">Her kan du logge inn og registrere avtaler for bedriften.</p>
        <form>
            <asp:Login ID="Login1" runat="server" OnAuthenticate="Login_Authenticate">
            </asp:Login>
        </form>
        <p>Glemt passord osv...</p>
        <p></p>
    </div>
    <div class="links">
    </div>

</asp:Content>
