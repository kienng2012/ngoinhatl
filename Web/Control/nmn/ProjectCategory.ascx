<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProjectCategory.ascx.cs" Inherits="Web.Control.nmn.ProjectCategory" %>
<%@ Import Namespace="Core.Utils" %>
<%--<%@ Register Src="~/Control/nmn/SlideShowHome.ascx" TagName="slideShowHome" TagPrefix="uc2" %>--%>
<!-- PAGEBODY -->

<!-- BANNER -->
<%--<div class="banner_pages banner_catpro section_bg" style="background-image: url(<%= Page.ResolveClientUrl("~/App_Themes/house/img/bg_duan.jpg")%>);">
    <div class="inner">
        <h1 class="title_catpro">Dự án</h1>
    </div>
</div>--%>
<%--<section id="page-title" class="full-height" style="background-image: url(<%= Page.ResolveClientUrl("~/App_Themes/house/img/bg_duan.jpg")%>); background-color: rgb(239, 239, 239); background-size: cover; background-position: center center; background-repeat: no-repeat; min-height: 255px;">--%>
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
        <%--<section id="page-title" class="full-height" style="background-image: url(<%#Eval("IMG_URL_ITEM") %>); background-color: rgb(239, 239, 239); background-size: cover; background-position: center center; background-repeat: no-repeat; min-height: 255px;">--%>
        <section id="page-title" class="full-height" style="background-image: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url(<%#Eval("IMG_URL_ITEM") %>); background-size: cover; background-position: center center; background-repeat: no-repeat; min-height: 623px;">
        </section>
    </ItemTemplate>
</asp:Repeater>
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

    </div>
</div>
<!-- END BANNER -->

<!-- NAV BREADCUMBS-->
<!-- END NAV BREADCUMBS -->


<%--<div id="page-body" class="">
     <p id="breadcrumbs"><span><span><a href="https://housedesign.vn/">Trang chủ</a> » <span class="breadcrumb_last" aria-current="page">Dự án</span></span></span></p> 
    <script>
        jQuery('#portfolio-filter-standard').append(function () {
            return '<li><a data-option-value=".du-an-thi-cong" href="/du-an-thi-cong" title="dự án thi công">dự án thi công</a></li>';
        });
    </script>
</div>--%>




<%--<div class="breadcrumbs" typeof="BreadcrumbList" vocab="http://schema.org/">
    <div class="container">
        <span property="itemListElement" typeof="ListItem"><a property="item" typeof="WebPage" title="Go to ARBARO." href="http://ngoinhatuonglai.vn" class="home"><span property="name">Trang chủ</span></a><meta property="position" content="1"></span> <i class="fa fa-angle-right slash" aria-hidden="true"></i><span class="archive post-product-archive current-item">Sản phẩm</span>
    </div>
</div>--%>
<!-- PROJECT -->
<%--<div id="page-body" class="">--%>
<div class="all_box">
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
                    <div class="overlay"><span class="item-pro-title"><%#Eval("CS_Name")%></span></div>
                    <a href="/du-an/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm" class="link_full"></a>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <asp:Literal ID="lblPaging" runat="server" />
    <div class="wrapper"></div>
    <div class="wrapper mt-5">
        <hr class="my-5">
    </div>
    <%--<div class="wp-pagenavi" role="navigation">
        <span class="pages">Trang 1 trên 6</span><span aria-current="page" class="current">1</span><a class="page larger" title="Page 2" href="https://nordic.vn/san-pham/page/2/">2</a><a class="page larger" title="Page 3" href="https://nordic.vn/san-pham/page/3/">3</a><a class="page larger" title="Page 4" href="https://nordic.vn/san-pham/page/4/">4</a><a class="page larger" title="Page 5" href="https://nordic.vn/san-pham/page/5/">5</a><span class="extend">...</span><a class="nextpostslink" rel="next" aria-label="Trang sau" href="https://nordic.vn/san-pham/page/2/">»</a><a class="last" aria-label="Last Page" href="https://nordic.vn/san-pham/page/6/">Trang cuối »</a>
    </div>--%>
    <div class="section-inner">
        <div class="archive-title align-center">
            <h1>DANH MỤC DỰ ÁN KHÁC</h1>
            <div class="separator"><span></span></div>
        </div>
    </div>

    <div class="products columns-5 list_product">
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
    </div>
</div>
<%--</div>--%>
<!-- END PROJECT -->
<!-- PAGEBODY -->
