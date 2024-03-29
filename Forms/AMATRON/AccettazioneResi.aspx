﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="AccettazioneResi.aspx.cs" Inherits="AccettazioneResi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../../assets/css/AMATRON.css" rel="stylesheet" />
    <script src="Assets/js/notify.js"></script>
    <link href="../../assets/css/notify.css" rel="stylesheet" />
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

                            <div class="col-10">
                                <div class="row">
                                    <div class="col-lg-2">
                                        <asp:Label ID="Label1" runat="server" Text="Cliente:"></asp:Label>
                                    </div>
                                    <div class="col-lg-2">
                                        <asp:Label ID="Label5" runat="server" Text="Numero Ordine:"></asp:Label>
                                    </div>

                                    <div class="col-lg-2">
                                        <asp:Label ID="Label3" runat="server" Text="Seleziona richiesta da:"></asp:Label>
                                    </div>
                                    <div class="col-lg-2">
                                        <asp:Label ID="Label4" runat="server" Text="a:"></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-2">
                                        <asp:TextBox ID="txtCliente" Class="form-control" runat="server"></asp:TextBox>
                                    </div>

                                    <div class="col-lg-2">
                                        <asp:TextBox ID="txtNumeroOrdine" Class="form-control" runat="server" TextMode="Number"></asp:TextBox>
                                    </div>

                                    <div class="col-lg-2">
                                        <asp:TextBox ID="txtDInizio" Class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                    </div>
                                    <div class="col-lg-2">
                                        <asp:TextBox ID="txtDFine" Class="form-control" runat="server" TextMode="Date"></asp:TextBox>

                                    </div>
                                    <div class="col-lg-2 text-end">
                                        <asp:Button ID="btnFiltra" Class="btn masterButton" runat="server" Text="Filtra" OnClick="btnFiltra_Click" />
                                    </div>
                                    <div class="col-lg-2 align-items-center text-end">
                                        <asp:Button ID="btnAccetta" class="btn masterButton" runat="server" Text="Accetta" OnClick="btnAccetta_Click" />
                                        <asp:Button ID="btnRifiuta" class="btn masterButton" runat="server" Text="Rifiuta" OnClick="btnRifiuta_Click"/>
                                    </div>
                                </div>
                                <br />
                            </div>

                            <div class="row align-items-center">
                                <div class="col-lg-11">
                                    <div style="overflow-y: scroll; height: 500px;">
                                        <asp:GridView ID="grigliaResi" CssClass="table table-bordered table-condensed" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="grigliaResi_SelectedIndexChanged" DataKeyNames="chiaveRESO">
                                            <SelectedRowStyle BackColor="LightGray" />
                                            <Columns>
                                                <asp:BoundField DataField="chiaveRESO" HeaderText="chiaveRESO" SortExpression="chiaveRESO" Visible="False" />
                                                <asp:BoundField DataField="NOMINATIVO" HeaderText="NOMINATIVO" SortExpression="NOMINATIVO" />
                                                <asp:BoundField DataField="ORDINE" HeaderText="ORDINE" SortExpression="ORDINE" />
                                                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                                                <asp:BoundField DataField="PRODOTTO" HeaderText="PRODOTTO" SortExpression="PRODOTTO" />
                                                <asp:BoundField DataField="DESCRIZIONE_RESO" HeaderText="DESCRIZIONE RESO" SortExpression="DESCRIZIONE_RESO" />
                                                <asp:BoundField DataField="QTARESA" HeaderText="QTA RESA" SortExpression="TITOLO" />
                                                <asp:BoundField DataField="DATARICHIESTA" HeaderText="DATA RICHIESTA" SortExpression="DATARICHIESTA" DataFormatString="{0:d}" />
                                                <asp:BoundField DataField="DATAEMISSIONE" HeaderText="DATA EMISSIONE" SortExpression="DATAEMISSIONE" DataFormatString="{0:d}" />
                                                <asp:BoundField DataField="ACCETTAZIONE" HeaderText="ESITO RESO" SortExpression="ACCETTAZIONE" />
                                                <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/assets/images/spunta_button.png">
                                                    <ControlStyle Height="20px" Width="24px" />
                                                </asp:CommandField>
                                            </Columns>
                                            <SelectedRowStyle BackColor="#adaaaa" Font-Bold="True" />
                                            <HeaderStyle BackColor="#B469FF" />
                                        </asp:GridView>
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

