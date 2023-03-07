<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="Stato.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="/assets/js/notify.js"></script>
    <link href="/assets/css/notify.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="h-100 h-custom">
        <div class="container mt-1">
            <div class="row text-center">
                <center>
                    <div id="OrdiniCorriere" class="col-lg-6" runat="server"></div>
                </center>
                <div class="col-lg-3"></div>
                <center>
                    <div class="card w-80">
                        <div class="card-body">
                            <div class="row align-items-center">
                                <div class="col-md-8" style="overflow: auto; top: -1px; left: 0px; height: auto; width: auto;">


                                    <asp:GridView ID="grdSTATO" class="table" runat="server" CssClass="table table-bordered table-condensed" DataSourceID="sdsSTATO" AutoGenerateColumns="False" OnSelectedIndexChanged="grdSTATO_SelectedIndexChanged" DataKeyNames="chiaveSPEDIZIONE">
                                        <Columns>

                                            <asp:TemplateField>
                                                <HeaderTemplate>
                                                     <asp:CheckBox ID="CheckALL" runat="server" AutoPostBack="true" OncheckedChanged="CheckALL_CheckedChanged"/>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:CheckBox ID="Check" runat="server" OnCheckedChanged="Check_CheckedChanged"/>

                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:BoundField DataField="chiaveCORRIERE" HeaderText="chiaveCORRIERE" SortExpression="chiaveCORRIERE" Visible="False" />
                                            <asp:BoundField DataField="chiaveSPEDIZIONE" HeaderText="chiaveSPEDIZIONE" SortExpression="chiaveSPEDIZIONE" Visible="False" />
                                            <asp:BoundField DataField="STATO_SPEDIZIONE" HeaderText="STATO SPEDIZIONE" SortExpression="STATO_SPEDIZIONE" />
                                            <asp:BoundField DataField="DATA_SPEDIZIONE" HeaderText="DATA SPEDIZIONE" SortExpression="DATA_SPEDIZIONE" ReadOnly="True" />
                                            <asp:BoundField DataField="DATA_TRANSAZIONE" HeaderText="DATA TRANSAZIONE" SortExpression="DATA_TRANSAZIONE" ReadOnly="True" />
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

                                    <asp:DropDownList ID="ddlSTATO" runat="server" CssClass="form-select" Style="width: auto" AutoPostBack="True">
                                        <asp:ListItem Value="S">Seleziona</asp:ListItem>
                                        <asp:ListItem Value="A">A - Ordine in Preparazione</asp:ListItem>
                                        <asp:ListItem Value="B">B - Consegna presa in carico</asp:ListItem>
                                        <asp:ListItem Value="C">C - Prodotto in consegna</asp:ListItem>
                                        <asp:ListItem Value="D">D - Prodotto consegnato</asp:ListItem>
                                    </asp:DropDownList>

                                    <%-- pulsante --%>
                                    <asp:Button ID="btnStato" runat="server" class="btn btn-sm masterButton" Text="STATO SUCCESSIVO" OnClick="btnStato_Click" />

                                </div>
                            </div>
                        </div>
                    </div>
                </center>
            </div>
        </div>
    </section>
</asp:Content>

