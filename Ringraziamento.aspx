<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="Ringraziamento.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
        <h2>Grazie per il tuo acquisto</h2>
        <br />
        <p>Siamo felici di annuarti che il tuo acquisto è andato a buon fine, premi per tornare nella pagina principale</p>
        <br />
        <asp:Button ID="btnHome" class="btn masterButton sm" runat="server" Text="Torna alla home" OnClick="btnHome_Click" />
    </div>
</asp:Content>

