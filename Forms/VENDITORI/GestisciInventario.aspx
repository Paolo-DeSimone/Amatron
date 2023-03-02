﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GestisciInventario.aspx.cs" Inherits="Venditori_GestisciInventario" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
<link href="/assets/css/cssFrancescoVENDITORE.css" rel="stylesheet" />
<link href="/assets/css/masterStyle.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Gestisci Inventario</title>
    <style>
        .btn-purple {
            background-color: #a062de
        }

        .btn-offwhite {
            background-color: #f1f1f1
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <h2>
                <asp:Label ID="lblTitoloInventario" class="titoloInventario" runat="server" Text="Aggiungi prodotti"></asp:Label>
            </h2>
        </div>
        <div class="row center">
            <div class=" col-7">
                <div class="text-left">
                    <asp:Label ID="lblTitolo" runat="server" Text="Prodotti esauriti:"></asp:Label>
                    <div class="dropdown">
                        <asp:DropDownList ID="ddlProdotti" Class="form-control form-control-sm" runat="server" Style="width: 160px;" DataSourceID="SdsProdotti" DataTextField="TITOLO" DataValueField="chiave"></asp:DropDownList>
                    </div>
                </div>
            </div>

            <asp:SqlDataSource ID="SdsProdotti" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="SELECT [chiave], [TITOLO] FROM [PRODOTTI] WHERE ([QTA] = 0) ORDER BY [TITOLO]">
                <SelectParameters>
                    <asp:Parameter DefaultValue="0" Name="QTA" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>

            <div class=" col-3">
                <div class="text-right">
                    <asp:Label ID="lblQuantita" runat="server" Text="Quantità:"></asp:Label>
                    <asp:TextBox ID="txtQuantita" Class="form-control form-control-sm" runat="server" Style="width: 120px;" TextMode="Number"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="">
            <br />
            <center>
            <asp:Button ID="btnAggiungi" Class="btn masterButton" runat="server" Text="Salva" OnClick="btnAggiungi_Click" />
            </center>

        </div>

        <%-- Script che permette di accettare solo numeri nella textbox --%>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <%--  strumento ajax per consentire solo numeri --%>
        <ajaxToolkit:FilteredTextBoxExtender ID="txtQuantita_FilteredTextBoxExtender" runat="server"
            Enabled="True" TargetControlID="txtQuantita" FilterType="Numbers"></ajaxToolkit:FilteredTextBoxExtender>
    </form>
</body>
</html>
