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
                        <div class="card w-80">
                            <div class="card-body">
                                <div class="row align-items-center">
                                    <div class="col-md-8" style="overflow: auto; top: -1px; left: 0px; height: auto; width: auto;">


                                        <asp:GridView ID="grdSTATO" class="table" runat="server" CssClass="table table-bordered table-condensed" DataSourceID="sdsSTATO" AutoGenerateColumns="False" OnSelectedIndexChanged="grdSTATO_SelectedIndexChanged" DataKeyNames="chiaveSPEDIZIONE">
                                            <Columns>

                                                <asp:CommandField ShowSelectButton="True" />

                                                <asp:BoundField DataField="chiaveCORRIERE" HeaderText="chiaveCORRIERE" SortExpression="chiaveCORRIERE" Visible="False" />
                                                <asp:BoundField DataField="chiaveSPEDIZIONE" HeaderText="chiaveSPEDIZIONE" SortExpression="chiaveSPEDIZIONE" Visible="False" />
                                                <asp:BoundField DataField="STATO_SPEDIZIONE" HeaderText="STATO SPEDIZIONE" SortExpression="STATO_SPEDIZIONE" />
                                                <asp:BoundField DataField="DATA_ORA_SPEDIZIONE" HeaderText="DATA SPEDIZIONE" SortExpression="DATA_ORA_SPEDIZIONE" />
                                                <asp:BoundField DataField="DATATRANSAZIONE" HeaderText="DATA TRANSAZIONE" SortExpression="DATATRANSAZIONE" />
                                                <asp:BoundField DataField="EMAIL_CLIENTI" HeaderText="EMAIL CLIENTI" SortExpression="EMAIL_CLIENTI" />
                                                <asp:BoundField DataField="NUMERO_ORDINE" HeaderText="N. ORDINE" SortExpression="NUMERO_ORDINE" />
                                                <asp:BoundField DataField="QTA" HeaderText="QTA" SortExpression="QTA" />
                                            </Columns>
                                            <HeaderStyle BackColor="#B469FF" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="sdsSTATO" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spSPEDIZIONI_ORDINI_Select" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="chiave" SessionField="chiaveUSR" Type="Int32" />
                                                <asp:ControlParameter ControlID="ddlSTATO" Name="STATO" PropertyName="SelectedValue" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </div>
                                    <div class="col-md-1">

                                        <asp:DropDownList ID="ddlSTATO" runat="server" AutoPostBack="True" DataSourceID="sdsSTATOO" DataTextField="STATO_SPEDIZIONE" DataValueField="STATO_SPEDIZIONE"></asp:DropDownList>

                                        <asp:SqlDataSource ID="sdsSTATOO" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="SELECT STATO_SPEDIZIONE
from v_JoinSPEDIZIONI_ORDINI_CORRIERI_CLIENTI"></asp:SqlDataSource>

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

