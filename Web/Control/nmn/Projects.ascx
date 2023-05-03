﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Projects.ascx.cs" Inherits="Web.Control.nmn.Projects" %>
<%@ Import Namespace="Core.Utils" %>
<%--<%@ Register Src="~/Control/nmn/SlideShowHome.ascx" TagName="slideShowHome" TagPrefix="uc2" %>--%>
<!-- PAGEBODY -->

<!-- BANNER -->
<div class="banner_pages banner_catpro section_bg" style="background-image: url(https://nordic.vn/wp-content/uploads/2021/07/z2588419486156_2f9d042b2b06ed6ffd0265a207f8b602-1.jpg);">
    <div class="inner">
        <h1 class="title_catpro">Dự án</h1>
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




<div class="breadcrumbs" typeof="BreadcrumbList" vocab="http://schema.org/">
    <div class="container">
     <%--   <span property="itemListElement" typeof="ListItem"><a property="item" typeof="WebPage" title="Go to NORDIC." href="http://ngoinhatuonglai.vn" class="home"><span property="name">Trang chủ</span></a><meta property="position" content="1"></span> <i class="fa fa-angle-right slash" aria-hidden="true"></i><span class="archive post-product-archive current-item">Sản phẩm</span>--%>
    </div>
</div>
<!-- PROJECT -->
<div class="all_box">

    <div class="spacer spacer-small"></div>
    <div class="wrapper align-center">
        <ul id="portfolio-filter-standard" class="filter clearfix" data-related-grid="grid-du-an">
            <li><a class="active" data-option-value="*" href="/du-an.htm">All</a></li>
            <li><a data-option-value=".biet-thu" href="/du-an/chung-cu.htm" title="Chung cư">Chung cư</a></li>
            <li><a data-option-value=".cafe-nha-hang-khach-san" href="/du-an/van-phong.htm" title="Văn phòng">Văn phòng</a></li>
            <li><a data-option-value=".can-ho" href="/du-an/biet-thu.htm" title="Biệt thự">Biệt thự</a></li>
            <li><a data-option-value=".du-an-trang-chu" href="/du-an/nha-pho.htm" title="Nhà phố">Nhà phố</a></li>
            <li><a data-option-value=".kien-truc" href="/du-an/nha-hang.htm" title="Nhà hàng">Nhà hàng</a></li>
            <li><a data-option-value=".nha-pho" href="/du-an/shop.htm" title="Shop">Shop</a></li>
        </ul>
    </div>
    <div class="spacer spacer-small"></div>
    <div class="products columns-4 list_product">
        <asp:Repeater ID="rptListCate" runat="server">
            <ItemTemplate>
                <div class="item_pro">
                    <div class="img" style="background-image: url(<%#Eval("CS_ImageURL") %>"></div>
                    <%-- <div class="info">
                        <h3 class="capt"><%#Eval("CS_Name")%></h3>
                        <div class="short_desc">
                            <p><em><strong><%#Eval("CS_Description") %></strong></em></p>
                        </div>
                        <div class="bottom">
                            <span class="link">Xem chi tiết</span>
                        </div>
                    </div>--%>
                    <div class="overlay"><span class="item-pro-title"><%#Eval("CS_Name")%></span></div>
                    <a href="/du-an/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm" class="link_full"></a>
                </div>

            </ItemTemplate>
        </asp:Repeater>


    </div>
    <asp:Literal ID="lblPaging" runat="server" />
    <%--<div class="wp-pagenavi" role="navigation">
        <span class="pages">Trang 1 trên 6</span><span aria-current="page" class="current">1</span><a class="page larger" title="Page 2" href="https://nordic.vn/san-pham/page/2/">2</a><a class="page larger" title="Page 3" href="https://nordic.vn/san-pham/page/3/">3</a><a class="page larger" title="Page 4" href="https://nordic.vn/san-pham/page/4/">4</a><a class="page larger" title="Page 5" href="https://nordic.vn/san-pham/page/5/">5</a><span class="extend">...</span><a class="nextpostslink" rel="next" aria-label="Trang sau" href="https://nordic.vn/san-pham/page/2/">»</a><a class="last" aria-label="Last Page" href="https://nordic.vn/san-pham/page/6/">Trang cuối »</a>
    </div>--%>
</div>
<!-- END PROJECT -->



<!-- PAGEBODY -->
