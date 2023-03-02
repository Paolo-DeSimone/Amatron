<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="VisualizzaProdotti.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="/assets/css/cssFrancescoVENDITORE.css" rel="stylesheet" />

    <script>
        //Qui inseriremo lo script che ci permetterà di aprire una pagina prodotto del prodotto selezionato
        //quando andremo a cliccare sulla sua img/card/titolo
        
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="card CardMargine ">
            <%-- header --%>
            <div class="card-header coloreHeader">
                <%-- Label nella quale andremo a prendere il nome del venditore che apre la pagina
                    Lo recupereremo da una session--%>
                <h4><strong>
                    <asp:Label ID="lblNomeVenditore" runat="server" Text="NOME VENDITORE"></asp:Label></strong></h4>
            </div>
            <%-- Body --%>
            <div class="card-body">
                <%-- Nel body andranno inseriti i due pulsanti in alto: Uno inserisci ed uno modifica qta prodotto
                    Subito sotto i button ci saranno tutti i prodotti messi in vendita dal venditore con titolo e descrizione--%>
                <div class="row mb-4">
                    <%-- I due button saranno due PopUp --%>

                    <div class=" col-md-2 ">
                    </div>
                    <div class=" col-md-6">
                        <asp:Button ID="btnAggiungiProdotto" class="btn btnVenditoriPurple" runat="server" Text="Aggiungi Nuovo Prodotto" />
                    </div>
                    <div class=" col-md-4 ">
                        <asp:Button ID="btnModificaQtaProdotto" class="btn btnVenditoriPurple" runat="server" Text="Ricarica Prodotto" />
                    </div>
                </div>
                <%-- Questo imgContainer ci servirà per popolare tutti i prodotti che ha a disposizione un venditore
                        popolando la row sottostante, abbiamo infati copiato le stesse div nel file .cs per ricreare il formato--%>
                <div id="imgContainer" runat="server" class="row"></div>
                <div class="row">
                    <%-- prima colonna --%>
                    <%-- Qui ci andranno i prodotti,con un ciclo andremo a riempire i vari spazi utili andando a recuperare tutti i prodotti 
                        che ha messo in vendita il venditore--%>
                    <div class=" col-md-6 ">
                        <div class="card cardIncard">
                            <div class="row">
                                <div class="col-md-5">
                                    <img alt="" src="/assets/images/amatron-icon.png" class=" img-thumbnail boxImg" />
                                </div>
                                <div class="col-md-7 allineato">
                                    <h5>
                                        <asp:Label ID="lblTitoloProdotto" class="contenimentoTitolo" runat="server" Text="TITOLO 1 DI UN PRODOTTO MOLTO LUNGHISSIMOfhgyhdfgysdfgsdygfysdyfgd"></asp:Label></h5>
                                    <h5>
                                        <asp:Label ID="lblPrezzo" runat="server" Text="PREZZO 1"></asp:Label></h5>
                                    <h6>
                                        <asp:Label ID="lblCategoria" runat="server" Text="CATEGORIA 1"></asp:Label>
                                    </h6>
                                    <asp:Label ID="lblDescrizioneProdotto" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque elementum libero porttitor purus accumsan,
                            eget ultrices metus aliquet. Aliquam non ornare nulla. Aliquam et sollicitudin diam, malesuada lacinia enim. Integer at nibh tempus, lacinia diam auctor, vulputate augue. 
                            Proin faucibus pharetra ante eget pharetra. Mauris lacinia libero consequat, sagittis purus. "
                                        class="DescrizioneProdotto"></asp:Label>
                                    <asp:Label ID="lblData" runat="server" class="text-secondary" Text="DATA"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <%-- Script Manager --%>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <%-- chiamata del popup --%>
    <cc1:ModalPopupExtender ID="mp1" runat="server"
        PopupControlID="Panl1"
        TargetControlID="btnAggiungiProdotto"
        CancelControlID="btnChiudiPopup"
        BackgroundCssClass="Background">
    </cc1:ModalPopupExtender>

    <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panl1"
        runat="server"
        CssClass="Popup"
        align="center"
        Style="display: none">


        <div class="popupBoxWrapper">

        
        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style=" width: 560px; height: 500px; border-radius:10px;border-color:#8e53c9 !important;border-width:0px;" id="Iframe2" src="AggiungiProdotti.aspx"  runat="server"></iframe>
        </div>
            

        <br />


        <div class="close-btn-wrapper">

            <button id="btnChiudiPopup" class="prova chiusura close-btn2" runat="server" text="X">
                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="" class=" chiusura bi chiusura bi-x-octagon" viewBox="0 0 16 16">
                    <path d="M4.54.146A.5.5 0 0 1 4.893 0h6.214a.5.5 0 0 1 .353.146l4.394 4.394a.5.5 0 0 1 .146.353v6.214a.5.5 0 0 1-.146.353l-4.394 4.394a.5.5 0 0 1-.353.146H4.893a.5.5 0 0 1-.353-.146L.146 11.46A.5.5 0 0 1 0 11.107V4.893a.5.5 0 0 1 .146-.353L4.54.146zM5.1 1 1 5.1v5.8L5.1 15h5.8l4.1-4.1V5.1L10.9 1H5.1z" />
                    <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
                </svg>
            </button>
        </div>
    </asp:Panel>
    <%--chiude il popup--%>


    <%-- chiamata del popup --%>
    <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server"
        PopupControlID="Panel1"
        TargetControlID="btnModificaQtaProdotto"
        CancelControlID="btnChiudiPopupInventario"
        BackgroundCssClass="Background">
    </cc1:ModalPopupExtender>

    <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel1"
        runat="server"
        CssClass="PopupGestisciInventario"
        align="center"
        Style="display: none">

        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style="width: 300px; height: 300px; aspect-ratio: 16/9; border-radius: 10px; border-color: #8e53c9 !important;" id="Iframe1" src="GestisciInventario.aspx" runat="server"></iframe>
        <br />


        <div class="close-btn-wrapper">
            <button id="btnChiudiPopupInventario" class="prova chiusura close-btn3" runat="server" text="X">
                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="" class=" chiusura bi chiusura bi-x-octagon" viewBox="0 0 16 16">
                    <path d="M4.54.146A.5.5 0 0 1 4.893 0h6.214a.5.5 0 0 1 .353.146l4.394 4.394a.5.5 0 0 1 .146.353v6.214a.5.5 0 0 1-.146.353l-4.394 4.394a.5.5 0 0 1-.353.146H4.893a.5.5 0 0 1-.353-.146L.146 11.46A.5.5 0 0 1 0 11.107V4.893a.5.5 0 0 1 .146-.353L4.54.146zM5.1 1 1 5.1v5.8L5.1 15h5.8l4.1-4.1V5.1L10.9 1H5.1z" />
                    <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
                </svg>
            </button>
        </div>
    </asp:Panel>

</asp:Content>

