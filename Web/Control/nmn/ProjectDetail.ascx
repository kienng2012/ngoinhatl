<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProjectDetail.ascx.cs" Inherits="Web.Control.nmn.ProjectDetail" %>
<%@ Import Namespace="Core.Utils" %>

<%@ Register Src="~/Control/nmn/ArticleTop.ascx" TagName="articleTop" TagPrefix="uc1" %>
<%--<%@ Register Src="MenuLeft.ascx" TagName="MenuLeft" TagPrefix="uc1" %>--%>
<!-- Menu Left -->
<%--<uc1:MenuLeft ID="MenuLeft1" runat="server" />--%>
<!-- End Menu Left -->

<!-- Page Header Start -->
<%--<div class="container-fluid page-header mb-5 position-relative overlay-bottom">
    <div class="d-flex flex-column align-items-center justify-content-center pt-0 pt-lg-5" style="min-height: 400px">
        <h1 class="display-4 mb-3 mt-0 mt-lg-5 text-white text-uppercase">NEWS & ARTICLE</h1>
        <div class="d-inline-flex mb-lg-5">
            <p class="m-0 text-white"><a class="text-white" href="">Trang chủ</a></p>
            <p class="m-0 text-white px-2">/</p>
            <p class="m-0 text-white">Chi tiết bài viết</p>
        </div>
    </div>
</div>--%>
<!-- Page Header End -->

<%--<div class="container-fluid pt-5">
    <div class="container">

        <div class="row">
            <div class="">
                <div class="">
                    <div class="col-sm-7-center">
                        <h4><i class=""></i>
                            <asp:Label ID="lblTitle" runat="server" Text="" /></h4>
                        <asp:Label ID="lblDate" runat="server" Text="" />
                        <div class="col-sm-5-center">

                            <div class="scaleAuto">
                                <asp:Image ID="imgService" runat="server" />
                            </div>
                        </div>
                        <div class="col-sm-7-center">
                            <p class="m-0"><%#Eval("CS_Description") %></p>
                        </div>
                        <div class="col-sm-7-center">
                            <div class="scaleAuto">
                                <asp:Literal ID="lblContent" runat="server"></asp:Literal>
                            </div>
                        </div>
                    </div>
                    <div class="products-details columns-4 list_product">

                        <asp:Repeater ID="rpImages" runat="server">
                            <ItemTemplate>
                                <div class="item_pro">


                                    <img src="<%#Eval("IMG_URL_ITEM") %>" alt="" class="img-details" />
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div class="row">

                        <div class="alignRight"><a href="javascript:history.go(-1)" class="btn btn-primary font-weight-bold py-2 px-4 mt-2 center-align">Quay lại</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="borderDotOrange"></div>
    </div>
</div>--%>


<!-- PAGEBODY -->
<section id="page-title" class="full-height" style="background-color: rgb(239, 239, 239); background-image: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url(&quot;https://housedesign.vn/wp-content/uploads/2022/12/27.jpg&quot;); background-size: cover; background-position: center center; background-repeat: no-repeat; min-height: 375px;">
    <div class="section-inner align-center">
        <div class="main-title">
            <h1 style="font-size: 28px; margin-top: 5px;"><strong>Pearl Plaza-Căn hộ mộng mơ</strong></h1>
            <div class="port-meta"><span>Country mix Scandinavian</span><span>90 m<sup>2</sup></span><span>1 PN</span></div>
        </div>
    </div>
    <!-- <a href="https://housedesign.vn/du-an/pearl-plaza-can-ho-mong-mo/" id="backtoworks" class="transition left-float">
                        <span class="icon"></span>
                        <span class="text">Back to Project</span>
                    </a> -->
