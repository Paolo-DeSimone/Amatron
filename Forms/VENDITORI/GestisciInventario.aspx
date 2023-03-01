<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GestisciInventario.aspx.cs" Inherits="Venditori_GestisciInventario" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />

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
        <%-- creo la card --%>
        <div class="card" style="display: flex;">


            <div class="card-header text-center" style="background-color:#8e53c9;">
                <h3>Aggiungi scorte</h3>
            </div>
            <%-- inizio ard body --%>
            <div class="card-body text-center">
                <div class="row mt-3">
                    <div class="col-6">

                        <asp:Label ID="lblTitolo" runat="server" Text="Prodotti esauriti:"></asp:Label>
                        <br />
                        <asp:DropDownList ID="ddlProdotti" Class="btn btn-offwhite btn-outline-secondary" runat="server" Style="width: 160px;"></asp:DropDownList>
                    </div>
                    <%-- Script che permette di accettare solo numeri nella textbox --%>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>

                    <div class="col-6">

                        <asp:Label ID="lblQuantita" runat="server" Text="Quantità:"></asp:Label>

                        <asp:TextBox ID="txtQuantita" Class="form-control" runat="server" Style="width: 80px; margin: auto;" TextMode="Number"></asp:TextBox>

                    </div>
                </div>
                <%--  strumento ajax per consentire solo numeri --%>
                <ajaxToolkit:FilteredTextBoxExtender ID="txtQuantita_FilteredTextBoxExtender" runat="server"
                    Enabled="True" TargetControlID="txtQuantita" FilterType="Numbers"></ajaxToolkit:FilteredTextBoxExtender>
                <div class="col-md-12 mt-4">
                    <asp:Button ID="btnAggiungi" Class="btn btn-block btn-purple" runat="server" Text="Aggiungi" OnClick="btnAggiungi_Click" />
                </div>
            </div>
            </div>
    </form>
</body>
</html>
