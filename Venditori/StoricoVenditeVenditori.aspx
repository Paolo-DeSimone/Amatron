<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="StoricoVenditeVenditori.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container mt-5">
        <div class="card" style="padding: 15px 15px 15px; background-color: #f5f5f5 ">
            <div class="row text-center">
                <div class="col-md-6">
                    <div class="row">

                    <div class="col-md-6">
           
                        <img class="img-thumbnail" style="max-width:250px; max-height:250px;" src="../assets/images/nayuta.jpg" />
                    </div>             
                    <div class="col-md-6"  style="text-align: left; align-self: end;"> 
                        <h5>
                            TITOLO

                        </h5>
                        <asp:Label ID="Label1" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin non faucibus odio. Nulla at ultrices ex, ut ultrices eros."></asp:Label>  
                     
                    </div>
                    </div>
                </div>
                <div class="col-md-6">
                     <div class="row">

                    <div class="col-md-6">
                        <img class="img-thumbnail" style="min-width:250px; min-height:250px;max-width:250px; max-height:250px;" src="../assets/images/kurado.png" />
                    </div>            
                    <div class="col-md-6" style="text-align: left; align-self: end;">
                        <h5>
                            TITOLO

                        </h5>
                        <asp:Label ID="Label2" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin non faucibus odio. Nulla at ultrices ex, ut ultrices eros."></asp:Label>  
                     
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

