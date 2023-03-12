<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="Cassa.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="/assets/css/cssFrancescoVENDITORE.css" rel="stylesheet" />
    <link href="/assets/css/masterStyle.css" rel="stylesheet" />
    <link href="/assets/css/notify.css" rel="stylesheet" />
    <script src="/assets/js/notify.js"></script>

    <script>

        function generatePayment(value) {
            if (value == "") {
                alert("inserire un'importo");
                FormData.
                    return;
            }
            paypal
                .Buttons({
                    // Sets up the transaction when a payment button is clicked
                    createOrder: function (data, actions) {
                        return actions.order.create({
                            purchase_units: [{
                                amount: {
                                    value: value
                                }
                            }]
                        });
                    },
                    // Finalize the transaction after payer approval
                    onApprove: function (data, actions) {
                        return actions.order.capture().then(function (details) {
                            console.log(details);
                            document.getElementById("transition").style.display = "block";
                        });
                    }
                }).render('#paypal-button-container');
        }
           window.onload = generatePayment(document.getElementById('payInput').value);
    </script>

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
                        Se hai bisogno di modificarlo o vuoi aderire ad Amatron Prime per avere uno sconto sulla consegna dei tuoi ordini, vai a 
                        <a href="/Forms/CLIENTI/Profilo/ProfiloModifica.aspx">Questo link.</a>
                        <br />
                        Se non hai bisogno di modificare la quanità dei prodotti in carrello selezionando una riga dalla griglia 
                        e poi premendo il pulsante "Modifica quantità", procedi con l'ordine cliccando sul bottone in basso a destra!
                        <br />
                    </p>

                    <div class="card rounded-3">
                        <div class="card-body p-4 p-md-5">
                            <div class="row align-items-center">
                                <div class="col-5">
                                    <b>
                                        <%--LBL IMPORTO TOTALE CARRELLO--%>
                                        <asp:Label runat="server" id="payInput" Text=""></asp:Label>
                                        <input type="text" value="5" />
                                    </b>
                                </div>
                                <div class="col-6">

                                    <b>
                                        <asp:Label ID="lblPagaCon" runat="server" Text="Paga con: "></asp:Label>
                                    <asp:Button ID="CheckPaypalPage" runat="server" Text="controlla come è la pagina di paypal" OnClick="CheckPaypalPage_Click" />
                                    </b>
                                    <button onclick="generatePayment(document.getElementById('1').value)">
                                        <img src="/assets/images/paypall.png" style="width: 7vw; height: 4vh;" />
                                    </button>
                                </div>
                            </div>
                            <div class="row align-items-center">
                                <p></p>
                            </div>
                            <div class="row align-items-center">
                                <%-- masterHideScroll --%>
                                <div class="table-responsive  masterCardHeight" style="overflow-y: scroll; width: 100%;">
                                    <div>
                                        <asp:Label ID="lblgrigliaCassa" runat="server" Text=""></asp:Label>
                                        <asp:Label ID="label1" runat="server" Text=""></asp:Label>
                                    </div>
                                    <asp:GridView ID="grigliaOrdini" CssClass="table table-bordered table-condensed" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                                        <Columns>
                                            <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="IMMAGINE" SortExpression="IMMAGINEprodotto">
                                                <ItemTemplate>
                                                    <asp:Image ID="Image" runat="server" DataField="IMMAGINE" Mode="ReadOnly" ImageUrl="IMMAGINEprodotto" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="chiavePRODOTTO" HeaderText="chiavePRODOTTO" SortExpression="chiavePRODOTTO" />
                                            <asp:BoundField DataField="QTAprodotto" HeaderText="QTA" SortExpression="QTAprodotto" ReadOnly="True" />
                                            <asp:BoundField DataField="TITOLOprodotto" HeaderText="TITOLO" SortExpression="TITOLOprodotto" />
                                            <asp:BoundField DataField="DESCRIZIONEprodotto" HeaderText="DESCRIZIONE" SortExpression="DESCRIZIONEprodotto" />
                                            <asp:BoundField DataField="PREZZOprodotto" HeaderText="PREZZO" ReadOnly="True" SortExpression="PREZZOprodotto" />

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
                </div>
            </div>
        </div>
    </section>
</asp:Content>

