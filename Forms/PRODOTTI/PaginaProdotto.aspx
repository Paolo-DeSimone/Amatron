<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="PaginaProdotto.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="/assets/css/cssGruppoWebservices.css" rel="stylesheet" />
    <div class="my-5" align="center">
        <h2>Pagina Prodotto</h2>
    </div>
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
                    <h3>
                        <asp:Literal ID="litProdotto" runat="server" Text="Titolo del Prodotto"></asp:Literal></h3>
                    <h4>
                        <asp:Literal ID="litCategoria" runat="server" Text="Categoria"></asp:Literal></h4>
                    <asp:ImageButton ID="ystar1"  Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" Visible="False" />
                    <asp:ImageButton ID="ystar2" Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" Visible="False" />
                    <asp:ImageButton ID="ystar3" Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" Visible="False" />
                    <asp:ImageButton ID="ystar4" Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" Visible="False" />
                    <asp:ImageButton ID="ystar5" Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" Visible="False" />
            
                    <h3 class="mt-4">Prezzo:
                        <asp:Literal ID="litPrezzoCentro" runat="server" Text="€99,99"></asp:Literal></h3>
                    <p class="lead" style="color: black">
                        <asp:Literal ID="litDescrizione" runat="server" Text="Breve descrizione del prodotto. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in lacus eget magna efficitur suscipit. Integer auctor odio ac lectus vestibulum, ac tristique sapien tincidunt.Breve descrizione del prodotto. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in lacus eget magna efficitur suscipit. Integer auctor odio ac lectus vestibulum, ac tristique sapien tincidunt.Breve descrizione del prodotto. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in lacus eget magna efficitur suscipit. Integer auctor odio ac lectus vestibulum, ac tristique sapien tincidunt.Breve descrizione del prodotto. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in lacus eget magna efficitur suscipit. Integer auctor odio ac lectus vestibulum, ac tristique sapien tincidunt."></asp:Literal>
                    </p>
                </div>
                <br />
                <p>Inserisci valutazione:</p>
                <div>      
                     <asp:ImageButton ID="yellowstar1"  Class="star" runat="server" src="/assets/images/yellowstar.png" Width="20px" Height="20px" OnClick="whitestar2_Click" Visible="False" />
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
                    <asp:Label ID="Label1" runat="server" Text="Valutazioni:"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    <asp:TextBox ID="txtDescription" class="form-control" runat="server" BorderColor="Black" TextMode="MultiLine"></asp:TextBox>
                </p>
                <div align="center">
                    <asp:Button ID="btnRecensione" runat="server" Text="Aggiungi recensione" class="btn masterButton" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" OnClick="btnRecensione_Click" />
                </div>
        </div>
        <%-- colonna --%>
        <div class="card col-md-2 offset-md-1" style="height: 35vh">
            <div>
                <h3 class="mt-4">Prezzo:
                        <asp:Literal ID="litPrezzoDestra" runat="server" Text="€99,99"></asp:Literal></h3>
                <p class="lead" style="color: black">Consegna senza costi aggiuntivi domani. Ordina entro 4 minuti</p>
                Quantità:
                    <asp:DropDownList ID="ddlCarrello" runat="server" Class="form-control-sm" Height="20"></asp:DropDownList>
            </div>
            <div class="py-5" align="center">
                <asp:Button ID="btnAggiungi" runat="server" Text="Aggiungi al carrello" class="btn masterButton" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" OnClick="btnAggiungi_Click" />
            </div>
        </div>
    </div>
    </div>
</asp:Content>

