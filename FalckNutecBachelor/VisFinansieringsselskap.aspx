<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="VisFinansieringsselskap.aspx.cs" Inherits="FalckNutecBachelor.VisFinansieringsselskap" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1>&nbsp;</h1>
        <h1>Oversikt over finansieringsselskaper</h1>
        <p>Velg Finansieringsselskap</p>



        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Navn" DataValueField="Navn" AutoPostBack="True" >
            </asp:DropDownList>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1"  >
            <EditItemTemplate>
                Navn:
                <asp:TextBox ID="NavnTextBox" runat="server" Text='<%# Bind("Navn") %>' />
                <br />
                Adresse:
                <asp:TextBox ID="AdresseTextBox" runat="server" Text='<%# Bind("Adresse") %>' />
                <br />
                Postnr:
                <asp:TextBox ID="PostnrTextBox" runat="server" Text='<%# Bind("Postnr") %>' />
                <br />
                Poststed:
                <asp:TextBox ID="PoststedTextBox" runat="server" Text='<%# Bind("Poststed") %>' />
                <br />
                Kontaktperson:
                <asp:TextBox ID="KontaktpersonTextBox" runat="server" Text='<%# Bind("Kontaktperson") %>' />
                <br />
                Telefonnr:
                <asp:TextBox ID="TelefonnrTextBox" runat="server" Text='<%# Bind("Telefonnr") %>' />
                <br />
                Telefaks:
                <asp:TextBox ID="TelefaksTextBox" runat="server" Text='<%# Bind("Telefaks") %>' />
                <br />
                Epost:
                <asp:TextBox ID="EpostTextBox" runat="server" Text='<%# Bind("Epost") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Navn:
                <asp:TextBox ID="NavnTextBox" runat="server" Text='<%# Bind("Navn") %>' />
                <br />
                Adresse:
                <asp:TextBox ID="AdresseTextBox" runat="server" Text='<%# Bind("Adresse") %>' />
                <br />
                Postnr:
                <asp:TextBox ID="PostnrTextBox" runat="server" Text='<%# Bind("Postnr") %>' />
                <br />
                Poststed:
                <asp:TextBox ID="PoststedTextBox" runat="server" Text='<%# Bind("Poststed") %>' />
                <br />
                Kontaktperson:
                <asp:TextBox ID="KontaktpersonTextBox" runat="server" Text='<%# Bind("Kontaktperson") %>' />
                <br />
                Telefonnr:
                <asp:TextBox ID="TelefonnrTextBox" runat="server" Text='<%# Bind("Telefonnr") %>' />
                <br />
                Telefaks:
                <asp:TextBox ID="TelefaksTextBox" runat="server" Text='<%# Bind("Telefaks") %>' />
                <br />
                Epost:
                <asp:TextBox ID="EpostTextBox" runat="server" Text='<%# Bind("Epost") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Navn:
                <asp:Label ID="NavnLabel" runat="server" Text='<%# Bind("Navn") %>' />
                <br />
                Adresse:
                <asp:Label ID="AdresseLabel" runat="server" Text='<%# Bind("Adresse") %>' />
                <br />
                Postnr:
                <asp:Label ID="PostnrLabel" runat="server" Text='<%# Bind("Postnr") %>' />
                <br />
                Poststed:
                <asp:Label ID="PoststedLabel" runat="server" Text='<%# Bind("Poststed") %>' />
                <br />
                Kontaktperson:
                <asp:Label ID="KontaktpersonLabel" runat="server" Text='<%# Bind("Kontaktperson") %>' />
                <br />
                Telefonnr:
                <asp:Label ID="TelefonnrLabel" runat="server" Text='<%# Bind("Telefonnr") %>' />
                <br />
                Telefaks:
                <asp:Label ID="TelefaksLabel" runat="server" Text='<%# Bind("Telefaks") %>' />
                <br />
                Epost:
                <asp:Label ID="EpostLabel" runat="server" Text='<%# Bind("Epost") %>' />
                <br />

            </ItemTemplate>
           
        </asp:FormView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>' SelectCommand="SELECT [Navn], [Adresse], [Postnr], [Poststed], [Kontaktperson], [Telefonnr], [Telefaks], [Epost] FROM [Finansieringsselskap]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
            </div>
    </div>
    <div class="links">
    </div>
</asp:Content>

