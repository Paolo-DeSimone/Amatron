<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="Ordini.aspx.cs" Inherits="Ordini" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <!-- CARD CON PRODOTTO -->
        <div class="card mb-3 ordini">
<<<<<<< HEAD
            <div class="row g-0">
                <div class="col-md-4">
                    <img src="/assets/images/pc.jpg" class="img-fluid rounded-start" alt="..." />
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title">
                            <asp:Label ID="lblTitolo" runat="server" Text="Label">HP Elitebook Folio, Notebook Pc portatile Pronto All'uso</asp:Label>
                        </h5>
                        <p class="card-text">Display 14", Intel Core i7, Ram 8GB, SSD 240GB, Win 10Pro, Pacchetto Office 2021</p>
                        <%-- pulsante che apre il popup --%>
                        <asp:Button ID="btnRecensione" runat="server" Text="Lascia una recensione" class="btn masterButton" />
                        <%-- pulsante che apre il popup --%>
                        <asp:Button ID="btnReso" runat="server" Text="Effettua reso" class="btn masterButton" />
                        <p class="card-text">Prezzo:<asp:Label ID="lblPrezzo" runat="server" Text="Label">550€</asp:Label></p>
                        <asp:Label ID="lblStato" runat="server" Text=""></asp:Label>
                    </div>
=======
            <div class="row g-0" runat="server" id="cardprodotto">
                <%--<div class="col-md-4";>
                    <img src="/assets/images/pc.jpg" class="img-fluid rounded-start" alt="..." />
>>>>>>> 28d2d580b498f97a3d1379e6a9253f2cae705858
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title">
                            <asp:Label ID="lblTitolo" runat="server" Text="Label">HP Elitebook Folio, Notebook Pc portatile Pronto All'uso</asp:Label>
                        </h5>
                        <p class="card-text">Display 14", Intel Core i7, Ram 8GB, SSD 240GB, Win 10Pro, Pacchetto Office 2021</p>--%>
                        <%-- pulsante che apre il popup --%>
                        <%--<asp:Button ID="btnRecensione" runat="server" Text="Lascia una recensione" class="btn masterButton" />--%>
                        <%-- pulsante che apre il popup --%>
                        <%--<asp:Button ID="btnReso" runat="server" Text="Effettua reso" class="btn masterButton" />
                        <p class="card-text">Prezzo:<asp:Label ID="lblPrezzo" runat="server" Text="Label">550€</asp:Label></p>
                        <asp:Label ID="lblStato" runat="server" Text=""></asp:Label>
                    </div>
                </div>--%>
            </div>
        </div>
         <%-- chiamata del popup --%>
        <cc1:ModalPopupExtender ID="mp2" runat="server" PopupControlID="Reso" TargetControlID="btnReso"
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

        <%-- recensione --%>
        <%--    <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl1" TargetControlID="btnRecensione"
        CancelControlID="Button3" BackgroundCssClass="Background">
    </cc1:ModalPopupExtender>

    <asp:Panel
        ID="Panl1"
        runat="server"
        CssClass="Popup"
        align="center"
        Style="display: none">
   
        <iframe style="width: 500px; height: 500px;" id="irm1" src="RecensioneClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button13" runat="server" Text="Close" />
      
    </asp:Panel>--%>
</asp:Content>

