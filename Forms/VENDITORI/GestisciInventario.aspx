<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GestisciInventario.aspx.cs" Inherits="Venditori_GestisciInventario" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
<link href="/assets/css/cssFrancescoVENDITORE.css" rel="stylesheet" />
<link href="/assets/css/masterStyle.css" rel="stylesheet" />
<link href="/assets/css/notify.css" rel="stylesheet" />
<script src="/assets/js/notify.js"></script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Gestisci Quantità</title>
    <script>
        document.getElementById("btnAggiungi");        // Aggiungi un gestore di eventi per il clic del pulsante di chiusura        btnAggiungi.addEventListener("click", function () {            // Trova la pagina di popup           Response.redirect("VisualizzaProdotti.aspx")            // Nascondi la pagina di popup impostando lo stile di visualizzazione su "none"                    });
    </script>

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
