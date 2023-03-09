<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="VisualizzaProdotti.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="/assets/css/cssFrancescoVENDITORE.css" rel="stylesheet" />
    <link href="/assets/css/masterStyle.css" rel="stylesheet" />
    <link href="/assets/css/notify.css" rel="stylesheet" />
    <script src="/assets/js/notify.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        var modal = document.getElementById('ModalPopupExtender1')
        $(function () {
            $
        })

    </script>
    <div class="container">
        <%-- Titolo della pagina --%>
        <div class="CardMargine ">
            <h2>
                <svg xmlns="http://www.w3.org/2000/svg" width="64" height="64" fill="currentColor" class="bi bi-person-bounding-box" viewBox="0 0 16 16">
                    <path d="M7.752.066a.5.5 0 0 1 .496 0l3.75 2.143a.5.5 0 0 1 .252.434v3.995l3.498 2A.5.5 0 0 1 16 9.07v4.286a.5.5 0 0 1-.252.434l-3.75 2.143a.5.5 0 0 1-.496 0l-3.502-2-3.502 2.001a.5.5 0 0 1-.496 0l-3.75-2.143A.5.5 0 0 1 0 13.357V9.071a.5.5 0 0 1 .252-.434L3.75 6.638V2.643a.5.5 0 0 1 .252-.434L7.752.066ZM4.25 7.504 1.508 9.071l2.742 1.567 2.742-1.567L4.25 7.504ZM7.5 9.933l-2.75 1.571v3.134l2.75-1.571V9.933Zm1 3.134 2.75 1.571v-3.134L8.5 9.933v3.134Zm.508-3.996 2.742 1.567 2.742-1.567-2.742-1.567-2.742 1.567Zm2.242-2.433V3.504L8.5 5.076V8.21l2.75-1.572ZM7.5 8.21V5.076L4.75 3.504v3.134L7.5 8.21ZM5.258 2.643 8 4.21l2.742-1.567L8 1.076 5.258 2.643ZM15 9.933l-2.75 1.571v3.134L15 13.067V9.933ZM3.75 14.638v-3.134L1 9.933v3.134l2.75 1.571Z" />
                </svg>
                <asp:Label ID="lblProdottiInVendita" runat="server" Text="Prodotti in vendita"></asp:Label>
            </h2>
        </div>
        <p>In questa sezione puoi aggiungere un nuovo prodotto da mettere in vendita, aggiungere pi&ugrave; foto ad un prodotto selezionabile dalla griglia e modificarne la quantit&agrave; una volta esaurito</p>
        <div class="card">

            <%-- Body --%>
            <div class="card-body">
                <%-- Nel body andranno inseriti i due pulsanti in alto: Uno inserisci ed uno modifica qta prodotto
                    Subito sotto i button ci saranno tutti i prodotti messi in vendita dal venditore con titolo e descrizione--%>
                <div class="row mb-4 text-center">
                    <%-- I due button saranno due PopUp --%>
                    <div class=" col-md-4">
                        <asp:Button ID="btnAggiungiProdotto" class="btn masterButton" runat="server" Text="Aggiungi Nuovo Prodotto" />
                    </div>
                    <div class=" col-md-4 ">
                        <asp:Button ID="btnAggiungiImmagini" class="btn masterButton" runat="server" Text="Aggiungi Immagine" OnClick="btnAggiungiImmagini_Click" />
                    </div>
                    <div class=" col-md-4 ">
                        <asp:Button ID="btnModificaQtaProdotto" class="btn masterButton" runat="server" Text="Ricarica Prodotto" OnClick="btnModificaQtaProdotto_Click" />
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
                <div class="table-responsive" style="overflow-y: scroll; width: 100%; height: 500px;">

                    <%-- QUI INSERIRò LA GRIDVIEW AL POSTO DELLE COL E DELLE ROW PER POPOLARE LA PAGINA --%>
                    <asp:GridView ID="gridVisualizzaProdotti" class="table" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-condensed" DataKeyNames="chiave,chiave1" DataSourceID="sdsGRIDVisualizzaProdotti" OnSelectedIndexChanged="gridVisualizzaProdotti_SelectedIndexChanged">
                        <Columns>
                            <%--<asp:TemplateField>
                            <HeaderTemplate>
                                <asp:CheckBox ID="chkHeader" runat="server" AutoPostBack="true" Text="Seleziona Tutto" />
                            </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkVuoto" runat="server" Text="Seleziona" OnCheckedChanged="chkVuoto_CheckedChanged" />
                                </ItemTemplate>
                            </asp:TemplateField>--%>
                            <asp:BoundField DataField="chiave" HeaderText="chiave" InsertVisible="False" ReadOnly="True" SortExpression="chiave" Visible="False" />
                            <asp:BoundField DataField="chiaveVENDITORE" HeaderText="chiaveVENDITORE" SortExpression="chiaveVENDITORE" Visible="False" />
                            <asp:BoundField DataField="chiaveCATEGORIA" HeaderText="chiaveCATEGORIA" SortExpression="chiaveCATEGORIA" Visible="False" />
                            <asp:BoundField DataField="TITOLO" HeaderText="TITOLO" SortExpression="TITOLO" />
                            <asp:BoundField DataField="DESCRIZIONE" HeaderText="DESCRIZIONE" SortExpression="DESCRIZIONE" />
                            <asp:BoundField DataField="PREZZO" HeaderText="PREZZO" SortExpression="PREZZO" />
                            <asp:BoundField DataField="QTA" HeaderText="QTA" SortExpression="QTA" />
                            <asp:BoundField DataField="DATACARICAMENTO" HeaderText="DATA CARICAMENTO" SortExpression="DATACARICAMENTO" />
                            <asp:BoundField DataField="PERCAMATRON" HeaderText="% AMATRON" SortExpression="PERCAMATRON" />
                            <asp:BoundField DataField="chiave1" HeaderText="chiave1" InsertVisible="False" ReadOnly="True" SortExpression="chiave1" Visible="False" />
                            <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
                            <asp:CommandField ShowSelectButton="True" ButtonType="image" SelectImageUrl="../../assets/images/spunta_button.png" ControlStyle-Height="20px" ControlStyle-Width="24px" />
                        </Columns>
                        <SelectedRowStyle BackColor="#adaaaa" />
                        <HeaderStyle BackColor="#B469FF" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="sdsGRIDVisualizzaProdotti" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spPRODOTTI_SelectByVenditore" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="" Name="chiaveVENDITORE" SessionField="chiaveUSR" Type="Int32" />
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
        CssClass="masterPopup"
        align="center"
        Style="display: none">
        <div class="popupBoxWrapper">



            <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
            <iframe style="width: 560px; height: 500px; border-radius: 10px;" id="Iframe2" src="AggiungiProdotti.aspx" runat="server"></iframe>

        </div>
        <br />
        <div class="close-btn-wrapper">


            <button id="btnChiudiPopup" class="prova chiusura close-btn3" runat="server">

                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-circle">
                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                    <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
                </svg>
            </button>
        </div>
    </asp:Panel>
    <%-- chiamata del popup --%>
    <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server"
        PopupControlID="Panel1"
        TargetControlID="btnModificaQtaProdotto"
        CancelControlID="btnChiudiPopupInventario"
        BackgroundCssClass="masterPopupBG"
        Enabled="false">
    </cc1:ModalPopupExtender>
    <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel1"
        runat="server"
        CssClass="masterPopup"
        align="center"
        Style="display: none">
        <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>

        <iframe style="width: 500px; height: 300px; aspect-ratio: 16/9; border-radius: 10px;" id="Iframe1" src="GestisciInventario.aspx" runat="server"></iframe>

        <br />

        <div class="close-btn-wrapper">
            <button id="btnChiudiPopupInventario" class="prova chiusura close-btn3" runat="server">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-circle">
                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                    <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
                </svg>
            </button>
        </div>

    </asp:Panel>

    <%-- chiamata del popup --%>
    <cc1:ModalPopupExtender ID="ModalPopupExtender2" runat="server"
        PopupControlID="Panl3"
        TargetControlID="btnAggiungiImmagini"
        CancelControlID="btnChiudiImmagini"
        BackgroundCssClass="masterPopupBG"
        Enabled="false">
    </cc1:ModalPopupExtender>

    <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panl3"
        runat="server"
        CssClass="masterPopup"
        align="center"
        Style="display: none">
        <div class="popupBoxWrapper">



            <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
            <iframe style="width: 500px; height: 300px; aspect-ratio: 16/9; border-radius: 10px;" id="Iframe3" src="AggiungiImmagini.aspx" runat="server"></iframe>

        </div>
        <br />
        <div class="close-btn-wrapper">

            <button id="btnChiudiImmagini" class="prova chiusura close-btn3" runat="server">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-circle">
                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                    <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
                </svg>
            </button>
        </div>
    </asp:Panel>
</asp:Content>

