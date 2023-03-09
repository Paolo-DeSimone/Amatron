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
                                        <asp:Label ID="Label2" runat="server" Text="Stato Ordine:"></asp:Label>
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
                                            <asp:DropDownList ID="ddlUTENTE" runat="server" CssClass="form-select" DataSourceID="SqlDataSource1" DataTextField="Column1" DataValueField="chiaveCLIENTE"></asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spORDINI_CLIENTI_ddl" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                    </div>
                                    <div class="col-lg-2">
                                        <div class="dropdown">
                                            <asp:DropDownList ID="ddlSTATO" runat="server" CssClass="form-select">
                                                <asp:ListItem Value="S">Seleziona</asp:ListItem>
                                                <asp:ListItem Value="A">A - Ordine in Preparazione</asp:ListItem>
                                                <asp:ListItem Value="B">B - Consegna presa in carico</asp:ListItem>
                                                <asp:ListItem Value="C">C - Prodotto in consegna</asp:ListItem>
                                                <asp:ListItem Value="D">D - Prodotto consegnato</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
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
                                        <asp:Button ID="btnRifiuta" class="btn masterButton" runat="server" Text="Rifiuta" />
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-center">
                                <div class="col-lg-12">
                                    <div class="masterHideScroll masterCardHeight">
                                        <asp:UpdatePanel runat="server">
                                            <ContentTemplate>
                                                <asp:GridView ID="grigliaOrdini" CssClass="table table-bordered table-condensed" runat="server" OnSelectedIndexChanged="grigliaOrdini_SelectedIndexChanged" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                                                    <SelectedRowStyle BackColor="LightGray" />
                                                    <HeaderStyle BackColor="#B469FF" />
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="SqlDataSource4" runat="server"></asp:SqlDataSource>
                                                <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
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

