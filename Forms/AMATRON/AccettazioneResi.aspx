<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="AccettazioneResi.aspx.cs" Inherits="AccettazioneResi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--section--%>
    <section class="h-100 h-custom">
        <div class="container text-align-center py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-12 col-xl-12">
                    <%--card--%>
                    <h2 class="text-center mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Accettazione Resi</h2>
                    <div class="card rounded-3">
                        <div class="card-body p-4 p-md-5">
                            <div class="row align-items-center">
                                <div class="col-lg-10">
                                    <asp:GridView ID="grigliaResi" CssClass="table table-bordered table-condensed" runat="server" AutoGenerateColumns="False" DataSourceID="sdsTabellaResi" OnSelectedIndexChanged="grigliaResi_SelectedIndexChanged" DataKeyNames="chiaveRESO">
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                            <asp:BoundField DataField="chiaveRESO" HeaderText="chiaveRESO" SortExpression="chiaveRESO" Visible="False" />
                                            <asp:BoundField DataField="chiaveORDINE" HeaderText="chiaveORDINE" SortExpression="chiaveORDINE" Visible="False" />
                                            <asp:BoundField DataField="chiavePRODOTTO" HeaderText="chiavePRODOTTO" SortExpression="chiavePRODOTTO" Visible="False" />
                                            <asp:BoundField DataField="chiaveCLIENTI" HeaderText="chiaveCLIENTI" SortExpression="chiaveCLIENTI" Visible="False" />
                                            <asp:BoundField DataField="NUMERO_ORDINE" HeaderText="NUMERO_ORDINE" SortExpression="NUMERO_ORDINE" />
                                            <asp:BoundField DataField="NOMINATIVO" HeaderText="NOMINATIVO" SortExpression="NOMINATIVO" ReadOnly="True" />
                                            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                                            <asp:BoundField DataField="TITOLO" HeaderText="TITOLO" SortExpression="TITOLO" />
                                            <asp:BoundField DataField="DESCRIZIONE_RESO" HeaderText="DESCRIZIONE_RESO" SortExpression="DESCRIZIONE_RESO" />
                                            <asp:BoundField DataField="QTARESA" HeaderText="QTARESA" SortExpression="QTARESA" />
                                            <asp:BoundField DataField="DATARICHIESTA" HeaderText="DATARICHIESTA" SortExpression="DATARICHIESTA" />
                                            <asp:BoundField DataField="DATAEMISSIONE" HeaderText="DATAEMISSIONE" SortExpression="DATAEMISSIONE" />
                                        </Columns>
                                        <SelectedRowStyle BackColor="#adaaaa" Font-Bold="True" />
                                        <HeaderStyle BackColor="#B469FF" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="sdsTabellaResi" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spRESI_ORDINI_PRODOTTI_CLIENTISelectByNUMERO_ORDINE" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                </div>
                                <div class="col-lg-1">
                                    <asp:Button ID="btnAccetta" class="btn masterButton" runat="server" Text="Accetta" OnClick="btnAccetta_Click" />
                                </div>
                                <div class="col-lg-1">
                                    <asp:Button ID="btnRifiuta" class="btn masterButton" runat="server" Text="Rifiuta" OnClick="btnRifiuta_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

