<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Policies.ascx.cs" Inherits="Web.Control.nmn.Policies" %>
<%@ Import Namespace="Core.Utils" %>
<%--<%@ Register Src="~/Control/nmn/SlideShowHome.ascx" TagName="slideShowHome" TagPrefix="uc2" %>--%>
<!-- PAGEBODY -->

<!-- BANNER -->
<%--<div class="banner_pages banner_catpro section_bg" style="background-image: url(https://nordic.vn/wp-content/uploads/2021/07/z2588419486156_2f9d042b2b06ed6ffd0265a207f8b602-1.jpg);">
    <div class="inner">
        <h1 class="title_catpro">Sản phẩm</h1>
    </div>
</div>--%>
<%--<section id="page-title" class="full-height" style="background-image: url(<%= Page.ResolveClientUrl("~/App_Themes/house/img/bg-phongcach.jpg")%>); background-color: rgb(239, 239, 239); background-size: cover; background-position: center center; background-repeat: no-repeat; min-height: 255px;">--%>
<section id="page-title" class="full-height" style="background-image: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url(<%= Page.ResolveClientUrl("~/App_Themes/house/img/bg_chinhsach.jpg")%>); background-size: cover; background-position: center center; background-repeat: no-repeat; min-height: 623px;">
    <div class="section-inner align-center">
        <div class="main-title">
            <h1 style="font-size: 28px; margin-top: 5px;"><strong>Chính sách</strong></h1>
        </div>
    </div>
</section>
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
            <a property="item" typeof="WebPage" title="Go to ARBARO." href="/chinh-sach.htm" class="home"><span property="name">Chính sách</span></a>
        </span>

    </div>
</div>
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
    <div class="spacer spacer-small"></div>
    <div class="wrapper align-center">
        <ul id="portfolio-filter-standard" class="filter clearfix" data-related-grid="grid-du-an">
            <li><a class="active" data-option-value="*" href="/chinh-sach.htm">Tất cả</a></li>
            <li><a data-option-value=".biet-thu" href="/chinh-sach/quy-trinh-va-chinh-sach.htm" title="">Quy trình và chính sách</a></li>
            <li><a data-option-value=".cafe-nha-hang-khach-san" href="/chinh-sach/chuong-trinh-uu-dai.htm" title="">Chương trình ưu đãi</a></li>
        </ul>
    </div>
    <div class="spacer spacer-small"></div>
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
    <div class="spacer spacer-small"></div>
</div>
<%--</div>--%>

<!-- PAGEBODY -->
