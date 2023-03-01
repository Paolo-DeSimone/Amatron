<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="Registrazione.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link href="/assets/css/styleCorrieri.css" rel="stylesheet" />
    <%--tabella per la registrazione--%>
    <center>
        <div class="container mt-3" style="width: 50%">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <h4>Registrazione</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <label class="lblInBasso">Email:</label>
                            <asp:TextBox ID="txtEmail" runat="server" class="form-control form-control-sm"></asp:TextBox>
                        </div>
                        <div class="col-lg-6">
                            <label class="lblInBasso">Password:</label>
                            <asp:TextBox ID="txtPWD" runat="server" class="form-control form-control-sm" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-9">
                            <label class="lblInBasso">Ragione sociale:</label>
                            <asp:TextBox ID="txtRagioneSociale" runat="server" class="form-control form-control-sm"></asp:TextBox>
                        </div>
                        <div class="col-lg-3">
                            <label class="lblInBasso">Partita IVA:</label>
                            <asp:TextBox ID="txtPartitaIVA" runat="server" class="form-control form-control-sm" MaxLength="11"></asp:TextBox>
                        </div>
                    </div>
                    <div style="position: relative;" class="mt-2">
                        <hr class="hrdivider" />
                        <span class="hrdivider1">Dati personali                            </span>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <label class="lblInBasso">Cognome:</label>
                            <asp:TextBox ID="txtCognome" runat="server" class="form-control form-control-sm"></asp:TextBox>
                        </div>
                        <div class="col-lg-6">
                            <label class="lblInBasso">Nome:</label>
                            <asp:TextBox ID="txtNome" runat="server" class="form-control form-control-sm"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-9">
                            <label class="lblInBasso">Indirizzo:</label>
                            <asp:TextBox ID="txtIndirizzo" runat="server" class="form-control form-control-sm"></asp:TextBox>
                        </div>
                        <div class="col-lg-3">
                            <label class="lblInBasso">Cap:</label>
                            <asp:TextBox ID="txtCap" runat="server" class="form-control form-control-sm" MaxLength="5"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-10">
                            <label class="lblInBasso">Citta:</label>
                            <asp:TextBox ID="txtCitta" runat="server" class="form-control form-control-sm"></asp:TextBox>
                        </div>
                        <div class="col-lg-2">
                            <label class="lblInBasso">Provincia:</label>
                            <asp:TextBox ID="txtProvincia" runat="server" class="form-control form-control-sm" MaxLength="2"></asp:TextBox>
                        </div>
                    </div>
                    <div style="position: relative;" class="mt-2">
                        <hr class="hrdivider" />
                        <span class="hrdivider1">Recapiti                            </span>
                    </div>
                    <div class="row">
                        <div class="col-lg-3"></div>
                        <div class="col-lg-6">
                            <label class="lblInBasso">Telefono:</label>
                            <asp:TextBox ID="txtTelefono" runat="server" class="form-control form-control-sm"></asp:TextBox>
                        </div>
                        <div class="col-lg-3"></div>
                    </div>
                    <div style="position: relative;">
                        <hr class="hrdivider" />
                        <span class="hrdivider1">Iscriviti come                            </span>
                    </div>
                    <div class="row">
                        <div class="col-lg-3"></div>
                        <div class="col-lg-6">
                            <asp:RadioButtonList ID="radioButtonList1" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Text="Cliente" style="margin-left: 20px"></asp:ListItem>
                                <asp:ListItem Text="Venditore" style="margin-left: 20px"></asp:ListItem>
                                <asp:ListItem Text="Corriere" style="margin-left: 20px"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <div class="col-lg-3"></div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <center style="margin-top: 15px">
                                <asp:Button ID="btnRegistra" runat="server" Text="Registrati" class="btn btn-primary btn-sm" Style="width: 50%" />
                            </center>
                        </div>
                        <div class="col-lg-6">
                            <center style="margin-top: 15px">
                                <a href="#" class="text-body">Sei già registrato?</a>
                            </center>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </center>
</asp:Content>

