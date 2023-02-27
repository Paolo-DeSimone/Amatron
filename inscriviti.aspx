<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inscriviti.aspx.cs" Inherits="inscriviti" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Inscriviti</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <link href="assets/css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <%-- Introduzione di uno script manager --%>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <%-- pulsante che apre il popup --%>
        <asp:Button ID="btnApri" runat="server" Text="Iscriviti a Amatron Prime" />

        <%-- chiamata del popup --%>
        <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl1" TargetControlID="btnApri"
            CancelControlID="btnChiudi" BackgroundCssClass="Background">
        </cc1:ModalPopupExtender>

        <%-- contenuto del popup --%>
        <asp:Panel
            ID="Panl1"
            runat="server"
            CssClass="Popup"
            align="center"
            Style="display: none">
            <%--ci pensa lo script manager a renderlo visibile--%>

            <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
            <iframe style="width: 550px; height: 373px;  -webkit-border-radius: 10px 10px 10px 10px;" id="irm1" src="InscrizionePrimePopup.aspx" runat="server"></iframe>
            <br />
            <%--chiude il popup--%>
            <asp:Button ID="btnChiudi" class="btn btn-primary" runat="server" Text="Chiudi" />
        </asp:Panel>
    </form>
</body>
</html>
