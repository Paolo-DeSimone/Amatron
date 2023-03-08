<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="AccettazioneResi.aspx.cs" Inherits="AccettazioneResi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../../assets/css/AMATRON.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:ScriptManager runat="server"></asp:ScriptManager>

    <%--section--%>
    <section class="h-100 h-custom">
        <div class="container text-align-center py-3 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-12 col-xl-12">
                    <%--card--%>
                    <h2 class="text-center py-2">Accettazione Resi</h2>
                    <div class="card rounded-3">
                        <div class="card-body p-4 p-md-5">
                            <div class="row align-items-center">
                                <div class="col-lg-11">
                                    <div style="overflow-y: scroll; height: 500px;">
                                                <asp:GridView ID="grigliaResi" CssClass="table table-bordered table-condensed" runat="server" AutoGenerateColumns="False" DataSourceID="sdsTabellaResi" OnSelectedIndexChanged="grigliaResi_SelectedIndexChanged" DataKeyNames="chiaveRESO">
                                                    <Columns>
                                                        <asp:CommandField ShowSelectButton="True" ButtonType="Button">
                                                        <ControlStyle CssClass="btn masterButton" />
                                                        </asp:CommandField>
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
                                            </div>
                                </div>
                                <div align="center" class="col-lg-1 align-items-center">
                                    <asp:Button ID="btnAccetta" class="btn masterButton" runat="server" Text="Accetta" />
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
                                    <asp:SqlDataSource ID="sdsTabellaResi" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spRESI_ORDINI_PRODOTTI_CLIENTISelectByNUMERO_ORDINE" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </section>
</asp:Content>

