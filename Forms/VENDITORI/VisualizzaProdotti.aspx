<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="VisualizzaProdotti.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <link href="../assets/css/cssFrancescoVENDITORE.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="card CardMargine">
            <div class="card-header titoloVenditoreHeader">
                <%-- Label nella quale andremo a prendere il nome del venditore che apre la pagina
                    Lo recupereremo da una session--%>
                <strong>
                    <asp:Label ID="lblNomeVenditore" runat="server" Text="PROVA"></asp:Label></strong>
            </div>
            <div class="card-body">
                <%-- Nel body andranno inseriti i due pulsanti in alto: Uno inserisci ed uno modifica qta prodotto
                    Subito sotto i button ci saranno tutti i prodotti messi in vendita dal venditore con titolo e descrizione--%>
                <div class="row mb-5 mt-3">
                    <%-- I due button saranno due PopUp --%>

                    <div class=" col-md-2 ">
                    </div>
                    <div class=" col-md-6">
                        <asp:Button ID="btnAggiungiProdotto" runat="server" Text="Aggiungi Nuovo Prodotto" />
                    </div>
                    <div class=" col-md-4 ">
                        <asp:Button ID="btnModificaQtaProdotto" runat="server" Text="Ricarica Prodotto" />
                    </div>
                </div>


                <div class="row">
                    <%-- Qui ci andranno i prodotti,con un ciclo andremo a riempire i vari spazi utili andando a recuperare tutti i prodotti 
                        che ha messo in vendita il venditore--%>
                    <div class=" col-md-6 ">
                            <div class="container ">
                        <div class="row">
                                <div class="col-md-4">
                                    <img alt="" src="../assets/images/amatron-icon.png" class="grandezzaImg" />
                                </div>

                                <div class="col-md-6 ">
                                    <asp:Label ID="lblTitoloProdotto" runat="server" Text="TITOLO 1"></asp:Label>
                                    <br />
                                    <asp:Label ID="lblDescrizioneProdotto" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque elementum libero porttitor purus accumsan,
                            eget ultrices metus aliquet. Aliquam non ornare nulla. Aliquam et sollicitudin diam, malesuada lacinia enim. Integer at nibh tempus, lacinia diam auctor, vulputate augue. 
                            Proin faucibus pharetra ante eget pharetra. Mauris lacinia libero consequat, sagittis purus. " class="DescrizioneProdotto"></asp:Label>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    <div class="col-md-6 ">
                            <div class="container">
                        <div class="row">
                                <div class="col-md-4">
                                    <img alt="" src="../assets/images/amatron-icon.png" class="grandezzaImg" />
                                </div>
                                <div class="col-md-6">
                                    <asp:Label ID="lblTitoloProdotto1" runat="server" Text="TITOLO 2"></asp:Label>
                                    <br />
                                    <asp:Label ID="lblDescrizioneProdotto2" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque elementum libero porttitor purus accumsan,
                            eget ultrices metus aliquet. Aliquam non ornare nulla. Aliquam et sollicitudin diam, malesuada lacinia enim. Integer at nibh tempus, lacinia diam auctor, vulputate augue. 
                            Proin faucibus pharetra ante eget pharetra. Mauris lacinia libero consequat, sagittis purus." class="DescrizioneProdotto"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

