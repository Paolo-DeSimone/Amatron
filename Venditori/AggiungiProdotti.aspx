<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AggiungiProdotti.aspx.cs" Inherits="Venditori_AggiungiProdotti" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../assets/css/ValerioVenditore.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <title>Aggiungi Prodotti</title>
</head>
<body>
    <form id="form1" runat="server">

        <%-- creo la card di titolo e descrizione --%>
        <div class="card" style="width: 18rem;">
            <div class="card-header">
                <center>
                    <h2>Aggiungi prodotto</h2>
                </center>
            </div>
            <asp:Label ID="lblTitolo" runat="server" Text="Titolo:"></asp:Label>
            <asp:TextBox ID="txtTitolo" runat="server"></asp:TextBox>
            <p>
            </p>
            <center>
                <asp:Literal ID="ltlDescrizione" runat="server">Descrizione:</asp:Literal>
            </center>
            <asp:TextBox ID="txtDescrizione" runat="server" TextMode="MultiLine"></asp:TextBox>
        </div>
        <%-- creo la card di caricamento immagini --%>
        <div class="card card2" style="width: 18rem;">
            <asp:Label ID="lblImmagine" runat="server" Text="Aggiungi immagini al prodotto:"></asp:Label>
            <p></p>
            <%-- creo una lit immagini che andrà popolata nel cs con la preview delle immagini caricate --%>
            <asp:Literal ID="litImmagini" runat="server"></asp:Literal>
            <p></p>
            <asp:FileUpload ID="fileUpload1" runat="server" />
        </div>
        <%-- creo la card per categoria prezzo e quantità --%>
        <div class="card card3" style="width: 18rem;">
            <div class="row">
                <center>
                    <asp:Label ID="lblCategoria" runat="server" Text="Categoria:"></asp:Label>
                    <center>
                        <asp:DropDownList ID="ddlCategoria" runat="server" Style="width: 160px;"></asp:DropDownList>
                    </center>
                    <p></p>
                    <asp:Label ID="lblPrezzo" runat="server" Text="Prezzo:"></asp:Label>
                    <p></p>
                    <asp:TextBox ID="txtPrezzo" runat="server" Style="width: 50px;"></asp:TextBox>€

                <%-- Script che permette di accettare solo numeri nella textbox prezzo --%>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <ajaxToolkit:FilteredTextBoxExtender ID="txtPrezzo_FilteredTextBoxExtender" runat="server"
                        Enabled="True" TargetControlID="txtPrezzo" FilterType="Numbers"></ajaxToolkit:FilteredTextBoxExtender>
                    <p></p>
                    <asp:Label ID="lblQuantita" runat="server" Text="Quantità:"></asp:Label>
                    <p></p>
                    <asp:TextBox ID="txtQuantita" runat="server" Style="width: 40px;" TextMode="Number"></asp:TextBox>
                    <%--  strumento ajax per consentire solo numeri --%>
                    <ajaxToolkit:FilteredTextBoxExtender ID="txtQuantita_FilteredTextBoxExtender" runat="server"
                        Enabled="True" TargetControlID="txtQuantita" FilterType="Numbers"></ajaxToolkit:FilteredTextBoxExtender>

                </center>
            </div>

        </div>
    </form>
</body>
</html>
