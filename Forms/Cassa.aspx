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
                    <p class="text-center py-2">
                        <strong>Questi sono i prodotti che hai aggiunto al carrello!</strong>
                        <br />
                        L'indirizzo di consegna attuale è
                        <asp:Label ID="lblMostraIndirizzoConsegna" runat="server" Text=""></asp:Label>
                        Se hai bisogno di modificalo o vuoi aderire ad Amatron Prime per avere uno sconto sulla consegna dei tuoi ordini, vai a 
                        <a href="/Forms/CLIENTI/Profilo/ProfiloModifica.aspx">Questo link.</a>
                        <br />
                        Se non hai bisogno di modificare la quanità dei prodotti in carrello selezionando una riga dalla griglia 
                        e poi premendo il pulsante "Modifica quantità", procedi con l'ordine cliccando sul bottone in basso a destra!
                        <br />
                    </p>
                    <div class="card rounded-3">
                        <div class="card-body p-4 p-md-5">
                            <div class="row align-items-center">
                                <div class="col-lg-11">
                                    <div class="masterHideScroll masterCardHeight">
                                        <div>
                                            <asp:Label ID="lblgrigliaCassa" runat="server" Text=""></asp:Label>
                                        </div>
                                        <asp:GridView ID="grigliaOrdini" CssClass="table table-bordered table-condensed" runat="server" DataSourceID="SqlDataSource2">
                                            <Columns>
                                                <asp:BoundField DataField="chiavePRODOTTO" HeaderText="chiavePRODOTTO" SortExpression="chiavePRODOTTO" />
                                                <asp:BoundField DataField="QTAprodotto" HeaderText="QTAprodotto" SortExpression="QTAprodotto" ReadOnly="True" />
                                                <asp:BoundField DataField="TITOLOprodotto" HeaderText="TITOLOprodotto" SortExpression="TITOLOprodotto" />
                                                <asp:BoundField DataField="DESCRIZIONEprodotto" HeaderText="DESCRIZIONEprodotto" SortExpression="DESCRIZIONEprodotto" />
                                                <asp:BoundField DataField="PREZZOprodotto" HeaderText="PREZZOprodotto" ReadOnly="True" SortExpression="PREZZOprodotto" />
                                                <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="IMMAGINEprodotto" SortExpression="IMMAGINEprodotto">
                                                    <ItemTemplate>
                                                        <asp:Image ID="Image" runat="server" DataField="IMMAGINEprodotto" Mode="ReadOnly" ImageUrl="IMMAGINEprodotto" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <SelectedRowStyle BackColor="LightGray" />
                                            <HeaderStyle BackColor="#B469FF" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AMATRONDBConnectionString %>" SelectCommand="spv_JoinCARRELLO_PRODOTTI_IMMAGINISelectAllItemsInCart" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="chiaveCLIENTE" SessionField="chiaveUSR" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div align="center" class="col-lg-1 align-items-center">
                            <p></p>
                            <a href="/Forms/AMATRON/PopupPaypalAMATRON.aspx">
                                <input type="button" runat="server" class="btn masterButton <%--masterBorderColor masterButton--%>" value="Concludi ordine" id="btnConcludiOrdine" />
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>

