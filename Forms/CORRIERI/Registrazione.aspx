<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="Registrazione.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="/assets/css/styleCorrieri.css" rel="stylesheet" />
    <%--tabella per la registrazione--%>
    <center>
        <div class="container mt-3" style="width: 50%">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <h2>Registrazione</h2>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <label>Email:</label>
                            <asp:TextBox ID="txtEmail" runat="server" class="form-control form-control-lg"></asp:TextBox>
                        </div>
                        <div class="col-lg-6">
                            <label>Password:</label>
                            <asp:TextBox ID="txtPWD" runat="server" class="form-control form-control-lg" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-9">
                            <label>Ragione sociale:</label>
                            <asp:TextBox ID="txtRagioneSociale" runat="server" class="form-control form-control-lg"></asp:TextBox>
                        </div>
                        <div class="col-lg-3">
                            <label>Partita IVA:</label>
                            <asp:TextBox ID="txtPartitaIVA" runat="server" class="form-control form-control-lg" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    <div style="position: relative;" class="mt-2">
                        <hr class="hrdivider" />
                        <span class="hrdivider1">Dati personali                            </span>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <label>Cognome:</label>
                            <asp:TextBox ID="txtCognome" runat="server" class="form-control form-control-lg"></asp:TextBox>
                        </div>
                        <div class="col-lg-6">
                            <label>Nome:</label>
                            <asp:TextBox ID="txtNome" runat="server" class="form-control form-control-lg"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-9">
                            <label>Indirizzo:</label>
                            <asp:TextBox ID="txtIndirizzo" runat="server" class="form-control form-control-lg"></asp:TextBox>
                        </div>
                        <div class="col-lg-3">
                            <label>Cap:</label>
                            <asp:TextBox ID="txtCap" runat="server" class="form-control form-control-lg"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-9">
                            <label>Citta:</label>
                            <asp:TextBox ID="txtCitta" runat="server" class="form-control form-control-lg"></asp:TextBox>
                        </div>
                        <div class="col-lg-3">
                            <label>Provincia:</label>
                            <asp:TextBox ID="txtProvincia" runat="server" class="form-control form-control-lg"></asp:TextBox>
                        </div>
                    </div>
                    <div style="position: relative;" class="mt-2">
                        <hr class="hrdivider" />
                        <span class="hrdivider1">Recapiti                            </span>
                    </div>
                    <div class="row">
                        <div class="col-lg-3"></div>
                        <div class="col-lg-6">
                            <label>Telefono:</label>
                            <asp:TextBox ID="txtTelefono" runat="server" class="form-control form-control-lg"></asp:TextBox>
                        </div>
                        <div class="col-lg-3"></div>
                    </div>
                    <br />
                    <div class="row">
                        <hr />
                    </div>
                    <div class="row">
                        <div class="col-lg-2"></div>
                        <div class="col-lg-2">
                            <label>Iscriviti come:</label>
                        </div>
                        <div class="col-lg-6">
                            <asp:RadioButtonList ID="radioButtonList1" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem id="liCliente" runat="server" Text="Cliente" style="margin-left: 20px"></asp:ListItem>
                                <asp:ListItem id="liVenditore" runat="server" Text="Venditore" style="margin-left: 20px"></asp:ListItem>
                                <asp:ListItem id="liCorriere" runat="server" Text="Corriere" style="margin-left: 20px"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <div class="col-lg-2"></div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-6">
                            <center style="margin-top: 25px">
                                <asp:Button ID="btnRegistra" runat="server" Text="Registrati" class="btn btn-primary btn-lg" Style="width: 50%" OnClick="btnRegistra_Click" />
                            </center>
                        </div>
                        <div class="col-lg-6">
                            <center style="margin-top: 30px">
                                <a href="#" class="text-body">Sei già registrato?</a>
                            </center>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </center>
</asp:Content>

