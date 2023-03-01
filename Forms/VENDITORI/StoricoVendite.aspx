<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="StoricoVendite.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <style>
        /*riduzione dimensione del testo per evitare conflitti in caso di un titolo molto lungo*/

        .DescrizioneProdotto {
            display: -webkit-box;
            text-overflow: ellipsis;
            overflow: hidden;
            -webkit-line-clamp: 3;
            -webkit-box-orient: vertical;
        }

        .contenimentoTitolo {
            display: -webkit-box;
            text-overflow: ellipsis;
            overflow: hidden;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
        }

        .boxImg {
            object-fit: scale-down;
            width: 225px;
            margin: auto;
            height: 225px;
        }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <%--formattazione card--%>
    <div class="container mt-5">
        <div class="card">

            <%--header--%>
            <div class="card-header" style="background-color: #8e53c9">
                <h4>
                    <strong>Storico Venditore
                    </strong>
                </h4>
            </div>
            <%-- Inizio body --%>
            <div class="card-body" style="padding: 15px 15px 15px;">
                <div class="row">
                    <%-- prima col --%>
                    <div id="imgContainer" class="row" runat="server">

                    </div>
                    <div class="col-md-6">
                        <div class="card" style="background-color: #f5f5f5; margin-bottom: 15px;">
                            <div class="row">

                                <%-- sezione immagine, l'immagine sarà centrata all'interno di un template 225x225 --%>
                                <div class="col-md-5">
                                    <img class="img-thumbnail boxImg" src="/assets/images/nayuta.jpg" />
                                </div>
                                <%--sezione contenuto, sarà allineato in basso e a sinistra, le dimensioni sono definite dai tag--%>

                                <div class="col-md-7" style="text-align: left; align-self: end;">

                                    <asp:Label ID="lblTitolo" Class="contenimentoTitolo" runat="server">
                                    <h5>
                                        
                                       Chainsaw man volume unico gigante bellissimo incredibile impressionante
                                        

                                    </h5>
                                    </asp:Label>
                                    <asp:Label ID="lblPrezzo" runat="server">
                                    <h5>100 euro</h5>
                                    </asp:Label>

                                    <asp:Label ID="lblCategoria" runat="server">

                                     <h6>Manga</h6>
                                    </asp:Label>


                                    <asp:Label ID="lblDescrizione" class="DescrizioneProdotto" Style="" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin non faucibus odio. Nulla at ultrices ex, ut ultrices eros."></asp:Label>

                                    <asp:Label ID="lblDataVendita" class="text-secondary" runat="server" Text="18/2/2023"></asp:Label>

                                </div>
                            </div>
                        </div>
                    </div>

                    <%--seconda col--%>

                    <div class="col-md-6">
                        <div class="card" style="background-color: #f5f5f5; margin-bottom: 15px;">
                            <div class="row">
                                <div class="col-md-5">
                                    <img class="img-thumbnail boxImg" src="/assets/images/kurado.png" />
                                </div>

                                <div class="col-md-7" style="text-align: left; align-self: end;">

                                    <asp:Label ID="Label1" Class="contenimentoTitolo" runat="server">
                                    <h5>
                                        
                                       Final fantasy 7 edizione poveraccia che insomma devi essere un po' povero per comprarla
                                        

                                    </h5>
                                    </asp:Label>
                                    <asp:Label ID="Label2" runat="server">
                                    <h5>45 euro</h5>
                                    </asp:Label>

                                    <asp:Label ID="Label3" runat="server">

                                     <h6>Manga</h6>
                                    </asp:Label>


                                    <asp:Label ID="Label4" class="DescrizioneProdotto" Style="" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin non faucibus odio. Nulla at ultrices ex, ut ultrices eros."></asp:Label>

                                    <asp:Label ID="Label5" class="text-secondary" runat="server" Text="15/2/2023"></asp:Label>

                                </div>
                            </div>
                        </div>
                    </div>




                </div>
            </div>
        </div>
    </div>
</asp:Content>

