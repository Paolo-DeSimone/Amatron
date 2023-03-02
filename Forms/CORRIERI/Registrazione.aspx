<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="Registrazione.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="/assets/css/styleCorrieri.css" rel="stylesheet" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#tabs").tabs();
        });
    </script>
    <%--tabella per la registrazione--%>
    <div class="container mt-1">
        <div class="row">
            <div class="col-lg-5"></div>
            <div class="col-lg-2">
                <center><h2>Registrazione</h2></center>
            </div>
            <div class="col-lg-5"></div>
        </div>
        <div class="row">
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
                <div id="tabs">
                    <ul>
                        <li style="width: 32%"><a href="#tabs-1" class="masterButton">Cliente</a></li>
                        <li style="width: 32%"><a href="#tabs-2" class="masterButton">Venditore</a></li>
                        <li style="width: 32%"><a href="#tabs-3" class="masterButton">Corriere</a></li>
                    </ul>

                    <div id="tabs-1">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <label class="lblInBasso">Email:</label>
                                        <asp:TextBox ID="txtEmailCliente" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                    </div>
                                    <div class="col-lg-6">
                                        <label class="lblInBasso">Password:</label>
                                        <asp:TextBox ID="txtPWDCliente" runat="server" class="form-control form-control-sm" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>
                                <div style="position: relative;" class="mt-2">
                                    <hr class="hrdivider opacity-100" />
                                    <span class="hrdivider1">Dati personali
                                    </span>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <label class="lblInBasso">Cognome:</label>
                                        <asp:TextBox ID="txtCognomeCliente" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                    </div>
                                    <div class="col-lg-6">
                                        <label class="lblInBasso">Nome:</label>
                                        <asp:TextBox ID="txtNomeCliente" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-9">
                                        <label class="lblInBasso">Indirizzo:</label>
                                        <asp:TextBox ID="txtIndirizzoCliente" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                    </div>
                                    <div class="col-lg-3">
                                        <label class="lblInBasso">CAP:</label>
                                        <asp:TextBox ID="txtCapCliente" runat="server" class="form-control form-control-sm" MaxLength="5"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-10">
                                        <label class="lblInBasso">Città:</label>
                                        <asp:TextBox ID="txtCittaCliente" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                    </div>
                                    <div class="col-lg-2">
                                        <label class="lblInBasso">Provincia:</label>
                                        <asp:TextBox ID="txtProvinciaCliente" runat="server" class="form-control form-control-sm" MaxLength="2"></asp:TextBox>
                                    </div>
                                </div>
                                <div style="position: relative;" class="mt-2">
                                    <hr class="hrdivider opacity-100" />
                                    <span class="hrdivider1">Recapiti
                                    </span>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3"></div>
                                    <div class="col-lg-6">
                                        <label class="lblInBasso">Telefono:</label>
                                        <asp:TextBox ID="txtTelefonoCliente" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                    </div>
                                    <div class="col-lg-3"></div>
                                </div>
                                <div class="row mt-2">
                                    <div class="col-lg-4"></div>
                                    <div class="col-lg-4">
                                        <center>
                                            <asp:Button ID="btnRegistraCliente" runat="server" Text="Registrati" class="btn btn-sm masterButton" OnClick="btnRegistraCliente_Click" />
                                        </center>
                                    </div>
                                    <div class="col-lg-4"></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="tabs-2">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <label class="lblInBasso">Email:</label>
                                        <asp:TextBox ID="txtEmailVenditore" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                    </div>
                                    <div class="col-lg-6">
                                        <label class="lblInBasso">Password:</label>
                                        <asp:TextBox ID="txtPWDVenditore" runat="server" class="form-control form-control-sm" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>
                                <div style="position: relative;" class="mt-2">
                                    <hr class="hrdivider opacity-100" />
                                    <span class="hrdivider1">Dati personali
                                    </span>
                                </div>
                                <div class="row">
                                    <div class="col-lg-9">
                                        <label class="lblInBasso">Ragione sociale:</label>
                                        <asp:TextBox ID="txtRagioneSocialeVenditore" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                    </div>
                                    <div class="col-lg-3">
                                        <label class="lblInBasso">Partita IVA:</label>
                                        <asp:TextBox ID="txtPivaVenditore" runat="server" class="form-control form-control-sm" MaxLength="11"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-9">
                                        <label class="lblInBasso">Indirizzo:</label>
                                        <asp:TextBox ID="txtIndirizzoVenditore" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                    </div>
                                    <div class="col-lg-3">
                                        <label class="lblInBasso">CAP:</label>
                                        <asp:TextBox ID="txtCapVenditore" runat="server" class="form-control form-control-sm" MaxLength="5"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-10">
                                        <label class="lblInBasso">Città:</label>
                                        <asp:TextBox ID="txtCittaVenditore" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                    </div>
                                    <div class="col-lg-2">
                                        <label class="lblInBasso">Provincia:</label>
                                        <asp:TextBox ID="txtProvinciaVenditore" runat="server" class="form-control form-control-sm" MaxLength="2"></asp:TextBox>
                                    </div>
                                </div>
                                <div style="position: relative;" class="mt-2">
                                    <hr class="hrdivider opacity-100" />
                                    <span class="hrdivider1">Recapiti
                                    </span>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3"></div>
                                    <div class="col-lg-6">
                                        <label class="lblInBasso">Telefono:</label>
                                        <asp:TextBox ID="txtTelefonoVenditore" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                    </div>
                                    <div class="col-lg-3"></div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4"></div>
                                    <div class="col-lg-4">
                                        <center style="margin-top: 15px">
                                            <asp:Button ID="btnRegistraVenditore" runat="server" Text="Registrati" class="btn btn-sm masterButton" Style="width: 50%"  OnClick="btnRegistraVenditore_Click"/>
                                        </center>
                                    </div>
                                    <div class="col-lg-4"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tabs-3">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <label class="lblInBasso">Email:</label>
                                        <asp:TextBox ID="txtEmailCorriere" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                    </div>
                                    <div class="col-lg-6">
                                        <label class="lblInBasso">Password:</label>
                                        <asp:TextBox ID="txtPWDCorriere" runat="server" class="form-control form-control-sm" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>
                                <div style="position: relative;" class="mt-2">
                                    <hr class="hrdivider opacity-100" />
                                    <span class="hrdivider1">Dati personali
                                    </span>
                                </div>
                                <div class="row">
                                    <div class="col-lg-9">
                                        <label class="lblInBasso">Ragione sociale:</label>
                                        <asp:TextBox ID="txtRagioneSocialeCorriere" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                    </div>
                                    <div class="col-lg-3">
                                        <label class="lblInBasso">Partita IVA:</label>
                                        <asp:TextBox ID="txtPivaCorriere" runat="server" class="form-control form-control-sm" MaxLength="11"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-9">
                                        <label class="lblInBasso">Indirizzo:</label>
                                        <asp:TextBox ID="txtIndirizzoCorriere" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                    </div>
                                    <div class="col-lg-3">
                                        <label class="lblInBasso">CAP:</label>
                                        <asp:TextBox ID="txtCapCorriere" runat="server" class="form-control form-control-sm" MaxLength="5"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-10">
                                        <label class="lblInBasso">Città:</label>
                                        <asp:TextBox ID="txtCittaCorriere" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                    </div>
                                    <div class="col-lg-2">
                                        <label class="lblInBasso">Provincia:</label>
                                        <asp:TextBox ID="txtProvinciaCorriere" runat="server" class="form-control form-control-sm" MaxLength="2"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4"></div>
                                    <div class="col-lg-4">
                                        <label class="lblInBasso">Costo:</label>
                                        <asp:TextBox ID="txtCostoCorriere" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                    </div>
                                    <div class="col-lg-4"></div>
                                </div>
                                <div style="position: relative;" class="mt-2">
                                    <hr class="hrdivider opacity-100" />
                                    <span class="hrdivider1">Recapiti
                                    </span>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3"></div>
                                    <div class="col-lg-6">
                                        <label class="lblInBasso">Telefono:</label>
                                        <asp:TextBox ID="txtTelefonoCorriere" runat="server" class="form-control form-control-sm"></asp:TextBox>
                                    </div>
                                    <div class="col-lg-3"></div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4"></div>
                                    <div class="col-lg-4">
                                        <center style="margin-top: 15px">
                                            <asp:Button ID="btnRegistraCorriere" runat="server" Text="Registrati" class="btn btn-sm masterButton" Style="width: 50%" OnClick="btnRegistraCorriere_Click" />
                                        </center>
                                    </div>
                                    <div class="col-lg-4"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3"></div>
        </div>
    </div>

</asp:Content>

