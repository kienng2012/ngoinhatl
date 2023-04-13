<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SlideShowHome.ascx.cs" Inherits="Web.Control.nmn.SlideShowHome" %>

<!-- Carousel Start -->
<div class="container-fluid p-0 mb-5">
    <div id="blog-carousel" class="carousel slide overlay-bottom" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <%--<img class="w-100" src="App_Themes/nmn/img/carousel-1.jpg" alt="Image">--%>
                <img class="w-100" src="App_Themes/nmn/img/slide1.png" alt="">
                <%--<div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                    <h2 class="text-primary font-weight-medium m-0">We Have Been Serving</h2>
                    <h1 class="display-1 text-white m-0">NMN25600+</h1>
                    <h2 class="text-white m-0">* SINCE 1950 *</h2>
                </div>--%>
            </div>
            <div class="carousel-item">
                <%--<img class="w-100" src="App_Themes/nmn/img/carousel-1.jpg" alt="Image">--%>
                <img class="w-100" src="App_Themes/nmn/img/slide2.png" alt="">
                <%--<div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                    <h2 class="text-primary font-weight-medium m-0">We Have Been Serving</h2>
                    <h1 class="display-1 text-white m-0">NMN25600+</h1>
                    <h2 class="text-white m-0">* SINCE 1950 *</h2>
                </div>--%>
            </div>
        </div>
        <a class="carousel-control-prev" href="#blog-carousel" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#blog-carousel" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>
</div>
<!-- Carousel End -->
