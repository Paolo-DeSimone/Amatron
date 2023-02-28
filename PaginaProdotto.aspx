<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="PaginaProdotto.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="/assets/css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link href="assets/css/cssGruppoWebservices.css" rel="stylesheet" />

    <div class="container my-5">
        <div class="row">
            <div class="col-md-4">
                <div id="productCarousel" class="carousel slide w-100" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="assets/images/kurado.png" class="d-block w-100" alt="Product Image 1" />
                        </div>
                        <div class="carousel-item ">
                            <img src="assets/images/nayuta.jpg" class="d-block w-100" alt="Product Image 2" />
                        </div>
                        <div class="carousel-item">
                            <img src="assets/images/pc.jpg" class="d-block w-100" alt="Product Image 3" />
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#productCarousel" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span><span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#productCarousel" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span><span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
           
            <div class="card col-md-5 border-0 scrollo">
                <div>
                    <h1>Titolo del Prodotto</h1>
                    <h2>Categoria</h2>
                    <h2 class="mt-4">Prezzo: €99.99</h2>
                    <p class="lead">Breve descrizione del prodotto. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in lacus eget magna efficitur suscipit. Integer auctor odio ac lectus vestibulum, ac tristique sapien tincidunt.</p>
                    <p class="lead">Breve descrizione del prodotto. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in lacus eget magna efficitur suscipit. Integer auctor odio ac lectus vestibulum, ac tristique sapien tincidunt.</p>
                    <p class="lead">Breve descrizione del prodotto. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in lacus eget magna efficitur suscipit. Integer auctor odio ac lectus vestibulum, ac tristique sapien tincidunt.</p>
                    <p class="lead">Breve descrizione del prodotto. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in lacus eget magna efficitur suscipit. Integer auctor odio ac lectus vestibulum, ac tristique sapien tincidunt.</p>
                    <p class="lead">Breve descrizione del prodotto. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in lacus eget magna efficitur suscipit. Integer auctor odio ac lectus vestibulum, ac tristique sapien tincidunt.</p>
                    <p class="lead">Breve descrizione del prodotto. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in lacus eget magna efficitur suscipit. Integer auctor odio ac lectus vestibulum, ac tristique sapien tincidunt.</p>
                    <p class="lead">Breve descrizione del prodotto. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in lacus eget magna efficitur suscipit. Integer auctor odio ac lectus vestibulum, ac tristique sapien tincidunt.</p>
                    <p class="lead">Breve descrizione del prodotto. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in lacus eget magna efficitur suscipit. Integer auctor odio ac lectus vestibulum, ac tristique sapien tincidunt.</p>
                    <p class="lead">Breve descrizione del prodotto. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in lacus eget magna efficitur suscipit. Integer auctor odio ac lectus vestibulum, ac tristique sapien tincidunt.</p>
                </div>
            </div>

            <div class="card col-md-2 offset-md-1 bordoviola">
                <div>
                    <h2 class="mt-4">Prezzo: €99.99</h2>
                    <p>Consegna senza costi aggiuntivi domani. Ordina entro 4 minuti</p>
                    Quantità:
                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                </div>
                <div class="py-5" align="center">
                    <button class="btn btn-secondary logoColor" style="background-color: #212529" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Aggiungi al carrello
                    </button>
                </div>
            </div>

        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</asp:Content>

