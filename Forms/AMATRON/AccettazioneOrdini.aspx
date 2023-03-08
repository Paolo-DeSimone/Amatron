<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="AccettazioneOrdini.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:ScriptManager runat="server"></asp:ScriptManager>

    <section class="h-100 h-custom">
        <div class="container text-align-center py-3 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-12 col-xl-12">
                    <%--card--%>
                    <h2 class="text-center py-2">Accettazione Ordini</h2>
                    <div class="card rounded-3">
                        <div class="card-body p-4 p-md-5">
                            <div class="row align-items-center">
                                <div class="col-lg-11">
                                    <div class="masterHideScroll masterCardHeight">
                                        <asp:UpdatePanel runat="server">
                                            <ContentTemplate>
                                                <asp:GridView ID="grigliaOrdini" CssClass="table table-bordered table-condensed" runat="server" OnSelectedIndexChanged="grigliaOrdini_SelectedIndexChanged" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                                                    <Columns>
                                                        <asp:BoundField DataField="NUMERO_ORDINE" HeaderText="N°ORDINE" SortExpression="NUMERO_ORDINE" />
                                                        <asp:BoundField DataField="COGNOME_CLIENTI" HeaderText="COGNOME CLIENTE" SortExpression="COGNOME_CLIENTI" />
                                                        <asp:BoundField DataField="NOME_CLIENTI" HeaderText="NOME CLIENTE" SortExpression="NOME_CLIENTI" />
                                                        <asp:BoundField DataField="EMAIL_CLIENTI" HeaderText="EMAIL_CLIENTI" SortExpression="EMAIL_CLIENTI" Visible="False" />
                                                        <asp:BoundField DataField="RAGIONE_SOCIALE" HeaderText="RAG.SOCIALE" SortExpression="RAGIONE_SOCIALE" />
                                                        <asp:BoundField DataField="EMAIL_VENDITORE" HeaderText="EMAIL_VENDITORE" SortExpression="EMAIL_VENDITORE" Visible="False" />
                                                        <asp:BoundField DataField="DATATRANSAZIONE" HeaderText="DATATRANSAZIONE" SortExpression="DATATRANSAZIONE" />
                                                        <asp:BoundField DataField="TITOLO" HeaderText="PRODOTTO" SortExpression="TITOLO" />
                                                        <asp:BoundField DataField="QTA" HeaderText="QTA" SortExpression="QTA" />
                                                        <asp:BoundField DataField="EMAIL_CORRIERI" HeaderText="EMAIL_CORRIERI" SortExpression="EMAIL_CORRIERI" Visible="False" />
                                                        <asp:BoundField DataField="STATO_SPEDIZIONE" HeaderText="STATO" SortExpression="STATO_SPEDIZIONE" />
                                                        <asp:CommandField ButtonType="Image" SelectImageUrl="~/assets/images/spunta_button.png" ShowSelectButton="True">
                                                        <ControlStyle Height="20px" Width="24px" />
                                                        </asp:CommandField>
                                                    </Columns>
                                                    <SelectedRowStyle BackColor="LightGray" />
                                                    <HeaderStyle BackColor="#B469FF" />
                                                </asp:GridView>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spORDINI_GESTISCI" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                    </div>
                                </div>
                                <div align="center" class="col-lg-1 align-items-center">
                                    <asp:Button ID="btnAccetta" class="btn masterButton" runat="server" Text="Accetta" OnClick="btnAccetta_Click" />
                                    <br />
                                    <br />
                                    <asp:Button ID="btnRifiuta" class="btn masterButton" runat="server" Text="Rifiuta" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>

