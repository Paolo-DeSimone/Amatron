<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="Cassa.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <section class="h-100 h-custom">
        <div class="container text-align-center py-3 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-12 col-xl-12">
                    <%--card--%>
                    <h2 class="text-center py-2">Cassa</h2>
                    <p>Questi sono i prodotti che hai aggiunto al carrello. Assicurati che la quantità sia corretta e procedi pure con l'ordinazione cliccando sul bottone in basso a destra!</p>
                    <div class="card rounded-3">
                        <div class="card-body p-4 p-md-5">
                            <div class="row align-items-center">
                                <div class="col-lg-11">
                                    <div class="masterHideScroll masterCardHeight">
                                        <contenttemplate>
                                            <asp:GridView ID="grigliaOrdini" CssClass="table table-bordered table-condensed" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="chiave">
                                                <Columns>
                                                    <asp:BoundField DataField="chiave" HeaderText="chiave" SortExpression="chiave" InsertVisible="False" ReadOnly="True" />
                                                    <asp:BoundField DataField="chiaveCLIENTE" HeaderText="chiaveCLIENTE" SortExpression="chiaveCLIENTE" />
                                                    <asp:BoundField DataField="chiavePRODOTTO" HeaderText="chiavePRODOTTO" SortExpression="chiavePRODOTTO" />
                                                    <asp:BoundField DataField="QTA" HeaderText="QTA" SortExpression="QTA" />
                                                </Columns>
                                                <SelectedRowStyle BackColor="LightGray" />
                                                <HeaderStyle BackColor="#B469FF" />
                                            </asp:GridView>
                                        </contenttemplate>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spCARRELLO_SelectByCliente" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="chiaveCLIENTE" SessionField="chiaveUSR" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </div>
                                </div>
                                <div align="center" class="col-lg-1 align-items-center">
                                    <a href="#">
                                        <asp:Button ID="btnRifiuta" class="btn masterButton" runat="server" Text="Concludi l'ordine" />
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>

