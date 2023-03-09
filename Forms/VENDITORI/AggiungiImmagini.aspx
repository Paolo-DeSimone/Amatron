<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AggiungiImmagini.aspx.cs" Inherits="Forms_VENDITORI_AggiungiImmagini" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="../../assets/js/notify.js"></script>
    <link href="../../assets/css/notify.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="/assets/css/ValerioVenditore.css" rel="stylesheet" />
    <%--    <link href="/assets/css/cssFrancescoVENDITORE.css" rel="stylesheet" />--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center>
            <h2>
                <asp:Label ID="lblCaricaProdotti" runat="server" Text="CARICA IMMAGINI"></asp:Label>
            </h2>
        </center>
        <div class="text-center">
            <asp:Label Class="form-label" ID="lblImmagine" runat="server" Text="Aggiungi immagini a"></asp:Label>
            <asp:Label ID="lblProdotto" runat="server" Text=""></asp:Label>

            <%-- creo una lit immagini che andrà popolata nel cs con la preview delle immagini caricate --%>
            <asp:Literal ID="litImmagini" runat="server"></asp:Literal>
            <p></p>
            <center>
                <asp:FileUpload Class="form-control" multiple="multiple" ID="fileUpload1" runat="server" Style="width: 480px;" accept=".png,.jpg,.jpeg,.gif" />
                <br />
                <asp:Label ID="lblMessaggio" runat="server" Text=""></asp:Label>
                <br />
                <asp:Button ID="btnSalva" class="btn btnVenditoriPurple form-control" runat="server" Text="Salva" OnClick="btnSalva_Click" />
            </center>
        </div>
    </form>
</body>
</html>
