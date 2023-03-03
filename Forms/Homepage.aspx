﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

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
                    });

                if ($('.bbb_viewed_prev').length) {
                    var prev = $('.bbb_viewed_prev');
                    prev.on('click', function () {
                        viewedSlider.trigger('prev.owl.carousel');
                    });
                }

                if ($('.bbb_viewed_next').length) {
                    var next = $('.bbb_viewed_next');
                    next.on('click', function () {
                        viewedSlider.trigger('next.owl.carousel');
                    });
                }
            }
        });
    </script>
    <script src="../../assets/js/notify.js"></script>
    <link href="../../assets/css/notify.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="viewed">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="bbb_viewed_title_container">
                        <h3 class="bbb_viewed_title">Ultime novità</h3>
                        <div class="bbb_viewed_nav_container">
                        </div>
                    </div>


                    <div class="bbb_viewed_slider_container">
                        <div class="owl-carousel owl-theme bbb_viewed_slider">

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924153/alcatel-smartphones-einsteiger-mittelklasse-neu-3m.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price"><asp:Label ID="lblP1" runat="server" Text=""></asp:Label></div>
                                            <div class="bbb_viewed_name"><asp:Label ID="lblT1" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924221/51_be7qfhil.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price"><asp:Label ID="lblP2" runat="server" Text=""></asp:Label></div>
                                            <div class="bbb_viewed_name"><asp:Label ID="lblT2" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price"><asp:Label ID="lblP3" runat="server" Text=""></asp:Label></div>
                                            <div class="bbb_viewed_name"><asp:Label ID="lblT3" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item is_new d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924275/images.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price"><asp:Label ID="lblP4" runat="server" Text=""></asp:Label></div>
                                            <div class="bbb_viewed_name"><asp:Label ID="lblT4" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924361/21HmjI5eVcL.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price"><asp:Label ID="lblP5" runat="server" Text=""></asp:Label></div>
                                            <div class="bbb_viewed_name"><asp:Label ID="lblT5" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price"><asp:Label ID="lblP6" runat="server" Text=""></asp:Label></div>
                                            <div class="bbb_viewed_name"><asp:Label ID="lblT6" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price"><asp:Label ID="lblP7" runat="server" Text=""></asp:Label></div>
                                            <div class="bbb_viewed_name"><asp:Label ID="lblT7" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price"><asp:Label ID="lblP8" runat="server" Text=""></asp:Label></div>
                                            <div class="bbb_viewed_name"><asp:Label ID="lblT8" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price"><asp:Label ID="lblP9" runat="server" Text=""></asp:Label></div>
                                            <div class="bbb_viewed_name"><asp:Label ID="lblT9" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price"><asp:Label ID="lblP10" runat="server" Text=""></asp:Label></div>
                                            <div class="bbb_viewed_name"><asp:Label ID="lblT10" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price"><asp:Label ID="lblP11" runat="server" Text=""></asp:Label></div>
                                            <div class="bbb_viewed_name"><asp:Label ID="lblT11" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price"><asp:Label ID="lblP12" runat="server" Text=""></asp:Label></div>
                                            <div class="bbb_viewed_name"><asp:Label ID="lblT12" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price"><asp:Label ID="lblP13" runat="server" Text=""></asp:Label></div>
                                            <div class="bbb_viewed_name"><asp:Label ID="lblT13" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price"><asp:Label ID="lblP14" runat="server" Text=""></asp:Label></div>
                                            <div class="bbb_viewed_name"><asp:Label ID="lblT14" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price"><asp:Label ID="lblP15" runat="server" Text=""></asp:Label></div>
                                            <div class="bbb_viewed_name"><asp:Label ID="lblT15" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price"><asp:Label ID="lblP16" runat="server" Text=""></asp:Label></div>
                                            <div class="bbb_viewed_name"><asp:Label ID="lblT16" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price"><asp:Label ID="lblP17" runat="server" Text=""></asp:Label></div>
                                            <div class="bbb_viewed_name"><asp:Label ID="lblT17" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price"><asp:Label ID="lblP18" runat="server" Text=""></asp:Label></div>
                                            <div class="bbb_viewed_name"><asp:Label ID="lblT18" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price"><asp:Label ID="lblP19" runat="server" Text=""></asp:Label></div>
                                            <div class="bbb_viewed_name"><asp:Label ID="lblT19" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price"><asp:Label ID="lblP20" runat="server" Text=""></asp:Label></div>
                                            <div class="bbb_viewed_name"><asp:Label ID="lblT20" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="viewed">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="bbb_viewed_title_container">
                        <h3 class="bbb_viewed_title">Prodotti più venduti</h3>
                        <div class="bbb_viewed_nav_container">
                        </div>
                    </div>

                    <div class="bbb_viewed_slider_container">
                        <div class="owl-carousel owl-theme bbb_viewed_slider">

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924153/alcatel-smartphones-einsteiger-mittelklasse-neu-3m.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price"><asp:Label ID="lblP21" runat="server" Text=""></asp:Label></div>
                                            <div class="bbb_viewed_name"><asp:Label ID="lblT21" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924221/51_be7qfhil.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price"><asp:Label ID="lblP22" runat="server" Text=""></asp:Label></div>
                                            <div class="bbb_viewed_name"><asp:Label ID="lblT22" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price"><asp:Label ID="lblP23" runat="server" Text=""></asp:Label></div>
                                            <div class="bbb_viewed_name"><asp:Label ID="lblt23" runat="server" Text=""></asp:Label></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item is_new d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924275/images.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹1379</div>
                                            <div class="bbb_viewed_name"><a href="#">Huawei Power</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924361/21HmjI5eVcL.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹225<span>₹300</span></div>
                                            <div class="bbb_viewed_name"><a href="#">Sony Power</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="viewed">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="bbb_viewed_title_container">
                        <h3 class="bbb_viewed_title">Prodotti più votati</h3>
                        <div class="bbb_viewed_nav_container">
                        </div>
                    </div>


                    <div class="bbb_viewed_slider_container">
                        <div class="owl-carousel owl-theme bbb_viewed_slider">

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924153/alcatel-smartphones-einsteiger-mittelklasse-neu-3m.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹12225<span>₹13300</span></div>
                                            <div class="bbb_viewed_name"><a href="#">Alkatel Phone</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924221/51_be7qfhil.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹30079</div>
                                            <div class="bbb_viewed_name"><a href="#">Samsung LED</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹22250</div>
                                            <div class="bbb_viewed_name"><a href="#">Samsung Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item is_new d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924275/images.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹1379</div>
                                            <div class="bbb_viewed_name"><a href="#">Huawei Power</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924361/21HmjI5eVcL.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹225<span>₹300</span></div>
                                            <div class="bbb_viewed_name"><a href="#">Sony Power</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="owl-item">
                                <a href="paginastupida.aspx?c=">
                                    <div class="bbb_viewed_item d-flex flex-column align-items-center justify-content-center text-center">
                                        <div class="bbb_viewed_image">
                                            <img src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1560924241/8fbb415a2ab2a4de55bb0c8da73c4172--ps.jpg" alt="">
                                        </div>
                                        <div class="bbb_viewed_content text-center">
                                            <div class="bbb_viewed_price">₹13275</div>
                                            <div class="bbb_viewed_name"><a href="#">Speedlink Mobile</a></div>
                                        </div>
                                        <ul class="item_marks">
                                            <li class="item_mark item_discount">-25%</li>
                                            <li class="item_mark item_new">new</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
