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
                            <div class="col-10">
                                <div class="row">
                                    <div class="col-lg-2">
                                        <asp:Label ID="Label5" runat="server" Text="Cliente:"></asp:Label>
                                    </div>
                                    <div class="col-lg-2">
                                    </div>
                                    <div class="col-lg-2">
                                        <asp:Label ID="Label3" runat="server" Text="Data inizio:"></asp:Label>
                                    </div>
                                    <div class="col-lg-2">
                                        <asp:Label ID="Label4" runat="server" Text="Data fine:"></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-2">
                                        <asp:DropDownList ID="ddlUTENTE" AppendDataBoundItems="true" runat="server" CssClass="form-select" DataSourceID="SqlDataSource1" DataTextField="Column1" DataValueField="chiaveCLIENTE">
                                            <asp:ListItem Value="">Seleziona</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spORDINI_CLIENTI_ddl" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                    </div>
                                    <div class="col-lg-2">
                                    </div>
                                    <div class="col-lg-2">
                                        <asp:TextBox ID="txtDInizio" Class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                    </div>
                                    <div class="col-lg-2">
                                        <asp:TextBox ID="txtDFine" Class="form-control" runat="server" TextMode="Date"></asp:TextBox>

                                    </div>
                                    <div class="col-lg-2 text-end">
                                        <asp:Button ID="btnCerca" Class="btn masterButton" runat="server" Text="Filtra" OnClick="btnCerca_Click" />
                                    </div>
                                    <div class="col-lg-2 align-items-center text-end">
                                        <asp:Button ID="btnAccetta" class="btn masterButton" runat="server" Text="Accetta" OnClick="btnAccetta_Click" />
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-center">
                                <div class="col-lg-12">
                                    <div class="masterHideScroll masterCardHeight">
                                        <asp:UpdatePanel runat="server">
                                            <ContentTemplate>
                                                <asp:GridView ID="grigliaOrdini" CssClass="table table-bordered table-condensed" runat="server" OnSelectedIndexChanged="grigliaOrdini_SelectedIndexChanged" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" DataKeyNames="chiaveORDINI">
                                                    <SelectedRowStyle BackColor="LightGray" />
                                                    <Columns>
                                                        <asp:BoundField DataField="NUMEROORDINE" HeaderText="NUM ORD" SortExpression="NUMEROORDINE" />
                                                        <asp:BoundField DataField="COGNOME" HeaderText="COGNOME" SortExpression="COGNOME" />
                                                        <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                                                        <asp:BoundField DataField="RAGIONESOCIALE" HeaderText="RAG.SOC.VEND" SortExpression="RAGIONESOCIALE" />
                                                        <asp:BoundField DataField="DATATRANSAZIONE_ORDINI" HeaderText="DATA TRANSAZIONE" SortExpression="DATATRANSAZIONE_ORDINI" />
                                                        <asp:BoundField DataField="TITOLO" HeaderText="PRODOTTO" SortExpression="TITOLO" />
                                                        <asp:BoundField DataField="QTA_ORDINI" HeaderText="QTA" SortExpression="QTA_ORDINI" />
                                                        <asp:BoundField DataField="STATO" HeaderText="STATO" SortExpression="STATO" Visible="False" />
                                                        <asp:BoundField DataField="chiavePRODOTTI" HeaderText="chiavePRODOTTI" SortExpression="chiavePRODOTTI" Visible="False" />
                                                        <asp:BoundField DataField="EMAIL_CLIENTI" HeaderText="EMAIL_CLIENTI" SortExpression="EMAIL_CLIENTI" Visible="False" />
                                                        <asp:BoundField DataField="EMAIL_VENDITORI" HeaderText="EMAIL_VENDITORI" SortExpression="EMAIL_VENDITORI" Visible="False" />
                                                        <asp:BoundField DataField="EMAIL_CORRIERI" HeaderText="EMAIL_CORRIERI" SortExpression="EMAIL_CORRIERI" Visible="False" />
                                                        <asp:BoundField DataField="chiaveORDINI" HeaderText="chiaveORDINI" SortExpression="chiaveORDINI" Visible="False" />
                                                        <asp:BoundField DataField="chiaveCORRIERE" HeaderText="chiaveCORRIERE" SortExpression="chiaveCORRIERE" Visible="False" />
                                                        <asp:BoundField DataField="chiavePRODOTTO" HeaderText="chiavePRODOTTO" SortExpression="chiavePRODOTTO" Visible="False" />
                                                        <asp:BoundField DataField="chiaveCLIENTE" HeaderText="chiaveCLIENTE" SortExpression="chiaveCLIENTE" Visible="False" />
                                                        <asp:BoundField DataField="chiaveVENDITORE" HeaderText="chiaveVENDITORE" SortExpression="chiaveVENDITORE" Visible="False" />
                                                        <asp:CheckBoxField DataField="GESTITO" HeaderText="STATO" SortExpression="GESTITO" />
                                                        <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/assets/images/spunta_button.png">
                                                            <ControlStyle Height="20px" Width="24px" />
                                                        </asp:CommandField>
                                                    </Columns>
                                                    <HeaderStyle BackColor="#B469FF" />
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spORDINI_GESTISCI" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spORDINI_GESTISCI" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
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

