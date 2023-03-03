<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="ProfiloModifica.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <p></p>

    <h2 class="intestazione">Profilo</h2>
    <br />
    <div class="row">
        <div class="col-lg-10">
            <div class="row largh d-flex justify-content-center text-align-center sposta">
                <div class="col-lg-4">
                    <div class="card">

                        <div class="card-header">
                            <h4 class="masterTitle datiPersonali">Dati personali</h4>
                        </div>
                        <br />
                        <div class="card-body">
                            <div class="row ">
                                <div class="col-lg-6">
                                    <asp:Literal ID="ltlCognome" runat="server"><h6 class="misura">COGNOME</h6></asp:Literal>
                                    <asp:TextBox ID="txtCognome" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                </div>
                                <div class="col-lg-6">
                                    <asp:Literal ID="ltlNome" runat="server"><h6 class="misura ">NOME</h6></asp:Literal>
                                    <asp:TextBox ID="txtNome" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-lg-9">
                                    <asp:Literal ID="ltlIndirizzo" runat="server"><h6 class="misura">INDIRIZZO</h6></asp:Literal>
                                    <asp:TextBox ID="txtIndirizzo" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                </div>

                                <div class="col-lg-3">
                                    <asp:Literal ID="ltlCAP" runat="server"><h6 class="misura">CAP</h6></asp:Literal>
                                    <asp:TextBox ID="txtCAP" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <div class="row ">
                                <div class="col-lg-10">
                                    <asp:Literal ID="ltlCitta" runat="server"><h6 class="misura">CITTA'</h6></asp:Literal>
                                    <asp:TextBox ID="txtCitta" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                </div>

                                <div class="col-lg-2">
                                    <asp:Literal ID="ltlProvincia" runat="server"><h6 class="misura">PV</h6></asp:Literal>
                                    <asp:TextBox ID="txtProvincia" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                </div>
                            </div>

                            <div style="position: relative;">
                                <hr class="hrdivider">
                                <span class="hrdivider1">Recapiti
                                </span>
                            </div>

                            <div class="row ">
                                <div class="col-lg-6">
                                    <asp:Literal ID="ltlEMAIL" runat="server"><h6 class="misura">EMAIL</h6></asp:Literal>
                                    <asp:TextBox ID="txtEMAIL" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                </div>
                                <div class="col-lg-6">
                                    <asp:Literal ID="ltlTelefono" runat="server"><h6 class="misura">TELEFONO</h6></asp:Literal>
                                    <asp:TextBox ID="txtTelefono" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                </div>
                            </div>
                            <br />

                            <div class="row">
                                <div class="col-lg-6">
                                    <asp:Button ID="btnModifica" runat="server" Text="Modifica" class="btn masterButton" />
                                </div>
                                <div class="col-lg-6">
                                    <asp:Button ID="btnSalva" runat="server" Text="Salva" class="btn masterButton" OnClick="btnSalva_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="card colore bianco larghezza">
                    <img src="../../../assets/images/amatron-prime.png" />
                    <div class="card-body">
                    </div>


                    <%-- POPUP--%>

                    <%-- Introduzione di uno script manager --%>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>

                    <%-- pulsante che apre il popup --%>
                    <asp:Button ID="btnApri" runat="server" class="btnApri btn btn-secondary masterButton" Text="Iscriviti ad Amatron Prime" />
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
                        <iframe style="width: 550px; height: 373px; -webkit-border-radius: 10px 10px 10px 10px;" id="if2" src="../Profilo/IscrizionePrimePopup.aspx" runat="server"></iframe>
                        <br />
                        <%--chiude il popup--%>
                        <asp:Button ID="btnChiudi" class="btn btn-secondary" runat="server" Text="Chiudi" />
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
