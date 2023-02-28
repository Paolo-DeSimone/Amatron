<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="StoricoVendite.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <%--formattazione card--%>
    <div class="container mt-5">
        <div class="card">

            <%--header--%>
            <div class="card-header" style="background-color: #8e53c9">
                <h5>Storico Vendite </h5>
            </div>
            <%-- Inizio body --%>
            <div class="card-body" style="padding: 15px 15px 15px;">
                <div class="row">
                    
                    <%-- prima col --%>

                    <div class="col-md-6">
                        <div class="card" style="background-color: #f5f5f5; margin-bottom: 15px; " >
                            <div class="row">
                                <div class="col-md-6">
                                    <img class="img-thumbnail" style="object-fit: scale-down; width: 225px; margin: auto; height: 225px;" src="/assets/images/nayuta.jpg" />
                                </div>

                                <div class="col-md-6" style="text-align: left; align-self: end;">
                                    <h4>

                                       Prodotto 1
                                        

                                    </h4>

                                    <h4>100€

                                    </h4>

                                     <h5>Manga

                                    </h5>
                                    <asp:Label ID="Label3" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin non faucibus odio. Nulla at ultrices ex, ut ultrices eros."></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <%-- seconda col --%>
                    <div class="col-md-6">
                        <div class="card" style="background-color: #f5f5f5; margin-bottom: 15px;">
                            <div class="row">


                                <div class="col-md-6">


                                    <img class="img-thumbnail" src="/assets/images/kurado.png" style="object-fit: scale-down; width: 225px; height: 225px; margin: auto;" />

                                </div>

                                <div class="col-md-6" style="text-align: left; align-self: end;">


                                    <h4>
                                        Prodotto 2

                                        

                                    </h4>
                                    <h4>45 euro

                                    </h4>

                                     <h5>Action Figure

                                    </h5>


                                    <asp:Label ID="Label4" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin non faucibus odio. Nulla at ultrices ex, ut ultrices eros."></asp:Label>


                                </div>
                            </div>
                        </div>
                    </div>

                     <%-- prima col --%>

                    <div class="col-md-6">
                        <div class="card" style="background-color: #f5f5f5; margin-bottom: 15px; " >
                            <div class="row">
                                <div class="col-md-6">
                                    <img class="img-thumbnail" style="object-fit: scale-down; width: 225px; margin: auto; height: 225px;" src="/assets/images/nayuta.jpg" />
                                </div>

                                <div class="col-md-6" style="text-align: left; align-self: end;">
                                    <h4>

                                       Prodotto 1
                                        

                                    </h4>

                                    <h4>100€

                                    </h4>

                                     <h5>Manga

                                    </h5>
                                    <asp:Label ID="Label1" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin non faucibus odio. Nulla at ultrices ex, ut ultrices eros."></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <%-- seconda col --%>
                    <div class="col-md-6">
                        <div class="card" style="background-color: #f5f5f5; margin-bottom: 15px;">
                            <div class="row">


                                <div class="col-md-6">


                                    <img class="img-thumbnail" src="/assets/images/kurado.png" style="object-fit: scale-down; width: 225px; height: 225px; margin: auto;" />

                                </div>

                                <div class="col-md-6" style="text-align: left; align-self: end;">


                                    <h4>
                                        Prodotto 2

                                        

                                    </h4>
                                    <h4>45 euro

                                    </h4>

                                     <h5>Action Figure

                                    </h5>


                                    <asp:Label ID="Label2" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin non faucibus odio. Nulla at ultrices ex, ut ultrices eros."></asp:Label>


                                </div>
                            </div>
                        </div>
                    </div>

                     <%-- terza col --%>

                    <div class="col-md-6">
                        <div class="card" style="background-color: #f5f5f5; margin-bottom: 15px; " >
                            <div class="row">
                                <div class="col-md-6">
                                    <img class="img-thumbnail" style="object-fit: scale-down; width: 225px; margin: auto; height: 225px;" src="/assets/images/nayuta.jpg" />
                                </div>

                                <div class="col-md-6" style="text-align: left; align-self: end;">
                                    <h4>

                                       Prodotto 1
                                        

                                    </h4>

                                    <h4>100€

                                    </h4>

                                     <h5>Manga

                                    </h5>
                                    <asp:Label ID="Label5" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin non faucibus odio. Nulla at ultrices ex, ut ultrices eros."></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <%-- quarta col --%>
                    <div class="col-md-6">
                        <div class="card" style="background-color: #f5f5f5; margin-bottom: 15px;">
                            <div class="row">


                                <div class="col-md-6">


                                    <img class="img-thumbnail" src="/assets/images/kurado.png" style="object-fit: scale-down; width: 225px; height: 225px; margin: auto;" />

                                </div>

                                <div class="col-md-6" style="text-align: left; align-self: end;">


                                    <h4>
                                        Prodotto 2

                                        

                                    </h4>
                                    <h4>45 euro

                                    </h4>

                                     <h5>Action Figure

                                    </h5>


                                    <asp:Label ID="Label6" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin non faucibus odio. Nulla at ultrices ex, ut ultrices eros."></asp:Label>


                                </div>
                            </div>
                        </div>
                    </div>



                </div>
            </div>
        </div>
    </div>
</asp:Content>

