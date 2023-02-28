<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="PagPers.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link href="/assets/css/styleCorrieri.css" rel="stylesheet" />
    <%--Pagina di visualizzazione dati personali dei corrieri--%>
    <div class="container">
        <div class="row">
            <div class="col-lg-1"></div>
            <div class="col-lg-6">
                <div class="card mt-5">
                    <div class="card-header text-center">
                        <h5 class="card-title">I tuoi dati</h5>
                    </div>
                    <div class="card-body">
                        <div class="row text-center">
                            <div class="col">
                                <asp:Label ID="Label1" class="form-label" runat="server" Text="Ragione Sociale:"></asp:Label>
                                <asp:TextBox ID="txtRAGIONESOCIALE" class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-3">
                                <asp:Label ID="Label2" class="form-label" runat="server" Text="Partita IVA:"></asp:Label>
                                <asp:TextBox ID="txtPIVA" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row text-center">
                            <div class="col">
                                <asp:Label ID="Label3" class="form-label" runat="server" Text="Indirizzo:"></asp:Label>
                                <asp:TextBox ID="txtINDIRIZZO" class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-2">
                                <asp:Label ID="Label5" class="form-label" runat="server" Text="CAP:"></asp:Label>
                                <asp:TextBox ID="txtCAP" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row text-center">
                            <div class="col">
                                <asp:Label ID="Label4" class="form-label" runat="server" Text="Città:"></asp:Label>
                                <asp:TextBox ID="txtCITTA" class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-2">
                                <asp:Label ID="Label6" class="form-label" runat="server" Text="Provincia:"></asp:Label>
                                <asp:TextBox ID="txtPROVINCIA" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div style="position: relative;">
                            <hr class="hrdivider">
                            <span class="hrdivider1">Recapiti                            </span>
                        </div>
                        <br />
                        <div class="row text-center">
                            <div class="col">
                                <asp:Label ID="Label7" class="form-label" runat="server" Text="Numero di telefono:"></asp:Label>
                                <asp:TextBox ID="txtNUMERO" class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="col">
                                <asp:Label ID="Label8" class="form-label" runat="server" Text="Indirizzo E-mail:"></asp:Label>
                                <asp:TextBox ID="txtEMAIL" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="text-center mt-2">
                            <asp:Button ID="btnModifica" class="btn btn-primary" runat="server" Text="Modifica i dati" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card mt-5" style="float: right;">
                    <div class="card-header text-center">
                        <h5 class="card-title">Cambia Password</h5>
                    </div>
                    <div class="card-body">
                        <div class="row text-center">
                            <div class="col">
                                <asp:Label ID="lblOldPWD" class="form-label" runat="server" Text="Vecchia Password:"></asp:Label>
                                <asp:TextBox ID="txtOldPWD" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row text-center">
                            <div class="col">
                                <asp:Label ID="lblNewPWD" class="form-label" runat="server" Text="Nuova Password:"></asp:Label>
                                <asp:TextBox ID="txtNewPWD" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row text-center">
                            <div class="col">
                                <asp:Label ID="lblConfPWD" class="form-label" runat="server" Text="Conferma Password:"></asp:Label>
                                <asp:TextBox ID="txtConfPWD" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="text-center mt-2">
                            <asp:Button ID="btnModPWD" class="btn btn-primary" runat="server" Text="Modifica Password" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

