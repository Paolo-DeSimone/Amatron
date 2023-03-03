<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="Stato.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="h-100 h-custom">
        <div class="container mt-1">
            <div class="row text-center">
                <div class="col-12">
                    <h2>Visualizzazione Ordini</h2>
                    <%-- card--%>
                    <center>
                        <div class="card w-75">
                            <div class="card-body">
                                <div class="row align-items-center">
                                    <div class="col-md-8" style="overflow: auto; top: -1px; left: 0px; height: auto; width: auto;">
                                        <asp:GridView ID="grdSTATO" class="table" runat="server" DataSourceID="sdsSTATO" AutoGenerateColumns="False" OnSelectedIndexChanged="grdSTATO_SelectedIndexChanged">
                                            <Columns>

                                                <asp:CommandField ShowSelectButton="True" ControlStyle-CssClass="btn btn-sm masterButton"/>

                                                <asp:BoundField DataField="chiaveCORRIERE" HeaderText="chiaveCORRIERE" SortExpression="chiaveCORRIERE" Visible="False" />
                                                <asp:BoundField DataField="chiaveSPEDIZIONE" HeaderText="chiaveSPEDIZIONE" SortExpression="chiaveSPEDIZIONE" Visible="False" />
                                                <asp:BoundField DataField="STATO_SPEDIZIONE" HeaderText="STATO_SPEDIZIONE" SortExpression="STATO_SPEDIZIONE" />
                                                <asp:BoundField DataField="DATA_ORA_SPEDIZIONE" HeaderText="DATA_ORA_SPEDIZIONE" SortExpression="DATA_ORA_SPEDIZIONE" />
                                                <asp:BoundField DataField="DATATRANSAZIONE" HeaderText="DATATRANSAZIONE" SortExpression="DATATRANSAZIONE" />
                                                <asp:BoundField DataField="NUMERO_ORDINE" HeaderText="NUMERO_ORDINE" SortExpression="NUMERO_ORDINE" />
                                                <asp:BoundField DataField="QTA" HeaderText="QTA" SortExpression="QTA" />
                                            </Columns>
                                            <HeaderStyle BackColor="#B469FF" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="sdsSTATO" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spSEDIZIONI_ORDINI_Select" SelectCommandType="StoredProcedure">
                                            <%--<SelectParameters>
                                                <asp:SessionParameter Name="chiave" SessionField="chiaveUSR" Type="Int32" />
                                            </SelectParameters>--%>
                                        </asp:SqlDataSource>
                                    </div>
                                    <div class="col-lg-2">


                                        <%-- pulsante --%>
                                        <asp:Button ID="btnStato" runat="server" class="btn btn-sm masterButton" Text="STATO SUCCESSIVO" OnClick="btnStato_Click" />

                                    </div>
                                </div>
                            </div>
                        </div>
                    </center>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

