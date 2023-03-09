<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="ProfiloPersonaleVenditore.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="../../assets/js/notify.js"></script>
    <link href="../../assets/css/notify.css" rel="stylesheet" />
    <link href="../../assets/css/masterStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--Pagina di visualizzazione dati personali dei corrieri--%>
    <div class="container">
        <div class="text-center mt-1">
            <h2>
                <svg xmlns="http://www.w3.org/2000/svg" width="64" height="64" fill="currentColor" class="bi bi-person-bounding-box" viewBox="0 0 16 16">
                    <path d="M1.5 1a.5.5 0 0 0-.5.5v3a.5.5 0 0 1-1 0v-3A1.5 1.5 0 0 1 1.5 0h3a.5.5 0 0 1 0 1h-3zM11 .5a.5.5 0 0 1 .5-.5h3A1.5 1.5 0 0 1 16 1.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 1-.5-.5zM.5 11a.5.5 0 0 1 .5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 1 0 1h-3A1.5 1.5 0 0 1 0 14.5v-3a.5.5 0 0 1 .5-.5zm15 0a.5.5 0 0 1 .5.5v3a1.5 1.5 0 0 1-1.5 1.5h-3a.5.5 0 0 1 0-1h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 1 .5-.5z" />
                    <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm8-9a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
                </svg>
                Profilo Venditore</h2>
            <p class="testo" style="text-align: center; color: black;">Benvenuto nella pagina del tuo profilo personale</p>
        </div>
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
                                <asp:Label ID="Label4" Class="lblCORRIERI" runat="server" Text="Città:"></asp:Label>
                                <asp:TextBox ID="txtCITTA" class="form-control form-control-sm" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-2">
                                <asp:Label ID="Label6" Class="lblCORRIERI" runat="server" Text="Provincia:"></asp:Label>
                                <asp:TextBox ID="txtPROVINCIA" class="form-control form-control-sm" MaxLength="2" runat="server"></asp:TextBox>
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

