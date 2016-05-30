<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="VisLeverandør.aspx.cs" Inherits="FalckNutecBachelor.VisLeverandør" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1>&nbsp;</h1>
        <h1>Oversikt over leverandører</h1>
        <p>Velg leverandør</p>



        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Navn" DataValueField="Navn">
            </asp:DropDownList>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                Navn:
                <asp:TextBox Text='<%# Bind("Navn") %>' runat="server" ID="NavnTextBox" /><br />
                UnderleverandørAv:
                <asp:TextBox Text='<%# Bind("UnderleverandørAv") %>' runat="server" ID="UnderleverandørAvTextBox" /><br />
                Organisasjonsnr:
                <asp:TextBox Text='<%# Bind("Organisasjonsnr") %>' runat="server" ID="OrganisasjonsnrTextBox" /><br />
                Adresse:
                <asp:TextBox Text='<%# Bind("Adresse") %>' runat="server" ID="AdresseTextBox" /><br />
                Postadresse:
                <asp:TextBox Text='<%# Bind("Postadresse") %>' runat="server" ID="PostadresseTextBox" /><br />
                Kontaktperson:
                <asp:TextBox Text='<%# Bind("Kontaktperson") %>' runat="server" ID="KontaktpersonTextBox" /><br />
                Telefonnr:
                <asp:TextBox Text='<%# Bind("Telefonnr") %>' runat="server" ID="TelefonnrTextBox" /><br />
                Telefaks:
                <asp:TextBox Text='<%# Bind("Telefaks") %>' runat="server" ID="TelefaksTextBox" /><br />
                Epost:
                <asp:TextBox Text='<%# Bind("Epost") %>' runat="server" ID="EpostTextBox" /><br />
                <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Navn:
                <asp:TextBox Text='<%# Bind("Navn") %>' runat="server" ID="NavnTextBox" /><br />
                UnderleverandørAv:
                <asp:TextBox Text='<%# Bind("UnderleverandørAv") %>' runat="server" ID="UnderleverandørAvTextBox" /><br />
                Organisasjonsnr:
                <asp:TextBox Text='<%# Bind("Organisasjonsnr") %>' runat="server" ID="OrganisasjonsnrTextBox" /><br />
                Adresse:
                <asp:TextBox Text='<%# Bind("Adresse") %>' runat="server" ID="AdresseTextBox" /><br />
                Postadresse:
                <asp:TextBox Text='<%# Bind("Postadresse") %>' runat="server" ID="PostadresseTextBox" /><br />
                Kontaktperson:
                <asp:TextBox Text='<%# Bind("Kontaktperson") %>' runat="server" ID="KontaktpersonTextBox" /><br />
                Telefonnr:
                <asp:TextBox Text='<%# Bind("Telefonnr") %>' runat="server" ID="TelefonnrTextBox" /><br />
                Telefaks:
                <asp:TextBox Text='<%# Bind("Telefaks") %>' runat="server" ID="TelefaksTextBox" /><br />
                Epost:
                <asp:TextBox Text='<%# Bind("Epost") %>' runat="server" ID="EpostTextBox" /><br />
                <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
            </InsertItemTemplate>
            <ItemTemplate>
                Navn:
                <asp:Label Text='<%# Bind("Navn") %>' runat="server" ID="NavnLabel" /><br />
                UnderleverandørAv:
                <asp:Label Text='<%# Bind("UnderleverandørAv") %>' runat="server" ID="UnderleverandørAvLabel" /><br />
                Organisasjonsnr:
                <asp:Label Text='<%# Bind("Organisasjonsnr") %>' runat="server" ID="OrganisasjonsnrLabel" /><br />
                Adresse:
                <asp:Label Text='<%# Bind("Adresse") %>' runat="server" ID="AdresseLabel" /><br />
                Postadresse:
                <asp:Label Text='<%# Bind("Postadresse") %>' runat="server" ID="PostadresseLabel" /><br />
                Kontaktperson:
                <asp:Label Text='<%# Bind("Kontaktperson") %>' runat="server" ID="KontaktpersonLabel" /><br />
                Telefonnr:
                <asp:Label Text='<%# Bind("Telefonnr") %>' runat="server" ID="TelefonnrLabel" /><br />
                Telefaks:
                <asp:Label Text='<%# Bind("Telefaks") %>' runat="server" ID="TelefaksLabel" /><br />
                Epost:
                <asp:Label Text='<%# Bind("Epost") %>' runat="server" ID="EpostLabel" /><br />

            </ItemTemplate>
        </asp:FormView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:AvtaleDatabaseConnectionString2 %>' SelectCommand="SELECT [Navn], [UnderleverandørAv], [Organisasjonsnr], [Adresse], [Postadresse], [Kontaktperson], [Telefonnr], [Telefaks], [Epost] FROM [Leverandør]"></asp:SqlDataSource>
            </div>
    </div>
    <div class="links">
    </div>
</asp:Content>