</section>
<div id="page-body" class="">


    <!-- SECTION PORTFOLIO -->
    <section id="portfolio-single" class="notoppadding">
        <div class="section-inner">
            <div class="wrapper">
                <ul class="breadcrumb-custom">
                    <li><a href="http://ngoinhatuonglai.vn/">Trang chủ</a> </li>
                    <li><a href="/Du-an.htm">Dự án</a></li>
                    <li>
                        <asp:Label ID="lblTitle" runat="server" Text="" />
                    </li>
                </ul>
                <div class="spacer spacer-medium"></div>
                <h4 class="title-ultraminimal align-center" data-bigletter="Pearl Plaza-Căn hộ mộng mơ">Pearl Plaza-Căn hộ mộng mơ</h4>
                <div class="spacer spacer-medium"></div>
                <p>
                    <asp:Literal ID="lblContent" runat="server"></asp:Literal>
                </p>
                <p>&nbsp;</p>
                <div class="spacer spacer-medium"></div>
            </div>
            <div id="gallery-grid-sc" class="masonry clearfix" data-maxitemwidth="300" style="position: relative; height: 1464.35px;">
                <asp:Repeater ID="rpImages" runat="server">
                    <ItemTemplate>
                        <div class="item_pro">

                            <div class="masonry-item" style="position: absolute; left: 0px; top: 0px; width: 241px;">
                                <a href="<%#Eval("IMG_URL_ITEM") %>" data-fancybox="gallery_sc" class="openfancybox">
                                    <img width="420" height="280" src="<%#Eval("IMG_URL_ITEM") %>" alt="" data-lazy-src="<%#Eval("IMG_URL_ITEM") %>" srcset="" data-ll-status="loaded" class="entered lazyloaded">
                                    <%--<noscript><img width="420" height="280" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-phuduc-khach-bep-1-420x280.jpg" alt="" /></noscript>--%>
                                </a>
                            </div>
                            <%--<img src="<%#Eval("IMG_URL_ITEM") %>" alt="" class="img-details" />--%>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

                <%--<div class="masonry-item" style="position: absolute; left: 340px; top: 0px; width: 330px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-phuduc-khach-bep-2-1100x1650.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="630" src="App_Themes/house/img/housedesign-phuduc-khach-bep-2-420x630.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-phuduc-khach-bep-2-420x630.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="630" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-phuduc-khach-bep-2-420x630.jpg" alt="" /></noscript>
                    </a>
                </div>--%>
            </div>
            <div class="wrapper">
                <div class="spacer spacer-medium"></div>
            </div>

            <div class="wrapper mt-5">

                <hr class="my-5">

                <!-- V -->
            </div>


            <div class="cta-container">
                <div class="container">
                    <div class="pure-g">
                        <div class="pure-u-1 pure-u-lg-7-12">
                            <div class="cta-wrap">
                                <div class="cta-content">
                                    <p class="title">HOUSEDESIGN - Thiết kế thi công nội thất hiện đại</p>
                                    <p class="sub-title">Liên hệ ngay với chúng tôi để thực hiện dự án của bạn</p>
                                    <a href="/Lien-he.htm">Liên hệ</a>
                                </div>
                            </div>
                        </div>
                        <div class="pure-u-1 pure-u-lg-5-12">
                            <div class="cta-img">
                                <img src="../../App_Themes/house/img/banner-lien-he.png" width="482" height="211" alt="" data-lazy-src="../../App_Themes/house/img/banner-lien-he.png"><noscript><img src="../../App_Themes/house/img/banner-lien-he.png" width="482" height="211" alt=""></noscript>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="wrapper">
                <ul class="single-pagination fixed-pagination">
                    <li class="next ">
                        <a href="https://housedesign.vn/du-an/thi-cong-thuc-te-duplex-sadora-quan-2/" title="Thi công thực tế- Duplex Sadora Quận 2" class="transition" data-name="Thi công thực tế- Duplex Sadora Quận 2">
                            <i class="pagination-icon"></i>Next Project <i class="pagination-icon"></i>
                        </a>
                    </li>
                    <li class="prev ">
                        <a href="https://housedesign.vn/du-an/coffee-phong-cach-wabisabi-viet/" title="Coffee phong cách Wabisabi Việt" class="transition" data-name="Coffee phong cách Wabisabi Việt">
                            <i class="pagination-icon"></i>Previous Project <i class="pagination-icon"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </section>
    <!-- SECTION PORTFOLIO -->
</div>
