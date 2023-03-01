<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ordini.aspx.cs" Inherits="Ordini" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>  

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Ordini</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link href="../../../assets/css/style.css" rel="stylesheet" />
    <link href="../../../assets/css/cssCLIENTI.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <div class="container">
             <!-- CARD CON PRODOTTO -->
            <div class="card mb-3 ordini"">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="assets/images/pc.jpg" class="img-fluid rounded-start" alt="..." />
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title"> <asp:Label ID="lblTitolo" runat="server" Text="Label">HP Elitebook Folio, Notebook Pc portatile Pronto All'uso</asp:Label> </h5>
                            <p class="card-text">Display 14", Intel Core i7, Ram 8GB, SSD 240GB, Win 10Pro, Pacchetto Office 2021</p>
                             <%-- pulsante che apre il popup --%>
            <asp:Button ID="btnRecensione" runat="server" Text="Lascia una recensione" class="btn btn-light" />
                               <%-- pulsante che apre il popup --%>
            <asp:Button ID="btnReso" runat="server" Text="Effettua reso" class="btn btn-light" />
                            <p class="card-text">Prezzo:<asp:Label ID="lblPrezzo" runat="server" Text="Label">550€</asp:Label></p>
                            <asp:Label ID="lblStato" runat="server" Text="Label"></asp:Label>
                    </div>
                        </div>
                </div>
            </div>

             <!-- CARD CON PRODOTTO -->
            <div class="card mb-3 ordini">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="assets/images/tabletjpg.jpg" class="img-fluid rounded-start" alt="..." />
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Samsung Galaxy Tab A8</h5>
                            <p class="card-text">Android 10.5 Pollici Wi-Fi RAM 4 GB 64 GB Tablet Android 11 Gray [Versione italiana] 2022</p>
                            <%-- pulsante che apre il popup --%>
            <asp:Button ID="Button1" runat="server" Text="Lascia una recensione" class="btn btn-light" />
                               <%-- pulsante che apre il popup --%>
            <asp:Button ID="Button2" runat="server" Text="Effettua reso" class="btn btn-light" />
                            <p class="card-text">Prezzo:<asp:Label ID="Label1" runat="server" Text="Label">550€</asp:Label></p>
                        </div>
                    </div>
                </div>
            </div>

             <!-- CARD CON PRODOTTO -->
            <div class="card mb-3 ordini" >
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="assets/images/telefono.jpg" class="img-fluid rounded-start" alt="..." />
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title"> <asp:Label ID="lblTitoloProdotto" runat="server" Text="Label">Samsung Galaxy S23, Caricatore incluso</asp:Label></h5>
                            <p class="card-text"><asp:Label ID="lblDescrizione" runat="server" Text="Label">Smartphone Android, Display 6.1'' Dynamic AMOLED 2X, Fotocamera 50MP</asp:Label></p>
                            <%-- pulsante che apre il popup --%>
            <asp:Button ID="Button3" runat="server" Text="Lascia una recensione" class="btn btn-light" />
                               <%-- pulsante che apre il popup --%>
            <asp:Button ID="Button4" runat="server" Text="Effettua reso" class="btn btn-light" />
                            <p class="card-text">Prezzo:<asp:Label ID="Label2" runat="server" Text="Label">1039€</asp:Label></p>
                        </div>
                    </div>
                </div>
            </div>

             <!-- CARD CON PRODOTTO -->
            <div class="card mb-3 ordini">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="assets/images/amatron-icon.png" class="img-fluid rounded-start" alt="..." />
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <%-- pulsante che apre il popup --%>
            <asp:Button ID="Button5" runat="server" Text="Lascia una recensione" class="btn btn-light" />
                               <%-- pulsante che apre il popup --%>
            <asp:Button ID="Button6" runat="server" Text="Effettua reso" class="btn btn-light" />
                            <p class="card-text">Prezzo:<asp:Label ID="Label3" runat="server" Text="Label">550€</asp:Label></p>
                        </div>
                    </div>
                </div>
            </div>

             <!-- CARD CON PRODOTTO -->
            <div class="card mb-3 ordini" >
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="assets/images/amatron-icon.png" class="img-fluid rounded-start" alt="..." />
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                             <%-- pulsante che apre il popup --%>
            <asp:Button ID="Button7" runat="server" Text="Lascia una recensione" class="btn btn-light" />
                               <%-- pulsante che apre il popup --%>
            <asp:Button ID="Button8" runat="server" Text="Effettua reso" class="btn btn-light" />
                            <p class="card-text">Prezzo:<asp:Label ID="Label4" runat="server" Text="Label">550€</asp:Label></p>
                        </div>
                    </div>
                </div>
            </div>

             <!-- CARD CON PRODOTTO -->
            <div class="card mb-3 ordini">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="assets/images/chiusura.png" class="img-fluid rounded-start" alt="..." />
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <%-- pulsante che apre il popup --%>
            <asp:Button ID="Button9" runat="server" Text="Lascia una recensione" class="btn btn-light" />
                               <%-- pulsante che apre il popup --%>
            <asp:Button ID="Button10" runat="server" Text="Effettua reso" class="btn btn-light" />
                            <p class="card-text">Prezzo:<asp:Label ID="Label5" runat="server" Text="Label">550€</asp:Label></p>
                        </div>
                    </div>
                </div>
            </div>

             <!-- CARD CON PRODOTTO -->
            <div class="card mb-3 ordini" >
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="assets/images/amatron-icon.png" class="img-fluid rounded-start" alt="..." />
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <%-- pulsante che apre il popup --%>
            <asp:Button ID="Button11" runat="server" Text="Lascia una recensione" class="btn btn-light" />
                               <%-- pulsante che apre il popup --%>
            <asp:Button ID="Button12" runat="server" Text="Effettua reso" class="btn btn-light" />
                            <p class="card-text">Prezzo:<asp:Label ID="Label6" runat="server" Text="Label">550€</asp:Label></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>


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

    <%-- chiamata del popup --%>
    <cc1:ModalPopupExtender ID="mp2" runat="server" PopupControlID="Reso" TargetControlID="btnReso"
        CancelControlID="btnchiudi" BackgroundCssClass="Background">
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
        <iframe style="width: 600px; height: 450px;  -webkit-border-radius: 10px 10px 10px 10px;" id="Iframe1" src="ResoClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="btnchiudi" runat="server" class="btn btn-light" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

        <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel1"
        runat="server"
        CssClass="Popup"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 500px; height: 500px;" id="Iframe2" src="RecensioneClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button15" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

    <%-- chiamata del popup --%>
    <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="Reso" TargetControlID="btnReso"
        CancelControlID="Button4" BackgroundCssClass="Background">
    </cc1:ModalPopupExtender>

    <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel2"
        runat="server"
        CssClass="PopupReso"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 500px; height: 500px;" id="Iframe3" src="ResoClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button16" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

        <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel3"
        runat="server"
        CssClass="Popup"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 500px; height: 500px;" id="Iframe4" src="RecensioneClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button17" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

    <%-- chiamata del popup --%>
    <cc1:ModalPopupExtender ID="ModalPopupExtender2" runat="server" PopupControlID="Reso" TargetControlID="btnReso"
        CancelControlID="Button4" BackgroundCssClass="Background">
    </cc1:ModalPopupExtender>

    <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel4"
        runat="server"
        CssClass="PopupReso"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 500px; height: 500px;" id="Iframe5" src="ResoClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button18" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

        <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel5"
        runat="server"
        CssClass="Popup"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 500px; height: 500px;" id="Iframe6" src="RecensioneClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button19" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

    <%-- chiamata del popup --%>
    <cc1:ModalPopupExtender ID="ModalPopupExtender3" runat="server" PopupControlID="Reso" TargetControlID="btnReso"
        CancelControlID="Button4" BackgroundCssClass="Background">
    </cc1:ModalPopupExtender>

    <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel6"
        runat="server"
        CssClass="PopupReso"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 500px; height: 500px;" id="Iframe7" src="ResoClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button20" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

        <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel7"
        runat="server"
        CssClass="Popup"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 500px; height: 500px;" id="Iframe8" src="RecensioneClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button21" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

    <%-- chiamata del popup --%>
    <cc1:ModalPopupExtender ID="ModalPopupExtender4" runat="server" PopupControlID="Reso" TargetControlID="btnReso"
        CancelControlID="Button4" BackgroundCssClass="Background">
    </cc1:ModalPopupExtender>

    <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel8"
        runat="server"
        CssClass="PopupReso"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 500px; height: 500px;" id="Iframe9" src="ResoClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button22" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

        <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel9"
        runat="server"
        CssClass="Popup"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 500px; height: 500px;" id="Iframe10" src="RecensioneClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button23" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

    <%-- chiamata del popup --%>
    <cc1:ModalPopupExtender ID="ModalPopupExtender5" runat="server" PopupControlID="Reso" TargetControlID="btnReso"
        CancelControlID="Button4" BackgroundCssClass="Background">
    </cc1:ModalPopupExtender>

    <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel10"
        runat="server"
        CssClass="PopupReso"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 500px; height: 500px;" id="Iframe11" src="ResoClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button24" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

        <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel11"
        runat="server"
        CssClass="Popup"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 500px; height: 500px;" id="Iframe12" src="RecensioneClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button25" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

    <%-- chiamata del popup --%>
    <cc1:ModalPopupExtender ID="ModalPopupExtender6" runat="server" PopupControlID="Reso" TargetControlID="btnReso"
        CancelControlID="Button4" BackgroundCssClass="Background">
    </cc1:ModalPopupExtender>

    <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel12b"
        runat="server"
        CssClass="PopupReso"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 500px; height: 500px;" id="Iframe13b" src="ResoClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button26b" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

        <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel1b"
        runat="server"
        CssClass="Popup"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 500px; height: 500px;" id="Iframe2b" src="RecensioneClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button15b" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

    <%-- chiamata del popup --%>
    <cc1:ModalPopupExtender ID="ModalPopupExtender1b" runat="server" PopupControlID="Reso" TargetControlID="btnReso"
        CancelControlID="Button4" BackgroundCssClass="Background">
    </cc1:ModalPopupExtender>

    <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel2b"
        runat="server"
        CssClass="PopupReso"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 500px; height: 500px;" id="Iframe3b" src="ResoClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button16b" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

        <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel3b"
        runat="server"
        CssClass="Popup"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 500px; height: 500px;" id="Iframe4b" src="RecensioneClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button17b" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

    <%-- chiamata del popup --%>
    <cc1:ModalPopupExtender ID="ModalPopupExtender2b" runat="server" PopupControlID="Reso" TargetControlID="btnReso"
        CancelControlID="Button4" BackgroundCssClass="Background">
    </cc1:ModalPopupExtender>

    <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel4b"
        runat="server"
        CssClass="PopupReso"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 500px; height: 500px;" id="Iframe5b" src="ResoClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button18b" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

        <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel5b"
        runat="server"
        CssClass="Popup"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 500px; height: 500px;" id="Iframe6b" src="RecensioneClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button19b" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

    <%-- chiamata del popup --%>
    <cc1:ModalPopupExtender ID="ModalPopupExtender3b" runat="server" PopupControlID="Reso" TargetControlID="btnReso"
        CancelControlID="Button4" BackgroundCssClass="Background">
    </cc1:ModalPopupExtender>

    <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel6b"
        runat="server"
        CssClass="PopupReso"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 500px; height: 500px;" id="Iframe7b" src="ResoClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button20b" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

        <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel7b"
        runat="server"
        CssClass="Popup"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 500px; height: 500px;" id="Iframe8b" src="RecensioneClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button21b" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

    <%-- chiamata del popup --%>
    <cc1:ModalPopupExtender ID="ModalPopupExtender4b" runat="server" PopupControlID="Reso" TargetControlID="btnReso"
        CancelControlID="Button4" BackgroundCssClass="Background">
    </cc1:ModalPopupExtender>

    <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel8b"
        runat="server"
        CssClass="PopupReso"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 500px; height: 500px;" id="Iframe9b" src="ResoClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button22b" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

        <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel9b"
        runat="server"
        CssClass="Popup"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 500px; height: 500px;" id="Iframe10b" src="RecensioneClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button23b" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

    <%-- chiamata del popup --%>
    <cc1:ModalPopupExtender ID="ModalPopupExtender5b" runat="server" PopupControlID="Reso" TargetControlID="btnReso"
        CancelControlID="Button4" BackgroundCssClass="Background">
    </cc1:ModalPopupExtender>

    <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel10b"
        runat="server"
        CssClass="PopupReso"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 500px; height: 500px;" id="Iframe11b" src="ResoClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button24b" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

        <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel11b"
        runat="server"
        CssClass="Popup"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 500px; height: 500px;" id="Iframe12b" src="RecensioneClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button25b" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

    <%-- chiamata del popup --%>
    <cc1:ModalPopupExtender ID="ModalPopupExtender6b" runat="server" PopupControlID="Reso" TargetControlID="btnReso"
        CancelControlID="Button4" BackgroundCssClass="Background">
    </cc1:ModalPopupExtender>

    <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel12"
        runat="server"
        CssClass="PopupReso"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 500px; height: 500px;" id="Iframe13" src="ResoClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button26" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>
    </form>
</body>
</html>
