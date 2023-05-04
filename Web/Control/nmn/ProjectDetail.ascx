<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProjectDetail.ascx.cs" Inherits="Web.Control.nmn.ProjectDetail" %>
<%@ Import Namespace="Core.Utils" %>

<%@ Register Src="~/Control/nmn/ArticleTop.ascx" TagName="articleTop" TagPrefix="uc1" %>
<%--<div class="banner_pages banner_catpro section_bg" style="background-image: url(<%= Page.ResolveClientUrl("~/App_Themes/house/img/bg_duan.jpg")%>);">
    <div class="inner">
        <h1 class="title_catpro">Dự án chi tiết</h1>
    </div>
</div>--%>

<!-- BANNER -->

<section id="page-title" class="full-height" style="background-image: url(<%= Page.ResolveClientUrl("~/App_Themes/house/img/bg_duan.jpg")%>); background-color: rgb(239, 239, 239); background-size: cover; background-position: center center; background-repeat: no-repeat; min-height: 255px;">
    <div class="section-inner align-center">
        <div class="main-title">
            <h1 style="font-size: 28px; margin-top: 5px;"><strong><asp:Literal ID="lblTitlePage" runat="server"></asp:Literal></strong></h1>
            <div class="port-meta"><span><asp:Literal ID="lblDescriptionPage" runat="server"></asp:Literal></span></div>
        </div>
    </div>
</section>
<!-- END BANNER -->

<!-- NAV BREADCUMBS-->
<div class="breadcrumbs" typeof="BreadcrumbList" vocab="http://schema.org/">
    <div class="container">
        <span property="itemListElement" typeof="ListItem">
            <a property="item" typeof="WebPage" title="Go to ABARO." href="http://ngoinhatuonglai.vn" class="home"><span property="name">Trang chủ</span></a>
            <meta property="position" content="1">
        </span>
        <i class="fa fa-angle-right slash" aria-hidden="true"></i>
        <span class="archive post-product-archive current-item">
            <a property="item" typeof="WebPage" title="Go to ARBARO." href="/du-an.htm" class="home"><span property="name">Dự án</span></a>
        </span>
        <%--<i class="fa fa-angle-right slash" aria-hidden="true"></i>
        <span class="archive post-product-archive current-item">
            <span property="name">Dự án</span>
        </span>--%>
    </div>
</div>

<div id="page-body" class="">
    <section id="portfolio-single" class="notoppadding">
        <div class="section-inner">
            <div class="wrapper">
               
                <h4 class="title-ultraminimal align-center visible"><asp:Label ID="lblTitle" runat="server" Text="" /></h4>
                <%--<div class="spacer spacer-small"></div>--%>
                <p>
                    <asp:Literal ID="lblContent" runat="server"></asp:Literal>
                </p>
                <%--<div class="spacer spacer-small"></div>--%>
            </div>
            <div class="img-products-details">
                <asp:Image ID="imgService" runat="server" />
            </div>

            <div class="products-details columns-4 list_product">
                <asp:Repeater ID="rpImages" runat="server">
                    <ItemTemplate>
                        <div class="item_pro">
                            <a href="<%#Eval("IMG_URL_ITEM") %>" data-fancybox="gallery_sc" class="openfancybox">
                                <div class="img" style="background-image: url(<%#Eval("IMG_URL_ITEM") %>"></div>
                            </a>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="wrapper">
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
                                    <p class="title">ARBARO - Thiết kế thi công nội thất hiện đại</p>
                                    <p class="sub-title">Liên hệ ngay với chúng tôi để thực hiện dự án của bạn</p>
                                    <a href="https://ngoinhatuonglai/lien-he.htm/">Liên hệ</a>
                                </div>
                            </div>
                        </div>
                        <div class="pure-u-1 pure-u-lg-5-12">
                            <div class="cta-img">
                                <img src="../../App_Themes/house/img/banner-lien-he.png" width="482" height="211" alt="" data-lazy-src="../../App_Themes/house/img/banner-lien-he.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="/images/banner-lien-he.png" width="482" height="211" alt=""></noscript>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%--<div class="wrapper">
                <ul class="single-pagination fixed-pagination">
                    <li class="next "><a href="https://housedesign.vn/du-an/thi-cong-thu-te-villa-vinhome-quan-9/" title="Thi công thự tế Villa Vinhome Quận 9" class="transition" data-name="Thi công thự tế Villa Vinhome Quận 9">
                        <i class="pagination-icon"></i>Next Project <i class="pagination-icon"></i></a></li>
                    <li class="prev "><a href="https://housedesign.vn/du-an/thi-cong-thuc-te-duplex-sadora-quan-2/" title="Thi công thực tế- Duplex Sadora Quận 2" class="transition" data-name="Thi công thực tế- Duplex Sadora Quận 2">
                        <i class="pagination-icon"></i>Previous Project <i class="pagination-icon"></i></a></li>
                </ul>
            </div>--%>
        </div>
    </section>
</div>
<!-- END CONTENT -->

<%--<div class="container-fluid pt-5">
    <div class="container">
        <div class="section-title-detail">
            <h3>BÀI VIẾT LIÊN QUAN</h3>
        </div>
        <div class="row">
            <asp:Repeater ID="rptListCate" runat="server">
                <ItemTemplate>
                    <div class="col-lg-6 mb-5">
                        <div class="row align-items-center">
                            <div class="col-sm-5">
                                <a href="/Bai-viet-<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm">
                                    <img class="w-100 rounded-circle mb-3 mb-sm-0" src="<%#Eval("CS_ImageURL") %>" alt="" />
                                </a>
                            </div>
                            <div class="col-sm-7">
                                <h5>
                                    <a href="/Bai-viet-<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm">
                                        <%#Eval("CS_Name")%>
                                    </a>
                                </h5>
                                <p class="m-0">
                                    <%#Eval("CS_Description") %>
                                </p>


                                <a href="/Bai-viet-<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm" class="btn btn-primary font-weight-bold py-2 px-4 mt-2">Chi tiết</a>

                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

        <div class="row">
            <div class="alignRight"><a href="javascript:history.go(-1)" class="btn btn-primary font-weight-bold py-2 px-4 mt-2 center-align">Quay lại</a></div>
        </div>
    </div>
</div>--%>
<!-- Menu End -->
