<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="PagPers.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="/assets/css/styleCorrieri.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--Pagina di visualizzazione dati personali dei corrieri--%>
    <div class="container">
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-6">
                <div class="card mt-5">
                    <div class="card-header text-center">
                        <h4 class="card-title">Dati corrieri</h4>
                    </div>
                    <div class="card-body">
                        <div class="row text-center">
                            <div class="col">
                                <asp:Label ID="Label1" class="form-label" runat="server" Text="Ragione Sociale:"></asp:Label>
                                <asp:TextBox ID="txtRAGIONESOCIALE" class="form-control form-control-sm" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-3">
                                <asp:Label ID="Label2" class="form-label" runat="server" Text="Partita IVA:"></asp:Label>
                                <asp:TextBox ID="txtPIVA" class="form-control form-control-sm"  runat="server" MaxLength="11"></asp:TextBox>
                            </div>
                            <div class="col-2">
                                <asp:Label ID="lblCOSTO" class="form-label" runat="server" Text="Costo:"></asp:Label>
                                <asp:TextBox ID="txtCOSTO" class="form-control form-control-sm"  runat="server" MaxLength="11"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row text-center">
                            <div class="col">
                                <asp:Label ID="Label3" class="form-label" runat="server" Text="Indirizzo:"></asp:Label>
                                <asp:TextBox ID="txtINDIRIZZO" class="form-control form-control-sm" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-3">
                                <asp:Label ID="Label5" class="form-label" runat="server" Text="CAP:"></asp:Label>
                                <asp:TextBox ID="txtCAP" class="form-control form-control-sm" MaxLength="5" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row text-center">
                            <div class="col">
                                <asp:Label ID="Label4" class="form-label" runat="server" Text="Città:"></asp:Label>
                                <asp:TextBox ID="txtCITTA" class="form-control form-control-sm" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-2">
                                <asp:Label ID="Label6" class="form-label" runat="server" Text="Provincia:"></asp:Label>
                                <asp:TextBox ID="txtPROVINCIA" class="form-control form-control-sm" MaxLength="2" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div style="position: relative;">
                            <hr class="hrdivider">
                            <span class="hrdivider1">Recapiti
                            </span>
                        </div>
                        <br />
                        <div class="row text-center">
                            <div class="col">
                                <asp:Label ID="Label7" class="form-label" runat="server" Text="Numero di telefono:"></asp:Label>
                                <asp:TextBox ID="txtNUMERO" class="form-control form-control-sm" runat="server"></asp:TextBox>
                            </div>
                            <div class="col">
                                <asp:Label ID="Label8" class="form-label" runat="server" Text="Indirizzo E-mail:"></asp:Label>
                                <asp:TextBox ID="txtEMAIL" class="form-control form-control-sm" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="text-center mt-2">
                            <asp:Button ID="btnModifica" class="btn btn-primary btn-sm" runat="server" Text="Modifica i dati" OnClick="btnModifica_Click" />
                        </div>
                    </div>
                </div>
            </div>
            <%--Card laterale per il cambio password--%>
            <div class="col-lg-4">
                <div class="card mt-5" style="float: right;">
                    <div class="card-header text-center">
                        <h4 class="card-title">Cambia Password</h4>
                    </div>
                    <div class="card-body">
                        <div class="row text-center">
                            <div class="col">
                                <asp:Label ID="lblOldPWD" class="form-label" runat="server" Text="Vecchia Password:"></asp:Label>
                                <asp:TextBox ID="txtOldPWD" class="form-control form-control-sm"  runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row text-center">
                            <div class="col">
                                <asp:Label ID="lblNewPWD" class="form-label" runat="server" Text="Nuova Password:"></asp:Label>
                                <asp:TextBox ID="txtNewPWD" class="form-control form-control-sm" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row text-center">
                            <div class="col">
                                <asp:Label ID="lblConfPWD" class="form-label" runat="server" Text="Conferma Password:"></asp:Label>
                                <asp:TextBox ID="txtConfPWD" class="form-control form-control-sm" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="text-center mt-2">
                            <asp:Button ID="btnModPWD" class="btn btn-primary btn-sm" runat="server" Text="Modifica Password" OnClick="btnModPWD_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

