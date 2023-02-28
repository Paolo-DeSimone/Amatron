<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GestisciInventario.aspx.cs" Inherits="Venditori_GestisciInventario" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>
<link href="../assets/css/ValerioVenditore.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Gestisci Inventario</title>
</head>
<body>
    <form id="form1" runat="server">
        <%-- creo la card --%>
        <div class="card" style="width: 18rem;">
            <div class="card-header">
                <center>
                    <h2>Aggiungi scorte</h2>
                </center>
            </div>
            <asp:Label ID="lblTitolo" runat="server" Text="Prodotti esauriti:"></asp:Label>
            <center>
                <asp:DropDownList ID="ddlProdotti" runat="server" Style="width: 160px;"></asp:DropDownList>
            </center>
            <p>
            </p>
            <%-- Script che permette di accettare solo numeri nella textbox --%>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <center>
                <asp:Label ID="lblQuantita" runat="server" Text="Quantità:"></asp:Label>
                <p></p>
                <asp:TextBox ID="txtQuantita" runat="server" Style="width: 40px;" TextMode="Number"></asp:TextBox>
            </center>
            <%--  strumento ajax per consentire solo numeri --%>
            <ajaxToolkit:FilteredTextBoxExtender ID="txtQuantita_FilteredTextBoxExtender" runat="server"
                Enabled="True" TargetControlID="txtQuantita" FilterType="Numbers"></ajaxToolkit:FilteredTextBoxExtender>

            <asp:Button ID="btnAggiungi" runat="server" Text="Aggiungi" />
        </div>
    </form>
</body>
</html>
