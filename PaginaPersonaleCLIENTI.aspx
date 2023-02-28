<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="PaginaPersonaleCLIENTI.aspx.cs" Inherits="Default2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container">

        <p></p>
        <h3 class="intestazione">Modifica i tuoi dati</h3>


        <div class="row margini">

            <div class="col-md-1">
                <asp:Literal ID="ltlCognome" runat="server"><h6 class="misura">COGNOME:</h6></asp:Literal>
            </div>

            <div class="col-md-5">
                <asp:TextBox ID="txtCognome" runat="server" class="Textbox"></asp:TextBox>
            </div>

            <div class="col-md-1">
                <asp:Literal ID="ltlNome" runat="server"><h6 class="misura">NOME:</h6></asp:Literal>
            </div>
            <div class="col-md-5">
                <asp:TextBox ID="txtNome" runat="server" class="Textbox"></asp:TextBox>
            </div>

        </div>

        <div class="row margini">

            <div class="col-md-1">
                <asp:Literal ID="ltlIndirizzo" runat="server"><h6 class="misura">INDIRIZZO:</h6></asp:Literal>
            </div>
            <div class="col-md-5">
                <asp:TextBox ID="txtIndirizzo" runat="server" class="Textbox"></asp:TextBox>
            </div>

            <div class="col-md-1">
                <asp:Literal ID="ltlCitta" runat="server"><h6 class="casella">CITTÀ:</h6></asp:Literal>
            </div>
            <div class="col-md-5">
                <asp:TextBox ID="txtCitta" runat="server" class="Textbox"></asp:TextBox>
            </div>

        </div>

        <div class="row margini">

            <div class="col-md-1">
                <asp:Literal ID="ltlProvincia" runat="server"><h6 class="casella">PROVINCIA:</h6></asp:Literal>
            </div>
            <div class="col-md-5">
                <asp:TextBox ID="txtProvincia" runat="server" class="casella"></asp:TextBox>
            </div>

            <div class="col-md-1">
                <asp:Literal ID="ltlCAP" runat="server"><h6 class="casella">CAP:</h6></asp:Literal>
            </div>

            <div class="col-md-5">
                <asp:TextBox ID="txtCAP" runat="server" class="casella"></asp:TextBox>
            </div>
        </div>

        <div class="row margini">

            <div class="col-md-1">
                <asp:Literal ID="ltlTelefono" runat="server"><h6 class="misura">TELEFONO:</h6></asp:Literal>
            </div>

            <div class="col-md-5">
                <asp:TextBox ID="txtTelefono" runat="server" class="Textbox"></asp:TextBox>
            </div>

            <div class="col-md-1">
                <asp:Literal ID="ltlEMAIL" runat="server"><h6 class="misura">EMAIL:</h6></asp:Literal>
            </div>


            <div class="col-md-5">
                <asp:TextBox ID="txtEMAIL" runat="server" class="Textbox"></asp:TextBox>
            </div>
        </div>


        <div class="row margini">
            <div class="col-md-2">
                <asp:Button ID="btnSalva" runat="server" Text="Salva" class="btn btn-secondary btnSalva" />
            </div>
        </div>
        <p></p>

    </div>

</asp:Content>

