<%@ Page Language="C#" EnableEventValidation="true"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registrering.aspx.cs" Inherits="Oving1.Registrering" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
    <div>
    <h1>Registrering</h1>
        <p>
            <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/Pictures/FalckN_logo_pos_trans.png" style="margin-right: 0px" />
        </p>
        <p>Velkommen til registrerings siden!</p>
    </div>

    <div>
        <p>Vennligst fyll ut følgende:</p>
        <p>Arkivreferanse: <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></p>
        <p>Arkivmappe: <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox></p>
        <p>Leveranser: <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox></p>
        <p>Leverandør ID <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Noen leverandører en kan velge</asp:ListItem>
            <asp:ListItem>Leverandør1</asp:ListItem>
            <asp:ListItem>Leverandør2</asp:ListItem>
            <asp:ListItem>Leverandør3</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p><asp:CheckBox ID="CheckBox1" runat="server" />Godkjente leverandører</p>
        <p>Finansieringselskap: <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>Liste over selskaper</asp:ListItem>
            </asp:DropDownList>
        <p>Avtalenr: <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox></p>
        <p>Plassering: <asp:TextBox ID="TextBox6" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox></p>
        <p>Serienr: <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox></p>
        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged">
            </asp:Calendar>
        <br />
        Start dato: <asp:RadioButton ID="RB_Start" Checked="true" GroupName="Datodiff" runat="server" />
            <asp:Label ID="LabelStartDato" runat="server" Text=""></asp:Label>
        <br />
        Slutt dato: <asp:RadioButton ID="RB_Slutt" GroupName="Datodiff" runat="server" />
            <asp:Label ID="LabelSluttDato" runat="server" Text=""></asp:Label>
        <br />
        Måneder: <asp:Label ID="LabelMnd" runat="server" Text="Måneder"></asp:Label>
        
        <p><asp:Label ID="LabelMelding" runat="server" Text=""></asp:Label></p>

        <p>Seksjon: <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem>Ulike seksjoner</asp:ListItem>
            </asp:DropDownList>
        <p>Oppsigelsesfrist: <asp:TextBox ID="TextBox7" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox></p>
        <p>Registreringer: <asp:TextBox ID="TextBox8" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox></p>
        <p>Kategori: <asp:TextBox ID="TextBox9" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox></p>
        <p>Avtaletype: <asp:DropDownList ID="DropDownList4" runat="server">
            <asp:ListItem>Liste over avtaler</asp:ListItem>
            </asp:DropDownList>
        <p>Ansatt ID: <asp:DropDownList ID="DropDownList5" runat="server">
            <asp:ListItem>Ansattes ID</asp:ListItem>
            </asp:DropDownList>
        <p>Beløp: <asp:TextBox ID="TextBox10" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox></p>
        <p>Antall betalinger pr år: <asp:TextBox ID="TextBox11" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox><asp:CheckBox ID="CheckBox2" runat="server" />Makulert</p>
        <p>Status / kommentarer: <textarea id="TextArea1" cols="20" name="S1"></textarea></p>
        <p></p>
        <p>Vedlegg: <asp:TextBox ID="TextBox12" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox> PDF format</p>
        <p><asp:Button ID="Button1" runat="server" Text="Registrer" /></p>
            
    </div>
        <div>

            

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Hjem</asp:HyperLink>

            

        </div>
  
</asp:Content>