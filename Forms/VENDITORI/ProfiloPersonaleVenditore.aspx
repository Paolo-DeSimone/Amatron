<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="ProfiloPersonaleVenditore.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <link href="/assets/css/styleCorrieri.css" rel="stylesheet" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">

    <div class="container mt-1">
        <div class="row">
            <div class="col-lg-5"></div>
            <div class="col-lg-2">
                <center>
                    <h2>Profilo Venditore</h2>
                </center>
            </div>
            <div class="col-lg-5"></div>
        </div>
        <div class="row">
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
                <%-- Inizio body --%>
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
                                <label class="lblInBasso">Ragione Sociale</label>
                                <asp:TextBox ID="txtRagioneVenditore" runat="server" class="form-control form-control-sm"></asp:TextBox>
                            </div>
                            <div class="col-lg-3">
                                <label class="lblInBasso">Nome:</label>
                                <asp:TextBox ID="txtPIVA" runat="server" class="form-control form-control-sm"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-10">
                                <label class="lblInBasso">Indirizzo:</label>
                                <asp:TextBox ID="txtIndirizzoVenditore" runat="server" class="form-control form-control-sm"></asp:TextBox>
                            </div>
                            <div class="col-lg-2">
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
                                <asp:TextBox ID="txtTelefonoCliente" runat="server" class="form-control form-control-sm"></asp:TextBox>
                            </div>
                            <div class="col-lg-3"></div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-lg-4"></div>
                            <div class="col-lg-4">
                                <center>
                                    <asp:Button ID="btnAggiorna" runat="server" Text="Aggiorna" class="btn btn-sm masterButton" />
                                </center>
                            </div>
                            <div class="col-lg-4"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

