<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="ResiOrdine.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container mt-1">
        <div class="row text-center">
            <h4 id="OrdiniCorriere" runat="server"></h4>
        </div>
        <div style="text-align: center; color: black; margin: 0 auto;" class="testo">
            <h2>Pagina Resi</h2>
        </div>
        <center>
            <div class="col-lg-10 text-center">
                <div class="card">
                    <div class="card-body">
                        <div class="row text-center">
                            <div class="col">
                                <br />
                                <center>
                                    <asp:GridView ID="grdreso" class="table" runat="server" CssClass="table table-bordered table-condensed" AutoGenerateColumns="False" DataKeyNames="chiaveprodotto" DataSourceID="sdsResi" OnSelectedIndexChanged="grdreso_SelectedIndexChanged">
                                        <Columns>
                                             <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="IMMAGINEprodotto" SortExpression="IMMAGINEprodotto">
                                                <ItemTemplate>
                                                    <asp:Image ID="Image" runat="server" DataField="IMMAGINE" Mode="ReadOnly" ImageUrl="IMMAGINEprodotto" />
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:BoundField DataField="chiaveprodotto" HeaderText="chiaveprodotto" Visible="true" InsertVisible="False" SortExpression="chiaveprodotto"/>

                                            <asp:BoundField DataField="TITOLO" HeaderText="TITOLO" SortExpression="TITOLO" />
                                            <asp:BoundField DataField="DESCRIZIONE" HeaderText="DESCRIZIONE" SortExpression="DESCRIZIONE" />
                                            <asp:BoundField DataField="PREZZO" HeaderText="PREZZO" SortExpression="PREZZO" />
                                            <asp:BoundField DataField="QTA" HeaderText="QTA" SortExpression="QTA" />
                                            <asp:BoundField DataField="chiaveordine" HeaderText="chiaveordine" Visible="true" InsertVisible="False" SortExpression="chiaveordine"/>
                                            <asp:CommandField ShowSelectButton="True" ButtonType="Image" ControlStyle-Height="20px" ControlStyle-Width="24px" SelectImageUrl="/assets/images/spunta_button.png" />
                                        </Columns>
                                        <SelectedRowStyle BackColor="LightGray" />
                                        <HeaderStyle BackColor="#B469FF" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="sdsResi" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spORDINI_SelectOrdineClienteReso" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="chiaveCLIENTE" SessionField="chiaveUSR" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>

                            </div>
                            <div align="center">
                                <asp:Button ID="btnReso" class="btn masterButton" runat="server" Text="Effettua Reso" OnClick="btnReso_Click"/>
                                <asp:Button ID="btnRecensione" class="btn masterButton" runat="server" Text="Effettua Recensione" OnClick="btnRecensione_Click" />

                            </div>
                            <%--<div align="center">
                                <asp:Button ID="btnReso" class="btn masterButton" runat="server" Text="Effettua Reso" OnClick="btnReso_Click"/>
                                <asp:Button ID="btnRecensione" class="btn masterButton" runat="server" Text="Effettua Recensione" OnClick="btnRecensione_Click" />
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </center>
    </div>
     <%-- Script Manager --%>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <%-- chiamata del popup --%>
    <cc1:ModalPopupExtender id="mp1" runat="server"
        PopupControlID="Panel1"
        TargetControlID="btnReso"
        cancelControlID="btnChiudiPopupReso"
        BackGroundCssClass="masterPopupBG"
        Enabled="false">
    </cc1:ModalPopupExtender>
    <%-- contenuto del popup --%>
    <asp:Panel
        ID="Panel1"
        runat="server"
        CssClass="masterPopup"
        align="center"
        Style="display: none">
        <div class="popupBoxWrapper">
            <%--l'iframe è un contenitore che ha la possibilità di richiamare una pagina--%>
            <iframe style="width: 100%; height: 300px; aspect-ratio: 16/9; border-radius: 10px;" id="Iframe1" src="ResoClientiPopup.aspx" runat="server"></iframe>
            <button id="btnChiudiPopupReso" class="chiusuraresi" runat="server">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-circle">
                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                    <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
                </svg>
            </button>
        </div>
        <br />
        <div class="close-btn-wrapper">
        </div>
    </asp:Panel>
</asp:Content>

