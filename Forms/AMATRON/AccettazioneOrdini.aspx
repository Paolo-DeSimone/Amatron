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
                            <div class="row align-items-center">
                                <div class="col-lg-11">
                                    <div style="overflow-y: scroll; height: 500px;">
                                        <asp:GridView CssClass="table table-bordered table-condensed" ID="grigliaOrdini" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="grigliaOrdini_SelectedIndexChanged1">
                                            <Columns>
                                                <asp:CommandField ButtonType="Button" ShowSelectButton="True">
                                                <ControlStyle CssClass="btn masterButton" />
                                                </asp:CommandField>
                                                <asp:BoundField DataField="chiaveORDINE" HeaderText="chiaveORDINE" SortExpression="chiaveORDINE" Visible="False" />
                                                <asp:BoundField DataField="NUMERO_ORDINE" HeaderText="NUMERO_ORDINE" SortExpression="NUMERO_ORDINE" />
                                                <asp:BoundField DataField="chiaveCORRIERE" HeaderText="chiaveCORRIERE" SortExpression="chiaveCORRIERE" Visible="False" />
                                                <asp:BoundField DataField="EMAIL_CORRIERI" HeaderText="EMAIL_CORRIERI" SortExpression="EMAIL_CORRIERI" Visible="False" />
                                                <asp:BoundField DataField="DATATRANSAZIONE" HeaderText="DATATRANSAZIONE" SortExpression="DATATRANSAZIONE" />
                                                <asp:BoundField DataField="COGNOME" HeaderText="COGNOME" SortExpression="COGNOME" />
                                                <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                                                <asp:BoundField DataField="EMAIL_CLIENTI" HeaderText="EMAIL_CLIENTI" SortExpression="EMAIL_CLIENTI" Visible="False" />
                                                <asp:BoundField DataField="chiavePRODOTTO" HeaderText="chiavePRODOTTO" SortExpression="chiavePRODOTTO" Visible="False" />
                                                <asp:BoundField DataField="TITOLO" HeaderText="TITOLO" SortExpression="TITOLO" />
                                                <asp:BoundField DataField="QTA" HeaderText="QTA" SortExpression="QTA" />
                                                <asp:BoundField DataField="EMAIL_VENDITORE" HeaderText="EMAIL_VENDITORE" SortExpression="EMAIL_VENDITORE" Visible="False" />
                                                <asp:CheckBoxField DataField="GESTITO" HeaderText="GESTITO" SortExpression="GESTITO" />
                                            </Columns>
                                            <HeaderStyle BackColor="#B469FF" />
                                        </asp:GridView>
                                    </div>
                                </div>
                                <div align="center" class="col-lg-1 align-items-center">
                                    <asp:Button ID="btnAccetta" class="btn masterButton" runat="server" Text="Accetta" OnClick="btnAccetta_Click" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spORDINI_GESTISCI" SelectCommandType="StoredProcedure">
        </asp:SqlDataSource>
    </section>

</asp:Content>

