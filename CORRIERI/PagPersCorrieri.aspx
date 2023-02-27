<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="PagPersCorrieri.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style type="text/css">        .Background {            background-color: Black;            filter: alpha(opacity=30);            opacity: 0.8;        }        .Popup {            background-color: #FFFFFF;            border-width: 3px;            border-style: solid;            border-color: black;            padding-top: 10px;            width: 620px;            height: 520px;        }    </style>
    <div class="container-fluid col-lg-5">
        <div class="card mt-5">
            <div class="card-header text-center">
                <h5 class="card-title">I tuoi dati</h5>
            </div>
            <div class="card-body">
                <div class="row text-center">
                    <div class="col">
                        <asp:Label ID="Label1" class="form-label" runat="server" Text="Ragione Sociale:"></asp:Label>
                        <asp:TextBox ID="txtRAGIONESOCIALE" class="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                    </div>
                    <div class="col-4">
                        <asp:Label ID="Label2" class="form-label" runat="server" Text="Partita IVA:"></asp:Label>
                        <asp:TextBox ID="txtPIVA" class="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                    </div>
                </div>
                <div class="row text-center">
                    <div class="col">
                        <asp:Label ID="Label3" class="form-label" runat="server" Text="Indirizzo:"></asp:Label>
                        <asp:TextBox ID="txtINDIRIZZO" class="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row text-center">
                    <div class="col-7">
                        <asp:Label ID="Label4" class="form-label" runat="server" Text="Città:"></asp:Label>
                        <asp:TextBox ID="txtCITTA" class="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-3">
                        <asp:Label ID="Label5" class="form-label" runat="server" Text="CAP:"></asp:Label>
                        <asp:TextBox ID="txtCAP" class="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-2">
                        <asp:Label ID="Label6" class="form-label" runat="server" Text="Provincia:"></asp:Label>
                        <asp:TextBox ID="txtPROVINCIA" class="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row text-center">
                    <div class="col">
                        <asp:Label ID="Label7" class="form-label" runat="server" Text="Numero di telefono:"></asp:Label>
                        <asp:TextBox ID="txtNUMERO" class="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row text-center">
                    <div class="col">
                        <asp:Label ID="Label8" class="form-label" runat="server" Text="Indirizzo E-mail:"></asp:Label>
                        <asp:TextBox ID="txtEMAIL" class="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="text-center mt-2">
                    <%-- Introduzione di uno script manager --%>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <%-- pulsante che apre il popup --%>
                    <asp:Button ID="btnModifica" class="btn btn-primary" runat="server" Text="Modifica i dati" />
                    <%-- chiamata del popup --%>
                    <cc1:modalpopupextender id="mp1" runat="server" popupcontrolid="Panl1" targetcontrolid="btnModifica"
                        cancelcontrolid="btnChiudi" backgroundcssclass="Background">
                    </cc1:modalpopupextender>
                    <asp:Panel
                        ID="Panl1"
                        runat="server"
                        CssClass="Popup"
                        align="center"
                        Style="display: none">
                        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
                        <iframe style="width: 610px; height: 440px;" id="irm1" src="PopupDatiCorrieri.aspx" runat="server"></iframe>
                        <br />
                        <asp:Button ID="btnChiudi" runat="server" class="btn btn-danger" Text="Chiudi" />
                        <%--chiude il popup--%>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

