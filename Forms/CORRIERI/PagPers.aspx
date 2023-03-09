<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="PagPers.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="/assets/css/styleCorrieri.css" rel="stylesheet" />
    <script src="/assets/js/notify.js"></script>
    <link href="/assets/css/notify.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--Pagina di visualizzazione dati personali dei corrieri--%>
    <div class="container">
        <div class="text-center mt-1">
            <h2>
                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-truck" viewBox="0 0 16 16">
                    <path d="M0 3.5A1.5 1.5 0 0 1 1.5 2h9A1.5 1.5 0 0 1 12 3.5V5h1.02a1.5 1.5 0 0 1 1.17.563l1.481 1.85a1.5 1.5 0 0 1 .329.938V10.5a1.5 1.5 0 0 1-1.5 1.5H14a2 2 0 1 1-4 0H5a2 2 0 1 1-3.998-.085A1.5 1.5 0 0 1 0 10.5v-7zm1.294 7.456A1.999 1.999 0 0 1 4.732 11h5.536a2.01 2.01 0 0 1 .732-.732V3.5a.5.5 0 0 0-.5-.5h-9a.5.5 0 0 0-.5.5v7a.5.5 0 0 0 .294.456zM12 10a2 2 0 0 1 1.732 1h.768a.5.5 0 0 0 .5-.5V8.35a.5.5 0 0 0-.11-.312l-1.48-1.85A.5.5 0 0 0 13.02 6H12v4zm-9 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm9 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2z" />
                </svg>
                Profilo Corriere&nbsp;<b><asp:Label ID="lblCORRIERE" runat="server" Text=""></asp:Label></b></h2>
        </div>
        <p style="text-align:center; color:black;" class="testo">Benvenuto nella tua pagina personale</p>
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-6">
                <div class="card mt-3">
                    <div class="card-header text-center">
                        <h4 class="card-title">Dati personali</h4>
                    </div>
                    <div class="card-body">
                        <div class="row text-center">
                            <div class="col">
                                <asp:Label ID="Label1" Class="lblCORRIERI" runat="server" Text="Ragione Sociale:"></asp:Label>
                                <asp:TextBox ID="txtRAGIONESOCIALE" class="form-control form-control-sm" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-3">
                                <asp:Label ID="Label2" Class="lblCORRIERI" runat="server" Text="Partita IVA:"></asp:Label>
                                <asp:TextBox ID="txtPIVA" class="form-control form-control-sm" runat="server" MaxLength="11"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row text-center mt-2">
                            <div class="col">
                                <asp:Label ID="Label3" Class="lblCORRIERI" runat="server" Text="Indirizzo:"></asp:Label>
                                <asp:TextBox ID="txtINDIRIZZO" class="form-control form-control-sm" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-3">
                                <asp:Label ID="Label5" Class="lblCORRIERI" runat="server" Text="CAP:"></asp:Label>
                                <asp:TextBox ID="txtCAP" class="form-control form-control-sm" MaxLength="5" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row text-center mt-2">
                            <div class="col">
                                <asp:Label ID="Label4" Class="lblCORRIERI" runat="server" Text="Citt&agrave;:"></asp:Label>
                                <asp:TextBox ID="txtCITTA" class="form-control form-control-sm" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-2">
                                <asp:Label ID="Label6" Class="lblCORRIERI" runat="server" Text="Provincia:"></asp:Label>
                                <asp:TextBox ID="txtPROVINCIA" class="form-control form-control-sm" MaxLength="2" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-5"></div>
                            <div class="col-2 text-center">
                                <asp:Label ID="lblCOSTO" Class="lblCORRIERI" runat="server" Text="Costo per spedizione:"></asp:Label>
                                <asp:TextBox ID="txtCOSTO" class="form-control form-control-sm" runat="server" MaxLength="6"></asp:TextBox>
                            </div>
                        </div>
                        <p></p>
                        <div style="position: relative;">
                            <hr class="hrdivider opacity-100">
                            <span class="hrdivider1">Recapiti</span>
                        </div>
                        <p></p>
                        <div class="row text-center">
                            <div class="col">
                                <asp:Label ID="Label7" Class="lblCORRIERI" runat="server" Text="Numero di telefono:"></asp:Label>
                                <asp:TextBox ID="txtNUMERO" class="form-control form-control-sm" runat="server"></asp:TextBox>
                            </div>
                            <div class="col">
                                <asp:Label ID="Label8" Class="lblCORRIERI" runat="server" Text="Indirizzo E-mail:"></asp:Label>
                                <asp:TextBox ID="txtEMAIL" class="form-control form-control-sm" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="text-center mt-2">
                            <asp:Button ID="btnModifica" class="btn masterButton" runat="server" Text="Modifica" OnClick="btnModifica_Click" />
                        </div>
                    </div>
                </div>
            </div>
            <%--Card laterale per il cambio password--%>
            <div class="col-lg-4">
                <div class="card mt-3" style="float: right;">
                    <div class="card-header text-center">
                        <h4 class="card-title">Cambia Password</h4>
                    </div>
                    <div class="card-body">
                        <div class="row text-center">
                            <div class="col">
                                <asp:Label ID="lblOldPWD" Style="float: left;" runat="server" Text="Vecchia Password:"></asp:Label>
                                <asp:TextBox ID="txtOldPWD" class="form-control form-control-sm" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
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
                        <div class="text-center mt-2">
                            <asp:Button ID="btnModPWD" class="btn masterButton" runat="server" Text="Modifica" OnClick="btnModPWD_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

