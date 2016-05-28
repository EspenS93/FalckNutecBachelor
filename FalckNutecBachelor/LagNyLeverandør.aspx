<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LagNyLeverandør.aspx.cs" Inherits="FalckNutecBachelor.LagNyLeverandør" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <head>
        <title>Ny Leverandør</title>
    </head>

    <form id="form1">
        <div>
            <h1>Ny leverandør </h1>
            <p>Navn:</p>
            <asp:TextBox ID="NavnText" runat="server"></asp:TextBox>
            <br />
            <p>Underleverandør:</p>
            <asp:DropDownList ID="ULevDDL" runat="server" DataSourceID="SqlDataSource1" DataTextField="Navn" DataValueField="Navn"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>" SelectCommand="SELECT [Navn] FROM [Leverandør]"></asp:SqlDataSource>
            <br />
            <p>Organisasjonsnr:
            <asp:TextBox ID="OrgNrText" runat="server"></asp:TextBox>
            </p>
            <p>Adresse:
            <asp:TextBox ID="AdresseText" runat="server"></asp:TextBox>
            </p>
            <p>Postadresse:
            <asp:TextBox ID="PostText" runat="server"></asp:TextBox>
            </p>
            <p>Kontaktperson:
            <asp:TextBox ID="KontaktText" runat="server"></asp:TextBox>
            </p>
            <p>Telefonnr:
            <asp:TextBox ID="TLFText" runat="server"></asp:TextBox>
            </p>
            <p>Telefaks:
            <asp:TextBox ID="FaxText" runat="server"></asp:TextBox>
            </p>
            <p>Epost:
            <asp:TextBox ID="EpostText" runat="server"></asp:TextBox>
            </p>
            <asp:Button ID="SubmitKnapp" runat="server" Text="Legg til leverandør" OnClick="SubmitKnapp_Click"></asp:Button>
            <br />
            <asp:Label ID="svar" runat="server" Text="" Visible="false"></asp:Label>
        </div>
    </form>

</asp:Content>
