<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="AccettazioneOrdini.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <section class="h-100 h-custom">
        <div class="container text-align-center py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-12 col-xl-12">
                    <h3 class="text-center mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Accettazione Ordini</h3>
                    <%--card--%>
                    <div class="card rounded-3">
                        <div class="card-body p-4 p-md-5">

                           <%-- <div class="row align-items-center">
                                <div class="col-lg-8">--%>
                                    <div style="overflow-y: scroll;">
                                    <asp:GridView ID="grigliaOrdini" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                            <asp:BoundField DataField="chiaveRESO" HeaderText="chiaveRESO" SortExpression="chiaveRESO" Visible="False" />
                                            <asp:BoundField DataField="chiaveORDINE" HeaderText="chiaveORDINE" SortExpression="chiaveORDINE" />
                                            <asp:BoundField DataField="chiavePRODOTTO" HeaderText="chiavePRODOTTO" SortExpression="chiavePRODOTTO" />
                                            <asp:BoundField DataField="chiaveCLIENTI" HeaderText="chiaveCLIENTI" SortExpression="chiaveCLIENTI" />
                                            <asp:BoundField DataField="NUMERO_ORDINE" HeaderText="NUMERO_ORDINE" SortExpression="NUMERO_ORDINE" />
                                            <asp:BoundField DataField="NOMINATIVO" HeaderText="NOMINATIVO" ReadOnly="True" SortExpression="NOMINATIVO" Visible="False" />
                                            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                                            <asp:BoundField DataField="TITOLO" HeaderText="TITOLO" SortExpression="TITOLO" />
                                            <asp:BoundField DataField="DESCRIZIONE_RESO" HeaderText="DESCRIZIONE_RESO" SortExpression="DESCRIZIONE_RESO" Visible="False" />
                                            <asp:BoundField DataField="QTARESA" HeaderText="QTARESA" SortExpression="QTARESA" Visible="False" />
                                            <asp:BoundField DataField="DATARICHIESTA" HeaderText="DATARICHIESTA" SortExpression="DATARICHIESTA" Visible="False" />
                                            <asp:BoundField DataField="DATAEMISSIONE" HeaderText="DATAEMISSIONE" SortExpression="DATAEMISSIONE" Visible="False" />
                                        </Columns>
                                        <HeaderStyle BackColor="#B469FF" />
                                    </asp:GridView>
                                    </div>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spRESI_ORDINI_PRODOTTI_CLIENTISelectByNUMERO_ORDINE" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spRESI_ORDINI_PRODOTTI_CLIENTISelectByNUMERO_ORDINE" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                    <div class="col-lg-4">
                                        <asp:DropDownList ID="ddlAccettaRifiuta" CssClass="form-control" runat="server">
                                            <asp:ListItem Selected="True" Value="1">Accetta</asp:ListItem>
                                            <asp:ListItem Value="0">Rifiuta</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:Button ID="btnInvia" class="btn btn-secondary masterButton" runat="server" Text="Invia" OnClick="btnInvia_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>

