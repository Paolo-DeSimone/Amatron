<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="Ordini.aspx.cs" Inherits="Ordini" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="/assets/css/cssGruppoWebservices.css" rel="stylesheet" />
    <div align="center" class="container">
        <!-- CARD CON PRODOTTO -->
        <div class="d-flex justify-content-center align-items-center text-align-center">
            <span>
                <img style="width: 100px" src="/assets/images/carmine_banner.png" />
            </span>
            <h2>I tuoi Ordini</h2>
        </div>
        <p class="testo" style="color: black;">Benvenuto nella pagina dei tuoi ordini</p>
        <div style="margin-left: 700px;">
            <asp:Button ID="btnresi" class="btn masterButton" runat="server" Text="Effettua Reso" OnClick="btnresi_Click" />
        </div>
        <br />
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="card">
                    <div runat="server" id="cardprodotto">
                        <%-- innerhtml --%>
                    </div>
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
</asp:Content>
