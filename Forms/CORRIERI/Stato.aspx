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
        <div style="text-align: center; color: black; margin: 0 auto;" class="testo">
            Benvenuto nella pagina dei corrieri qui puoi visualizzare e cambiare lo stato delle tue spedizioni.
        </div>
        <center>
            <div class="col-lg-10 text-center">
                <div class="card">
                    <div class="card-body">
                        <div class="row align-items-center">
                            <div class="col-lg-2">
                                <asp:Label ID="Label2" runat="server" Text="FILTRA PER NOME:"></asp:Label>
                            </div>
                            <div class="col-lg-3">
                                <asp:TextBox ID="txtFiltraNomeCliente" class="form-control" runat="server" Text=""></asp:TextBox>
                            </div>
                            <div class="col-lg-1">
                                <asp:Button ID="btnFiltraNomeCliente" runat="server" CssClass="btn masterButton" Text="Filtra" OnClick="btnFiltraNomeCliente_Click" />
                            </div>
                        </div>
                        <p></p>
                        <div class="row align-items-center">
                            <div class="col-lg-2">
                                <asp:Label ID="Label1" runat="server" Text="FILTRA I DATI PER:"></asp:Label>
                            </div>
                            <div class="col-lg-3">
                                <asp:DropDownList ID="ddlSTATO" runat="server" CssClass="form-select" Style="width: auto" >
                                    <asp:ListItem Value="S">TUTTE LE SPEDIZIONI</asp:ListItem>
                                    <asp:ListItem Value="A">A - Ordine in Preparazione</asp:ListItem>
                                    <asp:ListItem Value="B">B - Consegna presa in carico</asp:ListItem>
                                    <asp:ListItem Value="C">C - Prodotto in consegna</asp:ListItem>
                                    <asp:ListItem Value="D">D - Prodotto consegnato</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-lg-2">
                                <%-- pulsante --%>
                                <asp:Button ID="btnStato" runat="server" class="btn masterButton" Text="CONFERMA LO STATO AL PASSAGGIO SUCCESSIVO" OnClick="btnStato_Click" />
                            </div>
                        </div>
                        <div class="row text-center">
                            <div class="col" style="overflow-y: scroll; width: 100%; height: 500px;">
                                <br />
                                <asp:GridView ID="grdSTATO" runat="server" DataSourceID="sdsNoFilter" AutoGenerateColumns="False" CssClass="table table-bordered table-condensed" DataKeyNames="cSPED">
                                    <Columns>
                                        <asp:BoundField DataField="cSPED" Visible="false" />
                                        <asp:BoundField DataField="STATO_char" Visible="false" />
                                        <asp:BoundField DataField="NUMERO_ORDINE" HeaderText="N. ORD" ReadOnly="True" SortExpression="NUMERO_ORDINE" />
                                        <asp:BoundField DataField="clNOME" HeaderText="CLIENTE" ReadOnly="True" SortExpression="clNOME" />
                                        <asp:BoundField DataField="INDIRIZZO_CLIENTE" HeaderText="INDIRIZZO" ReadOnly="True" SortExpression="INDIRIZZO_CLIENTE" />
                                        <asp:BoundField DataField="STATO" HeaderText="STATO" ReadOnly="True" SortExpression="STATO" />
                                        <asp:BoundField DataField="dataA" HeaderText="DATA PREPARAZIONE" ReadOnly="True" SortExpression="dataA" />
                                        <asp:BoundField DataField="dataB" HeaderText="DATA PRESA IN CARICO" ReadOnly="True" SortExpression="dataB" />
                                        <asp:BoundField DataField="dataC" HeaderText="DATA FUORI IN CONSEGNA" ReadOnly="True" SortExpression="dataC" />
                                        <asp:BoundField DataField="dataD" HeaderText="DATA CONSEGNA" ReadOnly="True" SortExpression="dataD" />
                                        <asp:CommandField ShowSelectButton="true" ButtonType="Image" ControlStyle-Height="20px" ControlStyle-Width="24px" SelectImageUrl="../../assets/images/spunta_button.png" />
                                    </Columns>
                                    <SelectedRowStyle BackColor="LightGray" />
                                </asp:GridView>
                                <asp:SqlDataSource runat="server" ID="sdsNoFilter" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spSPEDIZIONI_KevinSelect" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:SessionParameter SessionField="chiaveUSR" DefaultValue="1" Name="chiaveCORRIERE" Type="Int32"></asp:SessionParameter>
                                        <asp:ControlParameter ControlID="ddlSTATO" PropertyName="SelectedValue" Name="STATO" Type="String"></asp:ControlParameter>
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource runat="server" ID="sdsFilter" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spSPEDIZIONI_KevinSelect_Filter" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="txtFiltraNomeCliente" PropertyName="Text" Name="NOME" Type="String" ConvertEmptyStringToNull="true"></asp:ControlParameter>
                                        <asp:SessionParameter SessionField="chiaveUSR" DefaultValue="1" Name="chiaveCORRIERE" Type="Int32"></asp:SessionParameter>
                                        <asp:ControlParameter ControlID="ddlSTATO" PropertyName="SelectedValue" Name="STATO" Type="String"></asp:ControlParameter>
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

