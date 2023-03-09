<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="Ordini.aspx.cs" Inherits="Ordini" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="/assets/css/cssGruppoWebservices.css" rel="stylesheet" />
    <script type="text/javascript">
        <%--$(document).ready(function () {            var modalPopupExtender = $find('<%= mp2.ClientID %>');            var popupShown = false;                       $("[id^=btnReso]").click(function () {               if (!popupShown) {                   modalPopupExtender.show();                   popupShown = true;                                  }           });       });--%>
        function apriPopUp() {
            var modalPopupExtender = $find('<%= mp2.ClientID %>');            var popupShown = false;            $("[id^=btnReso]").click(function () {                if (!popupShown) {                    modalPopupExtender.show();                    popupShown = true;
                }
            });
        }
    </script>
    <div align="center" class="container">
        <asp:Button ID="btnTemp" runat="server" Text="BTNTEMP" />
        <!-- CARD CON PRODOTTO -->
        <div class="d-flex justify-content-center align-items-center text-align-center">
            <span>
                <img style="width: 100px" src="/assets/images/carmine_banner.png" />
            </span>
            <h2>I tuoi Ordini</h2>
        </div>
        <br />
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="card">
                    <div runat="server" id="cardprodotto">
                        <%-- innerhtml --%>
                    </div>
                </div>
            </div>
            <div class="col-md-2"></div>
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

