<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AggiungiProdotti.aspx.cs" Inherits="Venditori_AggiungiProdotti" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="../../assets/js/notify.js"></script>
    <link href="../../assets/css/notify.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="/assets/css/ValerioVenditore.css" rel="stylesheet" />
    <%--    <link href="/assets/css/cssFrancescoVENDITORE.css" rel="stylesheet" />--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <title>Aggiungi Prodotti</title>
</head>
<body>
    <form id="form1" runat="server">

        <center>
            <h2>
                <asp:Label ID="lblCaricaProdotti" runat="server" Text="CARICA PRODOTTI"></asp:Label>
            </h2>
        </center>
        <div>
            <div class="center">
                <div class="provacentro">

                    <div class="text-left">
                        <asp:Label Class="form-label" ID="lblTitolo" runat="server" Text="Titolo:"></asp:Label>
                        <asp:TextBox Class="form-control-sm" ID="txtTitolo" Style="width: 480px;" runat="server"></asp:TextBox>


                    </div>
                    <div class="text-left">
                        <asp:Literal ID="ltlDescrizione" runat="server">Descrizione:</asp:Literal>


                        <asp:TextBox Class="form-control-sm" ID="txtDescrizione" Style="width: 480px;" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <br />
                    </div>
                </div>


                <div class="provacentro">
                    <div class="text-left">
                        <asp:Label Class="form-label" ID="lblImmagine" runat="server" Text="Aggiungi immagini al prodotto:"></asp:Label>

                        <%-- creo una lit immagini che andrà popolata nel cs con la preview delle immagini caricate --%>
                        <asp:Literal ID="litImmagini" runat="server"></asp:Literal>
                        <p></p>
                        <asp:FileUpload Class="form-control" ID="fileUpload1" runat="server" Style="width: 480px;" accept=".png,.jpg,.jpeg,.gif" />
                    </div>
                </div>

                <br />

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



                <div class="text-left center row">

                    <div class="col-sm-4 col-4">
                        <asp:Label ID="lblPrezzo" runat="server" class="form-label" Text="Prezzo:"></asp:Label>
                    </div>
                    <div class="col-sm-6 col-6">
                        <asp:Label ID="lblCategoria" class="float form-label" runat="server" Text="Categoria:"></asp:Label>
                    </div>
                    <div class="col-sm-2 col-2">
                        <asp:Label Class="form-label" ID="lblQuantita" runat="server" Text="Quantità:"></asp:Label>
                    </div>
                </div>
                <div class="row text-left center">
                    <div class="col-sm-4 col-4">
                        <asp:TextBox Class="form-control-sm" ID="txtPrezzo" runat="server" Style="width: 50px;"></asp:TextBox>€
                    </div>
                    <div class="col-sm-6 col-6">

                        <asp:DropDownList class="form-control" ID="ddlCategoria" runat="server" Style="width: 150px;" list="ddlCategoria" DataSourceID="sdsCategoria" DataTextField="CATEGORIA" DataValueField="chiave"></asp:DropDownList>
                        <asp:SqlDataSource ID="sdsCategoria" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="SELECT [chiave], [CATEGORIA] FROM [CATEGORIE]"></asp:SqlDataSource>

                    </div>
                    <div class="col-sm-2 col-2">
                        <asp:TextBox Class="form-control-sm" ID="txtQuantita" runat="server" Style="width: 40px;" TextMode="Number"></asp:TextBox>
                    </div>
                </div>
                <center>

                    <asp:Button ID="btnSalva" class="btn btnVenditoriPurple form-control" runat="server" Text="Salva" OnClick="btnSalva_Click" />

                </center>



            </div>
        </div>


    </form>
</body>
</html>
