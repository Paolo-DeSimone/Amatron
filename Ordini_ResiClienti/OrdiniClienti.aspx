﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrdiniClienti.aspx.cs" Inherits="Ordini" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>  

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Ordini</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link href="../assets/css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <div class="container">

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

    <%-- chiamata del popup --%>
    <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl1" TargetControlID="btnRecensione"
        CancelControlID="Button3" BackgroundCssClass="Background">
    </cc1:ModalPopupExtender>

    <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panl1"
        runat="server"
        CssClass="Popup"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 700px; height: 700px;" id="irm1" src="../Ordini_ResiClienti/RecensioneClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button13" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>

    <%-- chiamata del popup --%>
    <cc1:ModalPopupExtender ID="mp2" runat="server" PopupControlID="modifica" TargetControlID="btnReso"
        CancelControlID="Button4" BackgroundCssClass="Background">
    </cc1:ModalPopupExtender>

    <%-- contenuto del popup --%>
    <asp:Panel
        ID="modifica"
        runat="server"
        CssClass="Popup"
        align="center"
        Style="display: none">
        <%--ci pensa lo script manager a renderlo visibile--%>

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 700px; height: 700px;" id="Iframe1" src="ResoClientiPopup.aspx" runat="server"></iframe>
        <br />
        <asp:Button ID="Button14" runat="server" Text="Close" />
        <%--chiude il popup--%>
    </asp:Panel>
    </form>
</body>
</html>