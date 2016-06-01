<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LagNyFinansieringsselskap.aspx.cs" Inherits="FalckNutecBachelor.LagNyFinansieringsselskap" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <head>
        <title>Ny Finansieringsselskap</title>
    </head>

    <form id="form1">
        <div>
            <h1>Nytt Finansieringsselskap </h1>
            <p>Navn:
            <asp:TextBox ID="NavnText" runat="server"></asp:TextBox>
            </p>
            <p>Adresse:
            <asp:Textbox ID="AdresseText" runat="server"></asp:Textbox>
            </p>
            <p>Postadresse:
            <asp:TextBox ID="PostadresseText" runat="server"></asp:TextBox>
            </p>
            <p>Kontaktperson:
            <asp:TextBox ID="KontaktText" runat="server"></asp:TextBox>
            </p>
            <p>Telefonnr:
            <asp:TextBox ID="TLFText" runat="server"></asp:TextBox>
            </p>
            <p>Telefaks:
            <asp:TextBox ID="FaksText" runat="server"></asp:TextBox>
            </p>
            <p>Epost:
            <asp:TextBox ID="EpostText" runat="server"></asp:TextBox>
            </p>
            <asp:Button ID="SubmitKnapp" runat="server" Text="Legg til Finansieringsselskap" OnClick="SubmitKnapp_Click"></asp:Button>
            <br />
            <asp:Label ID="svar" runat="server" Text="" Visible="false"></asp:Label>
        </div>
    </form>

</asp:Content>
