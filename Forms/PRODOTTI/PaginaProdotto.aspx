<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="PaginaProdotto.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="/assets/css/cssGruppoWebservices.css" rel="stylesheet" />

    <div class="my-5" align="center"><h2>Pagina Prodotto</h2></div>
    <div class="container my-5">
        <div class="row">
            <div class="col-md-4">
                <div id="productCarousel" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">    
                            <asp:Literal ID="litImg1" runat="server"></asp:Literal>
                            <img src="/assets/images/kurado.png" class="d-block w-100" alt="Product Image 1" />
                        </div>
                        <div class="carousel-item">
                            <asp:Literal ID="litImg2" runat="server"></asp:Literal>
                            <img src="/assets/images/nayuta.jpg" class="d-block w-100" alt="Product Image 2" />
                        </div>
                        <div class="carousel-item">
                            <asp:Literal ID="litImg3" runat="server"></asp:Literal>
                            <img src="/assets/images/pc.jpg" class="d-block w-100" alt="Product Image 3" />
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
           
            <div class="card col-md-4 offset-md-1 border-0 scrollo">
                <div>
                    <h3><asp:Literal ID="litProdotto" runat="server" Text="Titolo del Prodotto"></asp:Literal></h3>
                    <h4><asp:Literal ID="litCategoria" runat="server" Text="Categoria"></asp:Literal></h4>
                    <h3 class="mt-4">Prezzo: <asp:Literal ID="litPrezzoCentro" runat="server" Text="€99,99"></asp:Literal></h3>
                    <p class="lead" style="color:black"><asp:Literal ID="litDescrizione" runat="server"  Text="Breve descrizione del prodotto. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in lacus eget magna efficitur suscipit. Integer auctor odio ac lectus vestibulum, ac tristique sapien tincidunt.Breve descrizione del prodotto. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in lacus eget magna efficitur suscipit. Integer auctor odio ac lectus vestibulum, ac tristique sapien tincidunt.Breve descrizione del prodotto. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in lacus eget magna efficitur suscipit. Integer auctor odio ac lectus vestibulum, ac tristique sapien tincidunt.Breve descrizione del prodotto. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in lacus eget magna efficitur suscipit. Integer auctor odio ac lectus vestibulum, ac tristique sapien tincidunt."></asp:Literal></p>
                </div>
            </div>

            <div class="card col-md-2 offset-md-1" style="height:30vh">
                <div>
                    <h3 class="mt-4">Prezzo: <asp:Literal ID="litPrezzoDestra" runat="server" Text="€99,99"></asp:Literal></h3>
                    <p class="lead" style="color:black">Consegna senza costi aggiuntivi domani. Ordina entro 4 minuti</p>
                    Quantità:
                    <asp:DropDownList ID="ddlCarrello" runat="server"></asp:DropDownList>
                </div>
                <div class="py-5" align="center">
                    <button id="btnAggiungi" runat="server" class="btn masterButton" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" onclick="Aggiungi()">
                        Aggiungi al carrello</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

