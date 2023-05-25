<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProjectDetail.ascx.cs" Inherits="Web.Control.nmn.ProjectDetail" %>
<%@ Import Namespace="Core.Utils" %>

<%@ Register Src="~/Control/nmn/BannerContact.ascx" TagName="bannerContact" TagPrefix="uc1" %>

<link rel="stylesheet" href="<%= Page.ResolveClientUrl("~/App_Themes/house/css/jquery.fancybox.min.css")%>" type="text/css" media="all">
<script type="text/javascript" src="<%= Page.ResolveClientUrl("~/App_Themes/house/js/jquery.fancybox.min.js") %>" id="fancybox-js"></script>
<%--<div class="banner_pages banner_catpro section_bg" style="background-image: url(<%= Page.ResolveClientUrl("~/App_Themes/house/img/bg_duan.jpg")%>);">
    <div class="inner">
        <h1 class="title_catpro">Dự án chi tiết</h1>
    </div>
</div>--%>

<!-- BANNER -->

<%--<section id="page-title" class="full-height" style="background-image: url(<%= Page.ResolveClientUrl("~/App_Themes/house/img/bg_duan.jpg")%>); background-color: rgb(239, 239, 239); background-size: cover; background-position: center center; background-repeat: no-repeat; min-height: 255px;">
    <div class="section-inner align-center">
        <div class="main-title">
            <h1 style="font-size: 28px; margin-top: 5px;"><strong>
                <asp:Literal ID="lblTitlePage" runat="server"></asp:Literal></strong></h1>
            <div class="port-meta">
                <span>
                    <asp:Literal ID="lblDescriptionPage" runat="server"></asp:Literal></span>
            </div>
        </div>
    </div>
</section>--%>

<asp:Repeater ID="rpImageBanner" runat="server">
    <ItemTemplate>
        <section id="page-title" class="full-height" style="background-image: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url(<%#Eval("CS_ImageURL") %>); background-size: cover; background-position: center center; background-repeat: no-repeat; min-height: 623px;">
            <%-- background-image: url(<%#Eval("CS_ImageURL") %>); background-color: rgb(239, 239, 239); background-size: cover; background-position: center center; background-repeat: no-repeat; min-height: 255px;--%>
            <div class="section-inner align-center">
                <div class="main-title">
                    <h1 style="font-size: 28px; margin-top: 5px;"><strong><%#Eval("CS_Name") %>         </strong></h1>
                    <div class="port-meta">
                        <span>
                            <%#Eval("CS_Description") %></span>
                    </div>
                </div>
            </div>
        </section>
    </ItemTemplate>
</asp:Repeater>
<!-- END BANNER -->

<!-- NAV BREADCUMBS-->
<div class="breadcrumbs" typeof="BreadcrumbList" vocab="http://schema.org/">
    <div class="container">
        <span property="itemListElement" typeof="ListItem" class="breadcrumbs-page">
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

                <h4 class="title-ultraminimal align-center visible">
                    <asp:Label ID="lblTitle" runat="server" Text="" /></h4>
                <%--<div class="spacer spacer-small"></div>--%>
                <p>
                    <asp:Literal ID="lblContent" runat="server"></asp:Literal>
                </p>
                <%--<div class="spacer spacer-small"></div>--%>
            </div>
            <div class="img-products-details">
                <asp:Image ID="imgService" runat="server" CssClass="imgDetailFull" />
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
        </div>
    </section>

    <div class="all_box no-margin">
        <div class="section-inner">
            <div class="archive-title align-center">
                <h1>Dự án liên quan</h1>
                <div class="separator"><span></span></div>
            </div>
        </div>
        <div class="products columns-4 list_product">
            <asp:Repeater ID="rptListCate" runat="server">
                <ItemTemplate>
                    <div class="item_pro">
                        <div class="img" style="background-image: url(<%#Eval("CS_ImageURL") %>"></div>
                        <%--<div class="img"><img src="<%#Eval("CS_ImageURL") %>" alt=""/></div>--%>
                        <div class="info-style">
                            <div class="round-capt"><span class="capt"><%#Eval("CS_Name")%></span></div>
                        </div>
                        <%--  <div class="overlay"><span class="item-pro-title"><%#Eval("CS_Name")%></span></div>--%>
                        <a href="/du-an/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm" class="link_full"></a>
                    </div>

                </ItemTemplate>
            </asp:Repeater>
        </div>
        <%--  <asp:Literal ID="lblPaging" runat="server" />--%>
        <div class="spacer spacer-small"></div>
    </div>

</div>


<!-- END CONTENT -->
<!-- BANNER CONTACT -->
<uc1:bannerContact ID="BannerContact" runat="server" />
<!-- END BANNER CONTACT -->
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
