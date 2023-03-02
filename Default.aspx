<%@ Page Title="" Language="C#" MasterPageFile="~/AMATRON.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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

                            <div id="caroselNovita" runat="server">
                            
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


