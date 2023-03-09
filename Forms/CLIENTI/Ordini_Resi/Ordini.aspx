<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="Ordini.aspx.cs" Inherits="Ordini" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <asp:Button ID="btnTemp" runat="server" Text="BTNTEMP" />
        <!-- CARD CON PRODOTTO -->
        <div class="card">
            <div runat="server" id="cardprodotto">


            </div>
        </div>
         <%-- chiamata del popup --%>
        <cc1:ModalPopupExtender ID="mp2" runat="server" PopupControlID="Reso" TargetControlID="btnTemp"
            CancelControlID="btn" BackgroundCssClass="Background">
        </cc1:ModalPopupExtender>

        <%-- contenuto del popup --%>
        <asp:Panel
            ID="Reso"
            runat="server"
            CssClass="PopupReso"
            align="center"
            Style="display: none">

            <%--ci pensa lo script manager a renderlo visibile--%>

            <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
            <iframe style="width: 600px; height: 450px; -webkit-border-radius: 10px 10px 10px 10px;" id="Iframe1" src="ResoClientiPopup.aspx" runat="server"></iframe>
            <br />
            <asp:Button ID="btn" runat="server" class="btn btn-secondary" Text="Chiudi" />
            <%--chiude il popup--%>
        </asp:Panel>
    </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
</asp:Content>

