<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="StoricoVenditeVenditori.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container mt-5">
        <div class="card" style="padding: 15px 15px 15px; background-color: #f5f5f5">
            <div class="row text-center">


                <%--     <div class="col-md-6">

                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="card-link">Card link</a>
                            <a href="#" class="card-link">Another link</a>
                        </div>
                    </div>
                </div>--%>

<%--                display: inline-block;    width: 8vw;    height: 10vh;    overflow: hidden;    text-overflow: ellipsis;    white-space: nowrap;--%>



                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6">
                            <img class="img-thumbnail" style="max-width: 200px; max-height: 200px;" src="../assets/images/nayuta.jpg" />
                        </div>


                        <div class="col-md-6" style="text-align: left; align-self: end;">
                            <h5>TITOLO

                            </h5>

                            <h4>100€

                            </h4>
                            <asp:Label ID="Label1" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin non faucibus odio. Nulla at ultrices ex, ut ultrices eros."></asp:Label>


                        </div>
                    </div>
                </div>
            </div>



            <div class="col-md-6">
                <div class="row">


                    <div class="col-md-6">

                        <img class="img-thumbnail" style="min-width: 250px; min-height: 250px; max-width: 250px; max-height: 250px;" src="../assets/images/kurado.png" />
                    </div>

                    <div class="col-md-6" style="text-align: left; align-self: end;">
                        <h5>TITOLO

                        </h5>

                        <h4>45€

                        </h4>


                        <asp:Label ID="Label2" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin non faucibus odio. Nulla at ultrices ex, ut ultrices eros."></asp:Label>


                    </div>
                </div>
            </div>
        </div>

    </div>
    </div>
    </div>
</asp:Content>

