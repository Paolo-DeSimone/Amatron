<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AggiungiProdotti.aspx.cs" Inherits="Venditori_AggiungiProdotti" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="/assets/css/ValerioVenditore.css" rel="stylesheet" />
    <%--    <link href="/assets/css/cssFrancescoVENDITORE.css" rel="stylesheet" />--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <title>Aggiungi Prodotti</title>
</head>
<body style="background-color: #8e53c9 !important;">
    <form id="form1" runat="server">
        <div class="card" style="display: flex; border-width: 0px;">
            <%-- creo la card di titolo e descrizione --%>
            <div class="card-header coloreHeader">
                <h3><strong>
                    <asp:Label ID="lblCaricaProdotti" runat="server" Text="CARICA PRODOTTI"></asp:Label></strong></h3>
            </div>
            <div class="card-body btnVenditoriOffWhite" style="padding-bottom: 10px;">

                <center>
                    <asp:Label ID="lblTitolo" runat="server" Text="Titolo:"></asp:Label>
                </center>
                <center>
                    <asp:TextBox ID="txtTitolo" Style="width: 500px;" runat="server"></asp:TextBox>
                </center>
                <p>
                </p>
                <center>
                    <asp:Literal ID="ltlDescrizione" runat="server">Descrizione:</asp:Literal>
                </center>
                <center>
                    <asp:TextBox ID="txtDescrizione" Style="width: 500px;" runat="server" TextMode="MultiLine"></asp:TextBox>
                </center>


                <%-- creo la card di caricamento immagini --%>
                <center>
                    <asp:Label ID="lblImmagine" runat="server" Text="Aggiungi immagini al prodotto:"></asp:Label>
                </center>
                <p></p>
                <%-- creo una lit immagini che andrà popolata nel cs con la preview delle immagini caricate --%>
                <asp:Literal ID="litImmagini" runat="server"></asp:Literal>
                <p></p>
                <center>
                    <asp:FileUpload ID="fileUpload1" runat="server" accept=".png,.jpg,.jpeg,.gif" />
                </center>

                <br />
                <%-- creo la card per categoria prezzo e quantità --%>
                <%--   <div class="card text-center " style="display: flex;">
            <div class="row ">
                <div class="col-md-4">
                </div>

                <div class="col-md-4">
                </div>--%>
                <%-- Script che permette di accettare solo numeri nella textbox prezzo --%>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <ajaxToolkit:FilteredTextBoxExtender ID="txtPrezzo_FilteredTextBoxExtender" runat="server"
                    Enabled="True" TargetControlID="txtPrezzo" FilterType="Numbers"></ajaxToolkit:FilteredTextBoxExtender>
                <div class="col-md-4">
                </div>
                <%--  strumento ajax per consentire solo numeri --%>
                <ajaxToolkit:FilteredTextBoxExtender ID="txtQuantita_FilteredTextBoxExtender" runat="server"
                    Enabled="True" TargetControlID="txtQuantita" FilterType="Numbers"></ajaxToolkit:FilteredTextBoxExtender>
                <%--  </div>--%>


                <div class="row">
                    <div class="col-sm-4 col-4">
                        <asp:Label ID="lblPrezzo" runat="server" class="margin-left:10px;" Text="Prezzo:"></asp:Label>
                    </div>
                    <div class="col-sm-6 col-6">
                        <asp:Label ID="lblCategoria" class="float" runat="server" Text="Categoria:"></asp:Label>
                    </div>
                    <div class="col-sm-2 col-2">
                        <asp:Label ID="lblQuantita" runat="server" Text="Quantità:"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4 col-4">
                        <asp:TextBox ID="txtPrezzo" runat="server" Style="margin: auto; width: 50px; margin-left: 10px;"></asp:TextBox>€
                    </div>
                    <div class="col-sm-6 col-6">
                        <asp:DropDownList ID="ddlCategoria" runat="server" Style="margin: auto; width: 180px;"></asp:DropDownList>
                    </div>
                    <div class="col-sm-2 col-2">
                        <asp:TextBox ID="txtQuantita" runat="server" Style="margin: auto; width: 50px;" TextMode="Number"></asp:TextBox>
                    </div>
                </div>
                <center>
                    <asp:Button ID="btnSalva" class="btn btnVenditoriPurple" runat="server" Text="Salva" />
                </center>



            </div>
        </div>


    </form>
</body>
</html>
