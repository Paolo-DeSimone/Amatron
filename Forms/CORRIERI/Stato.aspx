﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="Stato.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="/assets/js/notify.js"></script>
    <link href="/assets/css/notify.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container mt-1">
        <div class="row text-center">
            <h4 id="OrdiniCorriere" runat="server"></h4>
        </div>
        <div class="col-lg-3"></div>
        <center>
            <div class="col-lg-10 text-center">
                <div class="card">
                    <div class="card-body">
                        <div class="row align-items-center">
                            <div class="col-lg-2">
                                <asp:DropDownList ID="ddlSTATO" runat="server" CssClass="form-select" Style="width: auto" AutoPostBack="True">
                                    <asp:ListItem Value="S">Filtro Stato Spedizione</asp:ListItem>
                                    <asp:ListItem Value="A">A - Ordine in Preparazione</asp:ListItem>
                                    <asp:ListItem Value="B">B - Consegna presa in carico</asp:ListItem>
                                    <asp:ListItem Value="C">C - Prodotto in consegna</asp:ListItem>
                                    <asp:ListItem Value="D">D - Prodotto consegnato</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-lg-4">
                                <%-- pulsante --%>
                                <asp:Button ID="btnStato" runat="server" class="btn btn-sm masterButton" Text="STATO SUCCESSIVO" OnClick="btnStato_Click" />
                            </div>
                        </div>
                        <div class="row text-center">
                            <div class="col">
                                <br />
                                <center>
                                    <asp:GridView ID="grdSTATO" class="table" runat="server" CssClass="table table-bordered table-condensed" DataSourceID="sdsSTATO" AutoGenerateColumns="False" OnSelectedIndexChanged="grdSTATO_SelectedIndexChanged" DataKeyNames="chiaveSPEDIZIONE">
                                        <Columns>
                                            <asp:BoundField DataField="chiaveCORRIERE" HeaderText="chiaveCORRIERE" SortExpression="chiaveCORRIERE" Visible="False" />
                                            <asp:BoundField DataField="chiaveSPEDIZIONE" HeaderText="chiaveSPEDIZIONE" SortExpression="chiaveSPEDIZIONE" Visible="False" />
                                            <asp:BoundField DataField="STATO_SPEDIZIONE" HeaderText="STATO_SPEDIZIONE" SortExpression="STATO_SPEDIZIONE" Visible="False" />
                                            <asp:BoundField DataField="statosp" HeaderText="STATO SPEDIZIONE" SortExpression="statosp" ReadOnly="True" />
                                            <asp:BoundField DataField="DATA_TRANSAZIONE" HeaderText="DATA VENDITA" SortExpression="DATA_TRANSAZIONE" ReadOnly="True" />
                                            <asp:BoundField DataField="DATA_SPEDIZIONE" HeaderText="DATA SPEDIZIONE" SortExpression="DATA_SPEDIZIONE" ReadOnly="True" />
                                            <asp:BoundField DataField="EMAIL_CLIENTI" HeaderText="EMAIL CLIENTE" SortExpression="EMAIL_CLIENTI" />
                                            <asp:BoundField DataField="NOME_CLIENTE" HeaderText="NOME CLIENTE" SortExpression="NOME_CLIENTE" ReadOnly="True" />
                                            <asp:BoundField DataField="INDIRIZZO_CLIENTE" HeaderText="INDIRIZZO CLIENTE" ReadOnly="True" SortExpression="INDIRIZZO_CLIENTE" />
                                            <asp:CommandField ShowSelectButton="True" ButtonType="Image" ControlStyle-Height="20px" ControlStyle-Width="24px" SelectImageUrl="../../assets/images/spunta_button.png" />
                                        </Columns>
                                        <SelectedRowStyle BackColor="LightGray" />
                                        <HeaderStyle BackColor="#B469FF" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="sdsSTATO" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spSPEDIZIONI_ORDINI_Select" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="chiave" SessionField="chiaveUSR" Type="Int32" />
                                            <asp:ControlParameter ControlID="ddlSTATO" Name="STATO" PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </center>
    </div>
</asp:Content>

