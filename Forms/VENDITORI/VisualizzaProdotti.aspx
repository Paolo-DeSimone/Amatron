<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="VisualizzaProdotti.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="/assets/css/cssFrancescoVENDITORE.css" rel="stylesheet" />
    <link href="/assets/css/masterStyle.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <%-- Titolo della pagina --%>
        <div class="CardMargine ">
            <h2>
                <asp:Label ID="lblProdottiInVendita" runat="server" Text="Prodotti in vendita"></asp:Label>
            </h2>
        </div>
        <div class="card">

            <%-- Body --%>
            <div class="card-body">
                <%-- Nel body andranno inseriti i due pulsanti in alto: Uno inserisci ed uno modifica qta prodotto
                    Subito sotto i button ci saranno tutti i prodotti messi in vendita dal venditore con titolo e descrizione--%>
                <div class="row mb-4">
                    <%-- I due button saranno due PopUp --%>

                    <div class=" col-md-2 ">
                    </div>
                    <div class=" col-md-6">
                        <asp:Button ID="btnAggiungiProdotto" class="btn masterButton" runat="server" Text="Aggiungi Nuovo Prodotto" />
                    </div>
                    <div class=" col-md-4 ">
                        <asp:Button ID="btnModificaQtaProdotto" class="btn masterButton" runat="server" Text="Ricarica Prodotto" />
                    </div>
                </div>
                <%-- Questo imgContainer ci servirà per popolare tutti i prodotti che ha a disposizione un venditore
                        popolando la row sottostante, abbiamo infati copiato le stesse div nel file .cs per ricreare il formato--%>
                <div id="imgContainer" runat="server" class="row"></div>
                <%-- <div class="row">--%>
                <%-- prima colonna --%>
                <%-- Qui ci andranno i prodotti,con un ciclo andremo a riempire i vari spazi utili andando a recuperare tutti i prodotti 
                        che ha messo in vendita il venditore--%>
                <%-- <div class=" col-md-6 ">
                        <div class="card cardIncard">
                            <div class="row">
                                <div class="col-md-5">
                                    <img alt="" src="/assets/images/amatron-icon.png" class=" img-thumbnail boxImg" />
                                </div>
                                <div class="col-md-7 allineato">
                                    <h5>
                                        <asp:Label ID="lblTitoloProdotto" class="contenimentoTitolo" runat="server" Text="TITOLO 1 DI UN PRODOTTO MOLTO LUNGHISSIMOfhgyhdfgysdfgsdygfysdyfgd"></asp:Label></h5>
                                    <h5>
                                        <asp:Label ID="lblPrezzo" runat="server" Text="PREZZO 1"></asp:Label></h5>
                                    <h6>
                                        <asp:Label ID="lblCategoria" runat="server" Text="CATEGORIA 1"></asp:Label>
                                    </h6>
                                    <asp:Label ID="lblDescrizioneProdotto" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque elementum libero porttitor purus accumsan,
                            eget ultrices metus aliquet. Aliquam non ornare nulla. Aliquam et sollicitudin diam, malesuada lacinia enim. Integer at nibh tempus, lacinia diam auctor, vulputate augue. 
                            Proin faucibus pharetra ante eget pharetra. Mauris lacinia libero consequat, sagittis purus. "
                                        class="DescrizioneProdotto"></asp:Label>
                                    <asp:Label ID="lblData" runat="server" class="text-secondary" Text="DATA"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                <div class="table-responsive">
                    <%-- QUI INSERIRò LA GRIDVIEW AL POSTO DELLE COL E DELLE ROW PER POPOLARE LA PAGINA --%>
                    <asp:GridView ID="gridVisualizzaProdotti" class="table" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-condensed" DataKeyNames="chiave,chiave1" DataSourceID="sdsGRIDVisualizzaProdotti" OnSelectedIndexChanged="gridVisualizzaProdotti_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="chiave" HeaderText="chiave" InsertVisible="False" ReadOnly="True" SortExpression="chiave" Visible="False" />
                            <asp:BoundField DataField="chiaveVENDITORE" HeaderText="chiaveVENDITORE" SortExpression="chiaveVENDITORE" Visible="False" />
                            <asp:BoundField DataField="chiaveCATEGORIA" HeaderText="chiaveCATEGORIA" SortExpression="chiaveCATEGORIA" Visible="False" />
                            <asp:BoundField DataField="TITOLO" HeaderText="TITOLO" SortExpression="TITOLO" />
                            <asp:BoundField DataField="DESCRIZIONE" HeaderText="DESCRIZIONE" SortExpression="DESCRIZIONE" />
                            <asp:BoundField DataField="PREZZO" HeaderText="PREZZO" SortExpression="PREZZO" />
                            <asp:BoundField DataField="QTA" HeaderText="QTA" SortExpression="QTA" />
                            <asp:BoundField DataField="DATACARICAMENTO" HeaderText="DATACARICAMENTO" SortExpression="DATACARICAMENTO" />
                            <asp:BoundField DataField="PERCAMATRON" HeaderText="PERCAMATRON" SortExpression="PERCAMATRON" />
                            <asp:BoundField DataField="chiave1" HeaderText="chiave1" InsertVisible="False" ReadOnly="True" SortExpression="chiave1" Visible="False" />
                            <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
                        </Columns>
                        <HeaderStyle BackColor="#B469FF" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="sdsGRIDVisualizzaProdotti" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spPRODOTTI_SelectByVenditore" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="chiaveVENDITORE" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
    <%-- </div>--%>
    <%-- Script Manager --%>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <%-- chiamata del popup --%>
    <cc1:ModalPopupExtender ID="mp1" runat="server"
        PopupControlID="Panl1"
        TargetControlID="btnAggiungiProdotto"
        CancelControlID="btnChiudiPopup"
        BackgroundCssClass="masterPopupBG">
    </cc1:ModalPopupExtender>

    <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panl1"
        runat="server"
        CssClass="Popup"
        align="center"
        Style="display: none">
        <div class="popupBoxWrapper">


        
        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
        <iframe style=" width: 560px; height: 500px;" id="Iframe2" src="AggiungiProdotti.aspx"  runat="server"></iframe>

        </div>
        <br />
        <div class="close-btn-wrapper">

            <button id="btnChiudiPopup" class="prova chiusura close-btn2" runat="server" text="X">               x           </button>
        </div>
    </asp:Panel>
    <%-- chiamata del popup --%>
    <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server"
        PopupControlID="Panel1"
        TargetControlID="btnModificaQtaProdotto"
        CancelControlID="btnChiudiPopupInventario"
        BackgroundCssClass="masterPopupBG">
    </cc1:ModalPopupExtender>
    <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel1"
        runat="server"
        CssClass="PopupGestisciInventario"
        align="center"
        Style="display: none">
        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>

        <iframe style="width: 300px; height: 300px; aspect-ratio: 16/9" id="Iframe1" src="GestisciInventario.aspx" runat="server"></iframe>
        <br />


        <div class="close-btn-wrapper">
            <button id="btnChiudiPopupInventario" class="prova chiusura close-btn3" runat="server" text="X"> x
            </button>
        </div>

    </asp:Panel>
</asp:Content>

