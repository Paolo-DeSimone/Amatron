<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="AbilitazioneVenditoriCorrieriAMATRON.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
    <div class="container mt-5">
        <center><h2>Abilitazione Venditori e Corrieri</h2></center>
        <div class="row mt-5">
            <div class="col-6">
                <%--bottone per aprire popup abilita venditori--%>
                <div class="card">
                    <div class="card-body backgroundCard">
                        <center>
                        <asp:Button ID="btnAbilitaVenditori" class="text-center button" runat="server"  Text="Abilita venditori" />
                        </center>
                <%-- chiamata del popup --%>
                <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl1" TargetControlID="btnAbilitaVenditori"
                    CancelControlID="btnChiudiPopup" BackgroundCssClass="BackgroundPopup">
                </cc1:ModalPopupExtender>

                <%-- contenuto del popup --%>
                <asp:Panel
                    ID="Panl1"
                    runat="server"
                    CssClass="Popup"
                    align="center"
                    Style="display: none">

                    <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
                    <iframe style="width: 98%; height: 500px;" id="Iframe2" src="/Amatron/PopupAbilitaVenditoriAMATRON.aspx" runat="server"></iframe>
                    <br />
                    <asp:Button ID="btnChiudiPopup" CssClass="button" Style="height: 30px;" runat="server" Text="Chiudi"  />
                    <%--chiude il popup--%>
                </asp:Panel>
                       


                    </div>
                </div>
            </div>
            <div class="col-6">
                 <%--bottone per aprire popup abilita corrieri--%>
                <div class="card">
                    <div class="card-body backgroundCard">
                        <center>
                        <asp:Button ID="btnAbilitaCorrieri" class="text-center button" runat="server"  Text="Abilita corrieri" />
                        </center>
                <%-- chiamata del popup --%>
                <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="Panl1" TargetControlID="btnAbilitaCorrieri"
                    CancelControlID="btnChiudiPopup" BackgroundCssClass="BackgroundPopup">
                </cc1:ModalPopupExtender>

                <%-- contenuto del popup --%>
                <asp:Panel
                    ID="Panel1"
                    runat="server"
                    CssClass="Popup"
                    align="center"
                    Style="display: none">

                    <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
                    <iframe style="width: 98%; height: 500px;" id="Iframe1" src="/Amatron/PopupAbilitaCorrieriAMATRON.aspx" runat="server"></iframe>
                    <br />
                    <asp:Button ID="Button2" CssClass="button" Style="height: 30px;" runat="server" Text="Chiudi"  />
                    <%--chiude il popup--%>
                </asp:Panel>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

