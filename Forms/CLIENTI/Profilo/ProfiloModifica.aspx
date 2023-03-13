<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="ProfiloModifica.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="/assets/js/notify.js"></script>
    <link href="/assets/css/notify.css" rel="stylesheet" />
    <link href="/assets/css/cssFrancescoVENDITORE.css" rel="stylesheet" />
    <link href="/assets/css/masterStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p></p>
    <h2 class="intestazione">
        <svg xmlns="http://www.w3.org/2000/svg" width="64" height="64" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
            <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
            <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
        </svg>
        Il Tuo Profilo
    </h2>
    <p class="testo" style="text-align: center; color: black;">Benveuto/a nella tua pagina personale! Qui potrai visualizzare e/o modificare i tuoi dati e la tua password.</p>
    <br />

    <div class="row">
        <div class="col-lg-5" style="margin-left: 10%;">
            <div class="sposta">

                <div class="card">
                    <div class="card-header">
                        <h4 class="masterTitle datiPersonali">Dati personali</h4>

                    </div>
                    <div class="card-body text-align-left">
                        <div class="row">
                            <div class="col-lg-6 text-align-left">
                                <asp:Literal ID="ltlCognome" runat="server">COGNOME</asp:Literal>
                                <asp:TextBox ID="txtCognome" runat="server" class="form-control form-control-sm"></asp:TextBox>
                            </div>
                            <div class="col-lg-6">
                                <asp:Literal ID="ltlNome" runat="server">NOME</asp:Literal>
                                <asp:TextBox ID="txtNome" runat="server" class="form-control form-control-sm"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-9">
                                <asp:Literal ID="ltlIndirizzo" runat="server">INDIRIZZO</asp:Literal>
                                <asp:TextBox ID="txtIndirizzo" runat="server" class="form-control form-control-sm"></asp:TextBox>
                            </div>

                            <div class="col-lg-3">
                                <asp:Literal ID="ltlCAP" runat="server">CAP</asp:Literal>
                                <asp:TextBox ID="txtCAP" runat="server" class="form-control form-control-sm"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row ">
                            <div class="col-lg-10">
                                <asp:Literal ID="ltlCitta" runat="server">CITTA'</asp:Literal>
                                <asp:TextBox ID="txtCitta" runat="server" class="form-control form-control-sm"></asp:TextBox>
                            </div>

                            <div class="col-lg-2">
                                <asp:Literal ID="ltlProvincia" runat="server">PROV</asp:Literal>
                                <asp:TextBox ID="txtProvincia" runat="server" class="form-control form-control-sm"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row ">
                            <div class="col-lg-6">
                                <asp:Literal ID="ltlEMAIL" runat="server">EMAIL</asp:Literal>
                                <asp:TextBox ID="txtEMAIL" runat="server" class="form-control form-control-sm"></asp:TextBox>
                            </div>
                            <div class="col-lg-6">
                                <asp:Literal ID="ltlTelefono" runat="server">TELEFONO</asp:Literal>
                                <asp:TextBox ID="txtTelefono" runat="server" class="form-control form-control-sm"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <asp:Button ID="btnSalva" runat="server" Text="Salva" class="btn masterButton" OnClick="btnSalva_Click" />
                    </div>
                </div>
            </div>
        </div>




        <%--   CAMBIA PASSWORD--%>
        <div class="col-lg-3">

            <div class="card">
                <div class="card-header text-center">
                    <h4 class="card-title">Cambia Password</h4>
                </div>
                <div class="card-body">
                    <div class="row text-center">
                        <div class="col">
                            <asp:Label ID="lblOldPWD" Style="float: left;" runat="server" Text="Vecchia Password:"></asp:Label>
                            <asp:TextBox ID="txtOldPWD" class="form-control form-control-sm" runat="server" TextMode="Password"></asp:TextBox>

                        </div>

                        <div class="row text-center">
                            <div class="col">
                                <asp:Label ID="lblNewPWD" Style="float: left;" runat="server" Text="Nuova Password:"></asp:Label>
                                <asp:TextBox ID="txtNewPWD" class="form-control form-control-sm" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row text-center">
                            <div class="col">
                                <asp:Label ID="lblConfPWD" Style="float: left;" runat="server" Text="Conferma Password:"></asp:Label>
                                <asp:TextBox ID="txtConfPWD" class="form-control form-control-sm" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="text-right mt-2" style="text-align: right !important;">
                            <asp:Button ID="btnModPWD" class="btn masterButton" runat="server" Text="Modifica" OnClick="btnModPWD_Click" />
                        </div>
                    </div>
                </div>
            </div>

            <br />

            <%--Amatron prime card--%>
            <div class="col-lg-3">
                <div class="card colore bianco " style="height: 300px; width: 446.5px; padding:10px;">
                    <%--<div class="card-header text-center">
                    <h4 class="card-title">Amatron Prime</h4>
                </div>--%>
                    <img src="../../../assets/images/amatron-prime.png" />
                    <p class="card-text primeScritta">
                        Amatron prime &egrave; un servizio che ti permetter&agrave; di avere uno sconto di
                        <asp:Label ID="lblPrimeProMod" runat="server" Text=""></asp:Label>% su ogni prodotto acquistato.
                    </p>
                    <h4 style="text-align: center" class="card-title">Iscrizione annuale &euro;29,99!</h4>
                    <div class="card-body">
                    </div>

                    <%-- POPUP--%>

                    <%-- Introduzione di uno script manager --%>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <div style="margin:0 auto; margin-right:110px;">
                    <asp:Button ID="btnApri" runat="server" class="btnApri btn btn-secondary masterButton" Text="Iscriviti ad Amatron Prime" OnClick="btnApri_Click"/>
                    </div>
                    <%-- pulsante che apre il popup --%>
                    <%--<asp:Button ID="btnIscriviti" runat="server" class=" btn btn-secondary masterButton" Text="Iscriviti ad Amatron Prime" OnClick="btnIscriviti_Click" />--%>
                    <br />

                    <%-- chiamata del popup --%>
                    <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl1" TargetControlID="btnApri"
                        CancelControlID="btnChiudi" BackgroundCssClass="Background">
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
                        <iframe style="width: 550px; height: 373px; -webkit-border-radius: 10px 10px 10px 10px;" id="if2" src="../../AMATRON/PopupPaypalAMATRON.aspx" runat="server"></iframe>
                        <br />
                        <%--chiude il popup--%>
                        <button id="btnChiudi" class="close-btnAggiungiProdotto" runat="server" style="margin-right: 120px; margin-top: 15px;">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-circle">
                                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                                <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
                            </svg>
                        </button>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
