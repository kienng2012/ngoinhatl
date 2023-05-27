﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PoliciesCategory.ascx.cs" Inherits="Web.Control.nmn.PoliciesCategory" %>
<%@ Import Namespace="Core.Utils" %>
<%--<%@ Register Src="~/Control/nmn/SlideShowHome.ascx" TagName="slideShowHome" TagPrefix="uc2" %>--%>
<!-- PAGEBODY -->

<!-- BANNER -->

<%--<section id="page-title" class="full-height" style="background-image: url(<%= Page.ResolveClientUrl("~/App_Themes/house/img/bg_duan.jpg")%>); background-color: rgb(239, 239, 239); background-size: cover; background-position: center center; background-repeat: no-repeat; min-height: 255px;">
    <div class="section-inner align-center">
        <div class="main-title">
            <h1 style="font-size: 28px; margin-top: 5px;"><strong>Phong cách thiết kế</strong></h1>
        </div>
    </div>
</section>--%>
<%--<section id="page-title" class="full-height" style="background-color: rgb(239, 239, 239); background-size: cover; background-position: center center; background-repeat: no-repeat; min-height: 255px;">
    <asp:Image ID="imgBannerCate" runat="server" class="img-banner-cover" />
    <div class="section-inner align-center">
        <div class="main-title">
            <h1 style="font-size: 28px; margin-top: 5px;"><strong>Dự án</strong></h1>
        </div>
    </div>
</section>--%>

<asp:Repeater ID="rpImageBanner" runat="server">
    <ItemTemplate>
        <%-- <section id="page-title" class="full-height" style="background-image: url(<%#Eval("IMG_URL_ITEM") %>); background-color: rgb(239, 239, 239); background-size: cover; background-position: center center; background-repeat: no-repeat; min-height: 255px;">--%>
        <section id="page-title" class="full-height" style="background-image: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url(<%#Eval("IMG_URL_ITEM") %>); background-size: cover; background-position: center center; background-repeat: no-repeat; min-height: 623px;"></section>
    </ItemTemplate>
</asp:Repeater>
<!-- END BANNER -->

<!-- NAV BREADCUMBS-->
<!-- END NAV BREADCUMBS -->
<%--<div class="breadcrumbs" typeof="BreadcrumbList" vocab="http://schema.org/">
    <div class="container">
        <span property="itemListElement" typeof="ListItem"><a property="item" typeof="WebPage" title="Go to ARBARO." href="https://nordic.vn" class="home"><span property="name">Trang chủ</span></a><meta property="position" content="1"></span> <i class="fa fa-angle-right slash" aria-hidden="true"></i><span class="archive post-product-archive current-item">Sản phẩm</span>
    </div>
</div>--%>
<!-- PROJECT -->
<!-- PROJECT -->
<%--<div id="page-body" class="">--%>
<div class="all_box">
    <%--<div class="spacer spacer-small"></div>
    <div class="wrapper align-center">
        <ul id="portfolio-filter-standard" class="filter clearfix" data-related-grid="grid-du-an">
            <li><a class="active" data-option-value="*" href="/phong-cach.htm">All</a></li>
            <li><a data-option-value=".biet-thu" href="/chinh-sach/hien-dai.htm" title="Hiện đại">Hiện đại</a></li>
            <li><a data-option-value=".cafe-nha-hang-khach-san" href="phong-cach/scandinavian.htm" title="Scandinavian">Scandinavian</a></li>
            <li><a data-option-value=".can-ho" href="/chinh-sach/indochine.htm" title="Indochine">Indochine</a></li>
            <li><a data-option-value=".du-an-trang-chu" href="/chinh-sach/wabisabi.htm" title="Wabisabi">Wabisabi</a></li>
            <li><a data-option-value=".du-an-trang-chu" href="/chinh-sach/wabisabi.htm" title="Wabisabi">Wabisabi</a></li>
            <li><a data-option-value=".kien-truc" href="/chinh-sach/tan-co-dien.htm" title="Tân cổ điển">Tân cổ điển</a></li>
        </ul>
    </div>
    <div class="spacer spacer-small"></div>--%>
    <div class="section-inner">
        <div class="archive-title align-center">
            <h1>
                <asp:Label ID="lblCateName" runat="server" /></h1>
            <div class="separator"><span></span></div>
        </div>
        <div class="mota">
            <asp:Literal ID="lblCateDescription" runat="server" />
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
                    <a href="/chinh-sach/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm" class="link_full"></a>
                </div>

            </ItemTemplate>
        </asp:Repeater>
    </div>
    <asp:Literal ID="lblPaging" runat="server" />
    <div class="wrapper"></div>
    <div class="wrapper mt-5">
        <hr class="my-5">
    </div>
   <%-- <div class="section-inner">
        <div class="archive-title align-center">
            <h1>DANH MỤC TIN TỨC KHÁC</h1>
            <div class="separator"><span></span></div>
        </div>
    </div>

    <div class="products columns-3 list_product">
        <asp:Repeater ID="rptAnotherCate" runat="server">
            <ItemTemplate>
                <div class="item_pro">
                    <div class="img" style="background-image: url(<%#Eval("C_ImageURL") %>"></div>
                    <div class="info-style">
                        <div class="round-capt"><span class="capt upper"><%#Eval("C_Name")%></span></div>
                    </div>
                    <a href="/<%#Eval("C_BaseURL") %>.htm" class="link_full"></a>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <div class="wrapper"></div>
    <div class="wrapper mt-5">
        <hr class="my-5">
    </div>--%>
</div>
<%--</div>--%>

<!-- PAGEBODY -->
