<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

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
    <div class="viewed">
        <div class="container">
            <div style="width: 100%; height: 300px; text-align: center">
                <p style="width: 50%;">
                    <h3 class="masterColorText">Ottieni lo sconto dell'<asp:Label ID="lblPrime" runat="server" Text=""></asp:Label>% sui tuoi acquisti con <i><b>Amatron Prime</b></i></h3>
                </p>
                <img style="margin-left:200px;" src="/assets/images/andrea_melange.png" />
                <img style="float: right" src="/assets/images/donna_indica_2.png" />
            </div>
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
        </div>
    </div>
    <div class="viewed">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="bbb_viewed_title_container">
                        <h3 class="bbb_viewed_title masterColorText">
                            <img style="width: 80px" src="/assets/images/icon_new.png" />
                            <span>ULTIME NOVITA'</span>
                        </h3>
                        <div class="bbb_viewed_nav_container">
                        </div>
                    </div>
                    <div class="bbb_viewed_slider_container">
                        <div class="owl-carousel owl-theme bbb_viewed_slider masterCarousel" id="caroselNovita" runat="server">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <hr class="masterColorBG masterColorText" style="height: 3px; margin-top: 40px;" />
    </div>
    <div class="viewed">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="bbb_viewed_title_container ">
                        <h3 class="bbb_viewed_title masterColorText">
                            <img style="width: 80px" src="/assets/images/icon_arrow.png" />
                            <span>Prodotti più venduti</span>
                        </h3>
                        <div class="bbb_viewed_nav_container">
                        </div>
                    </div>
                    <div class="bbb_viewed_slider_container">
                        <div class="owl-carousel owl-theme bbb_viewed_slider masterCarousel" id="caroselPiuVenduti" runat="server">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <hr class="masterColorBG masterColorText" style="height: 3px; margin-top: 40px;" />
    </div>
    <div class="viewed mb-2">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="bbb_viewed_title_container">
                        <h3 class="bbb_viewed_title masterColorText">
                            <img style="width: 40px" src="/assets/images/icon_thumb.png" />
                            <span>Prodotti più votati</span>
                        </h3>
                        <div class="bbb_viewed_nav_container">
                        </div>
                    </div>
                    <div class="bbb_viewed_slider_container">
                        <div class="owl-carousel owl-theme bbb_viewed_slider masterCarousel" id="caroselpiuVotati" runat="server">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
