<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="PaginaProdotto.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
     <script>
        $(document).ready(function () {

            if ($('.bbb_viewed_slider').length) {
                var viewedSlider = $('.bbb_viewed_slider');

                viewedSlider.owlCarousel(
                    {
                        loop: true,
                        margin: 30,
                        autoplay: true,
                        autoplayTimeout: 7000,
                        nav: false,
                        dots: false,
                        responsive:
                        {
                            0: { items: 1 },
                            575: { items: 2 },
                            768: { items: 3 },
                            991: { items: 4 },
                            1199: { items: 5 }
                        }
                    }
                );
            }
        });
     </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="/assets/css/cssGruppoWebservices.css" rel="stylesheet" />
    <script src="/assets/js/notify.js"></script>
    <link href="/assets/css/notify.css" rel="stylesheet" />

    <div class="my-5" align="center">
        <h2>Pagina Prodotto</h2>
    </div>
    <div class="container my-5">
        <div class="row">
            <div class="col-md-4">
                <div id="productCarousel" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner" id="Carosello" runat="server">
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#productCarousel" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span><span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#productCarousel" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span><span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>

            <div class="card col-md-4 offset-md-1 scrollo" style="height: fit-content">
                <div class="card-body">
                    <div>
                        <h3>
                            <asp:Literal ID="litProdotto" runat="server" Text="Titolo del Prodotto"></asp:Literal></h3>
                        <h4>
                            <asp:Literal ID="litCategoria" runat="server" Text="Categoria"></asp:Literal></h4>
                        <asp:ImageButton ID="ystar1" Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" Visible="False" />
                        <asp:ImageButton ID="ystar2" Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" Visible="False" />
                        <asp:ImageButton ID="ystar3" Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" Visible="False" />
                        <asp:ImageButton ID="ystar4" Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" Visible="False" />
                        <asp:ImageButton ID="ystar5" Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" Visible="False" />

                        <h3 class="mt-4">Prezzo: €
                        <asp:Literal ID="litPrezzoCentro" runat="server" Text="€99,99"></asp:Literal></h3>
                        <p style="color: black">
                            <asp:Literal ID="litDescrizione" runat="server" Text="Breve descrizione del prodotto. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in lacus eget magna efficitur suscipit. Integer auctor odio ac lectus vestibulum, ac tristique sapien tincidunt.Breve descrizione del prodotto. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in lacus eget magna efficitur suscipit. Integer auctor odio ac lectus vestibulum, ac tristique sapien tincidunt.Breve descrizione del prodotto. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in lacus eget magna efficitur suscipit. Integer auctor odio ac lectus vestibulum, ac tristique sapien tincidunt.Breve descrizione del prodotto. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in lacus eget magna efficitur suscipit. Integer auctor odio ac lectus vestibulum, ac tristique sapien tincidunt."></asp:Literal>
                        </p>
                    </div>
                    <br />
                    <p>Inserisci valutazione:</p>
                    <div>
                        <asp:ImageButton ID="yellowstar1" Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" OnClick="whitestar1_Click" Visible="False" />
                        <asp:ImageButton ID="yellowstar2" Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" OnClick="whitestar2_Click" Visible="False" />
                        <asp:ImageButton ID="yellowstar3" Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" OnClick="whitestar3_Click" Visible="False" />
                        <asp:ImageButton ID="yellowstar4" Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" OnClick="whitestar4_Click" Visible="False" />
                        <asp:ImageButton ID="yellowstar5" Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" OnClick="whitestar5_Click" Visible="False" />

                        <asp:ImageButton ID="whitestar1" Class="star" runat="server" src="/assets/images/whitestar.png" Width="20px" Height="20px" OnClick="whitestar1_Click" />
                        <asp:ImageButton ID="whitestar2" Class="star" runat="server" src="/assets/images/whitestar.png" Width="20px" Height="20px" OnClick="whitestar2_Click" />
                        <asp:ImageButton ID="whitestar3" Class="star" runat="server" src="/assets/images/whitestar.png" Width="20px" Height="20px" OnClick="whitestar3_Click" />
                        <asp:ImageButton ID="whitestar4" Class="star" runat="server" src="/assets/images/whitestar.png" Width="20px" Height="20px" OnClick="whitestar4_Click" />
                        <asp:ImageButton ID="whitestar5" Class="star" runat="server" src="/assets/images/whitestar.png" Width="20px" Height="20px" OnClick="whitestar5_Click" />
                    </div>
                    <p>
                        <asp:Label ID="Label1" runat="server" Text="Valutazione:"></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                        <asp:TextBox ID="txtDescription" class="form-control" runat="server" BorderColor="Black" TextMode="MultiLine"></asp:TextBox>
                    </p>
                    <div align="center">
                        <asp:Button ID="btnRecensione" runat="server" Text="Aggiungi recensione" class="btn masterButton" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" OnClick="btnRecensione_Click" />
                    </div>
                </div>
            </div>
            <%-- colonna --%>
            <div class="card col-md-2 offset-md-1" style="height: fit-content">
                <div class="card-body">
                    <div>
                        <h4 class="mt-4">Prezzo: €
                        <asp:Literal ID="litPrezzoDestra" runat="server" Text="€99,99"></asp:Literal></h4>
                        <p style="color: black">Consegna senza costi aggiuntivi domani. Ordina entro 4 minuti</p>
                        Quantità:
                    <asp:DropDownList ID="ddlCarrello" runat="server" Class="form-control-sm" Height="20"></asp:DropDownList>
                    </div>
                    <div class="py-5" align="center">
                        <asp:Button ID="btnAggiungi" runat="server" Text="Aggiungi al carrello" class="btn masterButton" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" OnClick="btnAggiungi_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>

    <hr class="masterColorBG masterColorText" style="height: 6px;" />
    <br />

    <div class="container mt-1">
        <div class="row">
            <div class="card col-md-4 offset-md-5 scrollo border-0" style="height: fit-content">
                <h3 class="text-center mb-4">Recensioni di altri clienti</h3>
                <div class="card-header">
                    <div class="card-body">
                        <asp:Literal ID="litNomeCliente" runat="server" Text="Giovanni"></asp:Literal>
                        <hr style="margin: 5px" />
                        <div>
                            <asp:ImageButton ID="RecStar1" Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" Visible="true" />
                            <asp:ImageButton ID="RecStar2" Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" Visible="true" />
                            <asp:ImageButton ID="RecStar3" Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" Visible="true" />
                            <asp:ImageButton ID="RecStar4" Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" Visible="true" />
                            <asp:ImageButton ID="RecStar5" Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" Visible="False" />
                            <p style="color: black">
                                <asp:Literal ID="litDataRecensione" runat="server" Text="Recensito il 3 Febbraio 2023"></asp:Literal></p>
                        </div>
                        <hr style="margin: 5px" />
                        <p style="color: black">
                            <asp:Literal ID="litRecensione" runat="server" Text="Figo bello 5 stelle"></asp:Literal></p>
                    </div>              
                </div>

                <div class="card-header">
                    <div class="card-body">
                        <asp:Literal ID="Literal1" runat="server" Text="Luca"></asp:Literal>
                        <hr style="margin: 5px" />
                        <div>
                            <asp:ImageButton ID="ImageButton1" Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" Visible="true" />
                            <asp:ImageButton ID="ImageButton2" Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" Visible="true" />
                            <asp:ImageButton ID="ImageButton3" Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" Visible="true" />
                            <asp:ImageButton ID="ImageButton4" Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" Visible="False" />
                            <asp:ImageButton ID="ImageButton5" Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" Visible="False" />
                        </div>
                        <hr style="margin: 5px" />
                        <p style="color: black">
                            <asp:Literal ID="Literal2" runat="server" Text="Assurdo e pazzesco"></asp:Literal></p>
                    </div>
                </div>

            </div>
        </div>
    </div>


    <hr class="masterColorBG masterColorText" style="height: 6px;" />
    <br />
    <div style="clear: both; background-color: #ebebeb">
        <div class="d-flex justify-content-center align-items-center text-align-center">
            <span>
                <img style="width: 100px" src="/assets/images/carmine_banner.png" />
            </span>
            <span>
                <h3 class="masterColorText">I prezzi dei nostri prodotti sono comprensivi dei costi di spedizione!</h3>
            </span>
        </div>
    </div>
    <br />
    <%--Carosel prodotti simili--%>
    <div class="viewed">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="bbb_viewed_title_container">
                        <h3 class="bbb_viewed_title masterColorText">
                            <img style="width: 80px" src="/assets/images/icon_new.png" />
                            <span>Prodotti simili</span>
                        </h3>
                        <div class="bbb_viewed_nav_container">
                        </div>
                    </div>
                    <div class="bbb_viewed_slider_container">
                        <div class="owl-carousel owl-theme bbb_viewed_slider masterCarousel" id="caroselProdottiSimili" runat="server">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>