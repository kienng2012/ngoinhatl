<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Styles.ascx.cs" Inherits="Web.Control.nmn.Styles" %>
<%@ Import Namespace="Core.Utils" %>
<%--<%@ Register Src="~/Control/nmn/SlideShowHome.ascx" TagName="slideShowHome" TagPrefix="uc2" %>--%>
<!-- PAGEBODY -->

<!-- BANNER -->
<div class="banner_pages banner_catpro section_bg" style="background-image: url(https://nordic.vn/wp-content/uploads/2021/07/z2588419486156_2f9d042b2b06ed6ffd0265a207f8b602-1.jpg);">
    <div class="inner">
        <h1 class="title_catpro">Sản phẩm</h1>
    </div>
</div>
<!-- END BANNER -->

<!-- NAV BREADCUMBS-->
<!-- END NAV BREADCUMBS -->
<div class="breadcrumbs" typeof="BreadcrumbList" vocab="http://schema.org/">
    <div class="container">
        <span property="itemListElement" typeof="ListItem"><a property="item" typeof="WebPage" title="Go to NORDIC." href="https://nordic.vn" class="home"><span property="name">Trang chủ</span></a><meta property="position" content="1"></span> <i class="fa fa-angle-right slash" aria-hidden="true"></i><span class="archive post-product-archive current-item">Sản phẩm</span>
    </div>
</div>
<!-- PROJECT -->
<div class="all_box">
    <%--<div class="filter_product">
        <div class="title">
            <div class="box">
                <span class="icon">
                    <svg xmlns="http://www.w3.org/2000/svg" width="52" height="32" viewBox="0 0 52 32" class="this_on">
                        <path fill="currentColor" d="M49.23 5.9H24.37c-.5-3.44-3.45-5.9-7.14-5.9S10.6 2.46 10.1 5.9H2.46C1.72 5.9 1 6.66 1 7.4s.73 1.47 1.47 1.47h7.63c.5 3.45 3.45 5.91 7.14 5.91s6.65-2.46 7.14-5.9h24.86c.74 0 1.48-.75 1.48-1.49s-.74-1.47-1.48-1.47zm-32 5.91c-1.97 0-3.44-1.23-4.18-2.95-.25-.5-.25-.98-.25-1.48s0-.98.25-1.47c.73-1.73 2.21-2.96 4.18-2.96s3.45 1.23 4.19 2.96c.24.49.24.98.24 1.47s0 .99-.24 1.48c-.74 1.72-2.22 2.95-4.19 2.95zM49.23 23.14h-5.17c-.49-3.45-3.44-5.91-7.14-5.91s-6.64 2.46-7.13 5.9H2.46c-.73 0-1.47.75-1.47 1.49s.73 1.47 1.47 1.47H29.8c.49 3.45 3.44 5.91 7.13 5.91s6.65-2.46 7.14-5.9h5.17c.74 0 1.48-.75 1.48-1.49s-.74-1.47-1.48-1.47zm-12.3 5.9c-1.98 0-3.45-1.22-4.2-2.95-.24-.49-.24-.98-.24-1.48s0-.98.25-1.47c.49-1.73 2.21-2.96 4.18-2.96s3.45 1.23 4.19 2.96c.24.49.24.98.24 1.47s0 .99-.24 1.48c-.74 1.72-2.22 2.96-4.19 2.96z"></path></svg>
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" class="this_off">
                        <path fill="currentColor" d="M1.16 17.709a1.068 1.068 0 0 1 1.284-1.704l14.198 10.699a1.068 1.068 0 0 1-1.284 1.704L1.16 17.709z"></path><path fill="currentColor" d="M16.642 28.407a1.066 1.066 0 1 1-1.284-1.704l14.198-10.699a1.066 1.066 0 1 1 1.284 1.704L16.642 28.407zM1.16 5.264A1.068 1.068 0 0 1 2.444 3.56l14.198 10.699a1.068 1.068 0 0 1-1.284 1.704L1.16 5.264z"></path><path fill="currentColor" d="M16.642 15.963a1.066 1.066 0 1 1-1.284-1.704L29.556 3.56a1.066 1.066 0 1 1 1.284 1.704L16.642 15.963z"></path></svg>
                </span>
                <span>Bộ lọc</span>
            </div>
        </div>
        <div class="box_filter">
            <div id="devvn_wcfa_layered_nav-4" class="widget devvn_wcfa woocommerce devvn_wcfa_widget_layered_nav woocommerce-widget-layered-nav ">
                <div class="filter-title">Chủng loại</div>
                <ul class="wafc-widget-layered-nav-list woocommerce-widget-layered-nav-list wcfa_3_columns">
                    <li class="wcfa_3_columns_item display_type_default wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_chung-loai=ban-ghe-an">Bàn ghế ăn</a> <span class="count">(2)</span></li>
                    <li class="wcfa_3_columns_item display_type_default wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_chung-loai=ban-tra">Bàn trà</a> <span class="count">(7)</span></li>
                    <li class="wcfa_3_columns_item display_type_default wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_chung-loai=ghe-amrchair">Ghế Amrchair</a> <span class="count">(3)</span></li>
                    <li class="wcfa_3_columns_item display_type_default wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_chung-loai=ghe-nghi">Ghế nghỉ</a> <span class="count">(2)</span></li>
                    <li class="wcfa_3_columns_item display_type_default wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_chung-loai=giuong">Giường</a> <span class="count">(4)</span></li>
                    <li class="wcfa_3_columns_item display_type_default wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_chung-loai=ke-tivi">Kệ tivi</a> <span class="count">(3)</span></li>
                    <li class="wcfa_3_columns_item display_type_default wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_chung-loai=modul">Modul</a> <span class="count">(8)</span></li>
                    <li class="wcfa_3_columns_item display_type_default wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_chung-loai=signature-sofa">Signature Sofa</a> <span class="count">(1)</span></li>
                    <li class="wcfa_3_columns_item display_type_default wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_chung-loai=sofa">Sofa</a> <span class="count">(3)</span></li>
                    <li class="wcfa_3_columns_item display_type_default wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_chung-loai=sofa-don">Sofa đơn</a> <span class="count">(4)</span></li>
                    <li class="wcfa_3_columns_item display_type_default wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_chung-loai=sofa-i">Sofa I</a> <span class="count">(3)</span></li>
                    <li class="wcfa_3_columns_item display_type_default wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_chung-loai=sofa-l">Sofa L</a> <span class="count">(1)</span></li>
                    <li class="wcfa_3_columns_item display_type_default wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_chung-loai=tu-bep">Tủ bếp</a> <span class="count">(3)</span></li>
                </ul>
            </div>
            <div id="devvn_wcfa_layered_nav-3" class="widget devvn_wcfa woocommerce devvn_wcfa_widget_layered_nav woocommerce-widget-layered-nav filter-color">
                <div class="filter-title">Màu sắc</div>
                <ul class="wafc-widget-layered-nav-list woocommerce-widget-layered-nav-list wcfa_6_columns">
                    <li class="wcfa_6_columns_item display_type_color wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_mau-sac=be"><span class="wcfa_color_item" style="background-color: #ddccaa"></span></a></li>
                    <li class="wcfa_6_columns_item display_type_color wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_mau-sac=den"><span class="wcfa_color_item" style="background-color: #000000"></span></a></li>
                    <li class="wcfa_6_columns_item display_type_color wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_mau-sac=den-xam"><span class="wcfa_color_item" style="background-color: #919191"></span></a></li>
                    <li class="wcfa_6_columns_item display_type_color wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_mau-sac=nau"><span class="wcfa_color_item" style="background-color: #a58c73"></span></a></li>
                    <li class="wcfa_6_columns_item display_type_color wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_mau-sac=nau-dam">Nâu đậm</a></li>
                    <li class="wcfa_6_columns_item display_type_color wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_mau-sac=nau-trang"><span class="wcfa_color_item" style="background-color: #ddddcc"></span></a></li>
                    <li class="wcfa_6_columns_item display_type_color wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_mau-sac=nau-vang"><span class="wcfa_color_item" style="background-color: #ddb16e"></span></a></li>
                    <li class="wcfa_6_columns_item display_type_color wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_mau-sac=nau-xam"><span class="wcfa_color_item" style="background-color: #b7b7b7"></span></a></li>
                    <li class="wcfa_6_columns_item display_type_color wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_mau-sac=tim">Tím</a></li>
                    <li class="wcfa_6_columns_item display_type_color wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_mau-sac=trang"><span class="wcfa_color_item" style="background-color: #ffffff"></span></a></li>
                    <li class="wcfa_6_columns_item display_type_color wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_mau-sac=trang-xam"><span class="wcfa_color_item" style="background-color: #dddddd"></span></a></li>
                    <li class="wcfa_6_columns_item display_type_color wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_mau-sac=vang-dam">Vàng đậm</a></li>
                    <li class="wcfa_6_columns_item display_type_color wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_mau-sac=vang-nhat">Vàng nhạt</a></li>
                    <li class="wcfa_6_columns_item display_type_color wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_mau-sac=xam"><span class="wcfa_color_item" style="background-color: #e2e2e2"></span></a></li>
                    <li class="wcfa_6_columns_item display_type_color wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_mau-sac=xam-nhat">Xám nhạt</a></li>
                    <li class="wcfa_6_columns_item display_type_color wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_mau-sac=xanh"><span class="wcfa_color_item" style="background-color: #00287a"></span></a></li>
                    <li class="wcfa_6_columns_item display_type_color wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_mau-sac=xanh-la">Xanh lá</a></li>
                    <li class="wcfa_6_columns_item display_type_color wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_mau-sac=xanh-navy">Xanh Navy</a></li>
                    <li class="wcfa_6_columns_item display_type_color wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_mau-sac=xanh-vang">Xanh Vàng</a></li>
                </ul>
            </div>
            <div id="devvn_wcfa_layered_nav-10" class="widget devvn_wcfa woocommerce devvn_wcfa_widget_layered_nav woocommerce-widget-layered-nav ">
                <div class="filter-title">Lọc theo</div>
                <ul class="wafc-widget-layered-nav-list woocommerce-widget-layered-nav-list wcfa_1_columns">
                    <li class="wcfa_1_columns_item display_type_default wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_chat-lieu=da-thuoc-bo-y">Da thuộc Bò ý</a> <span class="count">(10)</span></li>
                    <li class="wcfa_1_columns_item display_type_default wcfa_widget_layered_nav__item wc-layered-nav-term "><a rel="nofollow" href="https://nordic.vn/san-pham/?filter_chat-lieu=vai-bo-dao-nha-vip">Vải Bồ Đào Nha VIP</a> <span class="count">(10)</span></li>
                </ul>
            </div>
        </div>
    </div>--%>
    <%--<div class="woocommerce-notices-wrapper"></div>
    <form class="woocommerce-ordering" method="get">
        <select name="orderby" class="orderby" aria-label="Đơn hàng của cửa hàng">
            <option value="menu_order" selected="selected">Thứ tự mặc định</option>
            <option value="popularity">Thứ tự theo mức độ phổ biến</option>
            <option value="rating">Thứ tự theo điểm đánh giá</option>
            <option value="date">Mới nhất</option>
            <option value="price">Thứ tự theo giá: thấp đến cao</option>
            <option value="price-desc">Thứ tự theo giá: cao xuống thấp</option>
        </select>
        <input type="hidden" name="paged" value="1">
    </form>--%>
    <div class="spacer spacer-small"></div>
    <div class="wrapper align-center">
        <ul id="portfolio-filter-standard" class="filter clearfix" data-related-grid="grid-du-an">
            <li><a class="active" data-option-value="*">All</a></li>
            <li><a data-option-value=".biet-thu" href="https://housedesign.vn/du-an/biet-thu/" title="Biệt Thự">Biệt Thự</a></li>
            <li><a data-option-value=".cafe-nha-hang-khach-san" href="https://housedesign.vn/du-an/cafe-nha-hang-khach-san/" title="Cafe Nhà Hàng Khách Sạn">Cafe Nhà Hàng Khách Sạn</a></li>
            <li><a data-option-value=".can-ho" href="https://housedesign.vn/du-an/can-ho/" title="Căn Hộ">Căn Hộ</a></li>
            <li><a data-option-value=".du-an-trang-chu" href="https://housedesign.vn/du-an/du-an-trang-chu/" title="dự án nổi bật">dự án nổi bật</a></li>
            <li><a data-option-value=".kien-truc" href="https://housedesign.vn/du-an/kien-truc/" title="Kiến Trúc">Kiến Trúc</a></li>
            <li><a data-option-value=".nha-pho" href="https://housedesign.vn/du-an/nha-pho/" title="Nhà Phố">Nhà Phố</a></li>
            <li><a data-option-value=".showroom-shop" href="https://housedesign.vn/du-an/showroom-shop/" title="Showroom Shop">Showroom Shop</a></li>
            <li><a data-option-value=".van-phong" href="https://housedesign.vn/du-an/van-phong/" title="Văn phòng">Văn phòng</a></li>
            <li><a data-option-value=".du-an-thi-cong" href="/du-an-thi-cong" title="dự án thi công">dự án thi công</a></li>
        </ul>
    </div>
    <div class="spacer spacer-small"></div>
    <div class="products columns-2 list_product">
        <asp:Repeater ID="rptListCate" runat="server">
            <ItemTemplate>
                <div class="item_pro">
                    <div class="img" style="background-image: url(<%#Eval("CS_ImageURL") %>"></div>
                    <div class="info">
                        <h3 class="capt"><%#Eval("CS_Name")%></h3>
                        <div class="short_desc">
                            <p><em><strong><%#Eval("CS_Description") %></strong></em></p>
                        </div>
                        <div class="bottom">
                            <%--<div class="price">
                                <span class="woocommerce-Price-amount amount">
                                    <bdi>18.700.000&nbsp;<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span>
                            </div>--%>
                            <span class="link">Xem chi tiết</span>
                        </div>
                    </div>
                    <a href="/Phong-cach-<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm" class="link_full"></a>
                </div>

            </ItemTemplate>
        </asp:Repeater>
        <div class="item_pro">
            <%-- <div class="">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/27-800x533.jpg" />
            </div>--%>
            <div class="img" style="background-image: url(https://housedesign.vn/wp-content/uploads/2022/12/27-800x533.jpg);"></div>
            <div class="info">
                <h3 class="capt">Hug SideBoard</h3>
                <div class="short_desc">
                    <p><em><strong>Gỗ sồi Mỹ</strong></em></p>
                </div>
                <div class="bottom">
                    <div class="price">
                        <span class="woocommerce-Price-amount amount">
                            <bdi>46.300.000&nbsp;<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span>
                    </div>
                    <span class="link">Xem chi tiết</span>
                </div>
            </div>
            <a href="https://nordic.vn/hug-sideboard/" class="link_full"></a>
        </div>
    </div>
    <div class="wp-pagenavi" role="navigation">
        <span class="pages">Trang 1 trên 6</span><span aria-current="page" class="current">1</span><a class="page larger" title="Page 2" href="https://nordic.vn/san-pham/page/2/">2</a><a class="page larger" title="Page 3" href="https://nordic.vn/san-pham/page/3/">3</a><a class="page larger" title="Page 4" href="https://nordic.vn/san-pham/page/4/">4</a><a class="page larger" title="Page 5" href="https://nordic.vn/san-pham/page/5/">5</a><span class="extend">...</span><a class="nextpostslink" rel="next" aria-label="Trang sau" href="https://nordic.vn/san-pham/page/2/">»</a><a class="last" aria-label="Last Page" href="https://nordic.vn/san-pham/page/6/">Trang cuối »</a>
    </div>
</div>
<!-- END PROJECT -->
<%--<div id="page-body">
    <section id="section-du-an" class="">
        <div class="section-inner">



            <div class="wrapper align-center">
                <ul id="portfolio-filter-standard" class="filter clearfix" data-related-grid="grid-du-an">
                    <li><a class="active" data-option-value="*">All</a></li>
                    <li><a data-option-value=".biet-thu" href="https://housedesign.vn/du-an/biet-thu/" title="Biệt Thự">Biệt Thự</a></li>
                    <li><a data-option-value=".cafe-nha-hang-khach-san" href="https://housedesign.vn/du-an/cafe-nha-hang-khach-san/" title="Cafe Nhà Hàng Khách Sạn">Cafe Nhà Hàng Khách Sạn</a></li>
                    <li><a data-option-value=".can-ho" href="https://housedesign.vn/du-an/can-ho/" title="Căn Hộ">Căn Hộ</a></li>
                    <li><a data-option-value=".du-an-trang-chu" href="https://housedesign.vn/du-an/du-an-trang-chu/" title="dự án nổi bật">dự án nổi bật</a></li>
                    <li><a data-option-value=".kien-truc" href="https://housedesign.vn/du-an/kien-truc/" title="Kiến Trúc">Kiến Trúc</a></li>
                    <li><a data-option-value=".nha-pho" href="https://housedesign.vn/du-an/nha-pho/" title="Nhà Phố">Nhà Phố</a></li>
                    <li><a data-option-value=".showroom-shop" href="https://housedesign.vn/du-an/showroom-shop/" title="Showroom Shop">Showroom Shop</a></li>
                    <li><a data-option-value=".van-phong" href="https://housedesign.vn/du-an/van-phong/" title="Văn phòng">Văn phòng</a></li>
                    <li><a data-option-value=".du-an-thi-cong" href="/du-an-thi-cong" title="dự án thi công">dự án thi công</a></li>
                </ul>
            </div>
            <div class="spacer spacer-small"></div>
            <div id="grid-du-an" class="masonry portfolio-entries clearfix masonry-spaced " data-maxitemwidth="600" style="position: relative; height: 32882.9px;">


                <div class="portfolio-masonry-entry masonry-item cafe-nha-hang-khach-san kien-truc " style="position: absolute; left: 0px; top: 0px; width: 572px;">
                    <div class="entry-thumb portfolio-thumb">

                        <div class="imgoverlay overlay-light overlay-transparent overlay-simple name-hidden">
                            <img width="800" height="800" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-800x800.jpg" class="attachment-thumb-big size-thumb-big wp-post-image entered lazyloaded" alt="" data-lazy-srcset="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-800x800.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-300x300.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-1024x1024.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-150x150.jpg 150w, https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-768x768.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-1536x1536.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-420x420.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-1100x1100.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4.jpg 1600w" data-lazy-sizes="(max-width: 800px) 100vw, 800px" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-800x800.jpg" data-ll-status="loaded" sizes="(max-width: 800px) 100vw, 800px" srcset=""><noscript><img width="800" height="800" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-800x800.jpg" class="attachment-thumb-big size-thumb-big wp-post-image" alt="" srcset="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-800x800.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-300x300.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-1024x1024.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-150x150.jpg 150w, https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-768x768.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-1536x1536.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-420x420.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-1100x1100.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4.jpg 1600w" sizes="(max-width: 800px) 100vw, 800px" /></noscript>
                            <div class="overlaycaption">
                                <h5 class="overlay-name title-minimal"><strong>Coffee phong cách Wabisabi Việt</strong></h5>
                            </div>
                            <a href="https://housedesign.vn/du-an/coffee-phong-cach-wabisabi-viet/" class="transition"></a>
                        </div>

                    </div>
                </div>
                <!-- END .portfolio-masonry-entry -->


                <div class="portfolio-masonry-entry masonry-item can-ho can-ho-1-phong-ngu " style="position: absolute; left: 582px; top: 0px; width: 572px;">
                    <div class="entry-thumb portfolio-thumb">

                        <div class="imgoverlay overlay-light overlay-transparent overlay-simple name-hidden">
                            <img width="800" height="533" src="https://housedesign.vn/wp-content/uploads/2022/12/27-800x533.jpg" class="attachment-thumb-big size-thumb-big wp-post-image entered lazyloaded" alt="" data-lazy-srcset="https://housedesign.vn/wp-content/uploads/2022/12/27-800x533.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/12/27-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/12/27-1024x683.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/12/27-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/12/27-1536x1024.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/12/27-2048x1365.jpg 2048w, https://housedesign.vn/wp-content/uploads/2022/12/27-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/12/27-1100x733.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/12/27-1690x1127.jpg 1690w" data-lazy-sizes="(max-width: 800px) 100vw, 800px" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/27-800x533.jpg" data-ll-status="loaded" sizes="(max-width: 800px) 100vw, 800px" srcset=""><noscript><img width="800" height="533" src="https://housedesign.vn/wp-content/uploads/2022/12/27-800x533.jpg" class="attachment-thumb-big size-thumb-big wp-post-image" alt="" srcset="https://housedesign.vn/wp-content/uploads/2022/12/27-800x533.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/12/27-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/12/27-1024x683.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/12/27-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/12/27-1536x1024.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/12/27-2048x1365.jpg 2048w, https://housedesign.vn/wp-content/uploads/2022/12/27-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/12/27-1100x733.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/12/27-1690x1127.jpg 1690w" sizes="(max-width: 800px) 100vw, 800px" /></noscript>
                            <div class="overlaycaption">
                                <h5 class="overlay-name title-minimal"><strong>Pearl Plaza-Căn hộ mộng mơ</strong></h5>
                            </div>
                            <a href="https://housedesign.vn/du-an/pearl-plaza-can-ho-mong-mo/" class="transition"></a>
                        </div>

                    </div>
                </div>
                <!-- END .portfolio-masonry-entry -->


                <div class="portfolio-masonry-entry masonry-item can-ho can-ho-3-phong-ngu du-an-trang-chu " style="position: absolute; left: 582px; top: 391.087px; width: 572px;">
                    <div class="entry-thumb portfolio-thumb">

                        <div class="imgoverlay overlay-light overlay-transparent overlay-simple name-hidden">
                            <img width="800" height="533" src="https://housedesign.vn/wp-content/uploads/2022/10/housedesign-sadora-19-800x533.jpg" class="attachment-thumb-big size-thumb-big wp-post-image entered lazyloaded" alt="" data-lazy-srcset="https://housedesign.vn/wp-content/uploads/2022/10/housedesign-sadora-19-800x533.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-sadora-19-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-sadora-19-1024x683.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-sadora-19-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-sadora-19-1536x1024.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-sadora-19-2048x1365.jpg 2048w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-sadora-19-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-sadora-19-1100x733.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-sadora-19-1690x1127.jpg 1690w" data-lazy-sizes="(max-width: 800px) 100vw, 800px" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/10/housedesign-sadora-19-800x533.jpg" data-ll-status="loaded" sizes="(max-width: 800px) 100vw, 800px" srcset=""><noscript><img width="800" height="533" src="https://housedesign.vn/wp-content/uploads/2022/10/housedesign-sadora-19-800x533.jpg" class="attachment-thumb-big size-thumb-big wp-post-image" alt="" srcset="https://housedesign.vn/wp-content/uploads/2022/10/housedesign-sadora-19-800x533.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-sadora-19-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-sadora-19-1024x683.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-sadora-19-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-sadora-19-1536x1024.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-sadora-19-2048x1365.jpg 2048w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-sadora-19-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-sadora-19-1100x733.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-sadora-19-1690x1127.jpg 1690w" sizes="(max-width: 800px) 100vw, 800px" /></noscript>
                            <div class="overlaycaption">
                                <h5 class="overlay-name title-minimal"><strong>Thi công thực tế- Duplex Sadora Quận 2</strong></h5>
                            </div>
                            <a href="https://housedesign.vn/du-an/thi-cong-thuc-te-duplex-sadora-quan-2/" class="transition"></a>
                        </div>

                    </div>
                </div>
                <!-- END .portfolio-masonry-entry -->


                <div class="portfolio-masonry-entry masonry-item can-ho can-ho-3-phong-ngu " style="position: absolute; left: 0px; top: 582px; width: 572px;">
                    <div class="entry-thumb portfolio-thumb">

                        <div class="imgoverlay overlay-light overlay-transparent overlay-simple name-hidden">
                            <img width="800" height="533" src="https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-800x533.jpg" class="attachment-thumb-big size-thumb-big wp-post-image entered lazyloaded" alt="" data-lazy-srcset="https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-800x533.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-1024x683.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-1536x1024.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-1100x733.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-1690x1126.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13.jpg 2048w" data-lazy-sizes="(max-width: 800px) 100vw, 800px" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-800x533.jpg" srcset="https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-800x533.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-1024x683.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-1536x1024.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-1100x733.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-1690x1126.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13.jpg 2048w" data-ll-status="loaded" sizes="(max-width: 800px) 100vw, 800px"><noscript><img width="800" height="533" src="https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-800x533.jpg" class="attachment-thumb-big size-thumb-big wp-post-image" alt="" srcset="https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-800x533.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-1024x683.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-1536x1024.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-1100x733.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13-1690x1126.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/10/Housedesign-Hinode-tower-A-13.jpg 2048w" sizes="(max-width: 800px) 100vw, 800px" /></noscript>
                            <div class="overlaycaption">
                                <h5 class="overlay-name title-minimal"><strong>Thi công thực tế căn hộ Hinode tower</strong></h5>
                            </div>
                            <a href="https://housedesign.vn/du-an/thi-cong-thuc-te-can-ho-hinode-tower/" class="transition"></a>
                        </div>

                    </div>
                </div>
                <!-- END .portfolio-masonry-entry -->


                <div class="portfolio-masonry-entry masonry-item biet-thu " style="position: absolute; left: 582px; top: 782.174px; width: 572px;">
                    <div class="entry-thumb portfolio-thumb">

                        <div class="imgoverlay overlay-light overlay-transparent overlay-simple name-hidden">
                            <img width="800" height="775" src="https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-800x775.jpg" class="attachment-thumb-big size-thumb-big wp-post-image entered lazyloaded" alt="" data-lazy-srcset="https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-800x775.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-300x291.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-1024x992.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-768x744.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-1536x1487.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-420x407.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-1100x1065.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-1690x1636.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1.jpg 1800w" data-lazy-sizes="(max-width: 800px) 100vw, 800px" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-800x775.jpg" srcset="https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-800x775.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-300x291.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-1024x992.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-768x744.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-1536x1487.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-420x407.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-1100x1065.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-1690x1636.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1.jpg 1800w" data-ll-status="loaded" sizes="(max-width: 800px) 100vw, 800px"><noscript><img width="800" height="775" src="https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-800x775.jpg" class="attachment-thumb-big size-thumb-big wp-post-image" alt="" srcset="https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-800x775.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-300x291.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-1024x992.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-768x744.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-1536x1487.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-420x407.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-1100x1065.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1-1690x1636.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-vinhome-p-ngu-1.jpg 1800w" sizes="(max-width: 800px) 100vw, 800px" /></noscript>
                            <div class="overlaycaption">
                                <h5 class="overlay-name title-minimal"><strong>Thi công thự tế Villa Vinhome Quận 9</strong></h5>
                            </div>
                            <a href="https://housedesign.vn/du-an/thi-cong-thu-te-villa-vinhome-quan-9/" class="transition"></a>
                        </div>

                    </div>
                </div>
                <!-- END .portfolio-masonry-entry -->


                <div class="portfolio-masonry-entry masonry-item can-ho can-ho-2-phong-ngu " style="position: absolute; left: 0px; top: 973.513px; width: 572px;">
                    <div class="entry-thumb portfolio-thumb">

                        <div class="imgoverlay overlay-light overlay-transparent overlay-simple name-hidden">
                            <img width="800" height="533" src="https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-800x533.jpg" class="attachment-thumb-big size-thumb-big wp-post-image entered lazyloaded" alt="" data-lazy-srcset="https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-800x533.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-1024x683.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-1536x1024.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-2048x1365.jpg 2048w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-1100x733.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-1690x1127.jpg 1690w" data-lazy-sizes="(max-width: 800px) 100vw, 800px" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-800x533.jpg" srcset="https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-800x533.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-1024x683.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-1536x1024.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-2048x1365.jpg 2048w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-1100x733.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-1690x1127.jpg 1690w" data-ll-status="loaded" sizes="(max-width: 800px) 100vw, 800px"><noscript><img width="800" height="533" src="https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-800x533.jpg" class="attachment-thumb-big size-thumb-big wp-post-image" alt="" srcset="https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-800x533.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-1024x683.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-1536x1024.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-2048x1365.jpg 2048w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-1100x733.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-midtow-akhachbep-1-1690x1127.jpg 1690w" sizes="(max-width: 800px) 100vw, 800px" /></noscript>
                            <div class="overlaycaption">
                                <h5 class="overlay-name title-minimal"><strong>Thi công thực tế căn hộ Midtown</strong></h5>
                            </div>
                            <a href="https://housedesign.vn/du-an/thi-cong-thuc-te-can-ho-midtow/" class="transition"></a>
                        </div>

                    </div>
                </div>
                <!-- END .portfolio-masonry-entry -->


                <div class="portfolio-masonry-entry masonry-item can-ho can-ho-3-phong-ngu " style="position: absolute; left: 582px; top: 1346.3px; width: 572px;">
                    <div class="entry-thumb portfolio-thumb">

                        <div class="imgoverlay overlay-light overlay-transparent overlay-simple name-hidden">
                            <img width="800" height="450" class="attachment-thumb-big size-thumb-big wp-post-image entered lazyloaded" alt="" data-lazy-srcset="https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-800x450.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-300x169.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-1024x576.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-768x432.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-1536x864.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-420x236.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-1100x619.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-1690x951.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5.jpg 1920w" data-lazy-sizes="(max-width: 800px) 100vw, 800px" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-800x450.jpg" src="https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-800x450.jpg" data-ll-status="loaded" sizes="(max-width: 800px) 100vw, 800px" srcset="https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-800x450.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-300x169.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-1024x576.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-768x432.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-1536x864.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-420x236.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-1100x619.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-1690x951.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5.jpg 1920w"><noscript><img width="800" height="450" src="https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-800x450.jpg" class="attachment-thumb-big size-thumb-big wp-post-image" alt="" srcset="https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-800x450.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-300x169.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-1024x576.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-768x432.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-1536x864.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-420x236.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-1100x619.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5-1690x951.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/10/ecogreen-housedesign-khach-bep-5.jpg 1920w" sizes="(max-width: 800px) 100vw, 800px" /></noscript>
                            <div class="overlaycaption">
                                <h5 class="overlay-name title-minimal"><strong>Ecogreen-Căn hộ duplex</strong></h5>
                            </div>
                            <a href="https://housedesign.vn/du-an/ecogreen-can-ho-duplex/" class="transition"></a>
                        </div>

                    </div>
                </div>
                <!-- END .portfolio-masonry-entry -->


                <div class="portfolio-masonry-entry masonry-item can-ho can-ho-2-phong-ngu " style="position: absolute; left: 0px; top: 1365.03px; width: 572px;">
                    <div class="entry-thumb portfolio-thumb">

                        <div class="imgoverlay overlay-light overlay-transparent overlay-simple name-hidden">
                            <img width="800" height="832" class="attachment-thumb-big size-thumb-big wp-post-image entered lazyloaded" alt="" data-lazy-srcset="https://housedesign.vn/wp-content/uploads/2022/10/housedesign-phong-khach-5-800x832.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-phong-khach-5-288x300.jpg 288w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-phong-khach-5-984x1024.jpg 984w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-phong-khach-5-768x799.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-phong-khach-5-420x437.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-phong-khach-5-1100x1145.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-phong-khach-5.jpg 1257w" data-lazy-sizes="(max-width: 800px) 100vw, 800px" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/10/housedesign-phong-khach-5-800x832.jpg" src="https://housedesign.vn/wp-content/uploads/2022/10/housedesign-phong-khach-5-800x832.jpg" data-ll-status="loaded" sizes="(max-width: 800px) 100vw, 800px" srcset="https://housedesign.vn/wp-content/uploads/2022/10/housedesign-phong-khach-5-800x832.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-phong-khach-5-288x300.jpg 288w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-phong-khach-5-984x1024.jpg 984w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-phong-khach-5-768x799.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-phong-khach-5-420x437.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-phong-khach-5-1100x1145.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-phong-khach-5.jpg 1257w"><noscript><img width="800" height="832" src="https://housedesign.vn/wp-content/uploads/2022/10/housedesign-phong-khach-5-800x832.jpg" class="attachment-thumb-big size-thumb-big wp-post-image" alt="" srcset="https://housedesign.vn/wp-content/uploads/2022/10/housedesign-phong-khach-5-800x832.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-phong-khach-5-288x300.jpg 288w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-phong-khach-5-984x1024.jpg 984w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-phong-khach-5-768x799.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-phong-khach-5-420x437.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-phong-khach-5-1100x1145.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/10/housedesign-phong-khach-5.jpg 1257w" sizes="(max-width: 800px) 100vw, 800px" /></noscript>
                            <div class="overlaycaption">
                                <h5 class="overlay-name title-minimal"><strong>Estella Heights- Chill nhẹ nhàng</strong></h5>
                            </div>
                            <a href="https://housedesign.vn/du-an/estella-heights-chill-nhe-nhang/" class="transition"></a>
                        </div>

                    </div>
                </div>
                <!-- END .portfolio-masonry-entry -->


                <div class="portfolio-masonry-entry masonry-item cafe-nha-hang-khach-san " style="position: absolute; left: 582px; top: 1678.05px; width: 572px;">
                    <div class="entry-thumb portfolio-thumb">

                        <div class="imgoverlay overlay-light overlay-transparent overlay-simple name-hidden">
                            <img width="800" height="500" class="attachment-thumb-big size-thumb-big wp-post-image entered lazyloaded" alt="" data-lazy-srcset="https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-800x500.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-300x188.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-1024x640.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-768x480.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-1536x960.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-420x263.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-1100x688.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-1690x1056.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11.jpg 2000w" data-lazy-sizes="(max-width: 800px) 100vw, 800px" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-800x500.jpg" src="https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-800x500.jpg" data-ll-status="loaded" sizes="(max-width: 800px) 100vw, 800px" srcset="https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-800x500.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-300x188.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-1024x640.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-768x480.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-1536x960.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-420x263.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-1100x688.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-1690x1056.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11.jpg 2000w"><noscript><img width="800" height="500" src="https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-800x500.jpg" class="attachment-thumb-big size-thumb-big wp-post-image" alt="" srcset="https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-800x500.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-300x188.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-1024x640.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-768x480.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-1536x960.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-420x263.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-1100x688.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11-1690x1056.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-chay-ngu-sac-11.jpg 2000w" sizes="(max-width: 800px) 100vw, 800px" /></noscript>
                            <div class="overlaycaption">
                                <h5 class="overlay-name title-minimal"><strong>Nhà Hàng Chay Ngũ Sắc</strong></h5>
                            </div>
                            <a href="https://housedesign.vn/du-an/nha-hang-chay-ngu-sac/" class="transition"></a>
                        </div>

                    </div>
                </div>
                <!-- END .portfolio-masonry-entry -->


                <div class="portfolio-masonry-entry masonry-item cafe-nha-hang-khach-san " style="position: absolute; left: 0px; top: 1970.26px; width: 572px;">
                    <div class="entry-thumb portfolio-thumb">

                        <div class="imgoverlay overlay-light overlay-transparent overlay-simple name-hidden">
                            <img width="800" height="533" class="attachment-thumb-big size-thumb-big wp-post-image entered lazyloaded" alt="" data-lazy-srcset="https://housedesign.vn/wp-content/uploads/2022/09/A0609572-800x533.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/09/A0609572-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/09/A0609572-1024x683.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/09/A0609572-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/09/A0609572-1536x1024.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/09/A0609572-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/09/A0609572-1100x733.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/09/A0609572-1690x1126.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/09/A0609572.jpg 2048w" data-lazy-sizes="(max-width: 800px) 100vw, 800px" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/09/A0609572-800x533.jpg" src="https://housedesign.vn/wp-content/uploads/2022/09/A0609572-800x533.jpg" data-ll-status="loaded" sizes="(max-width: 800px) 100vw, 800px" srcset="https://housedesign.vn/wp-content/uploads/2022/09/A0609572-800x533.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/09/A0609572-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/09/A0609572-1024x683.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/09/A0609572-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/09/A0609572-1536x1024.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/09/A0609572-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/09/A0609572-1100x733.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/09/A0609572-1690x1126.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/09/A0609572.jpg 2048w"><noscript><img width="800" height="533" src="https://housedesign.vn/wp-content/uploads/2022/09/A0609572-800x533.jpg" class="attachment-thumb-big size-thumb-big wp-post-image" alt="" srcset="https://housedesign.vn/wp-content/uploads/2022/09/A0609572-800x533.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/09/A0609572-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/09/A0609572-1024x683.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/09/A0609572-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/09/A0609572-1536x1024.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/09/A0609572-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/09/A0609572-1100x733.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/09/A0609572-1690x1126.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/09/A0609572.jpg 2048w" sizes="(max-width: 800px) 100vw, 800px" /></noscript>
                            <div class="overlaycaption">
                                <h5 class="overlay-name title-minimal"><strong>Ghesai cat coffe- 05 Nguyễn Hoàng Tôn, Tây Hồ, Hà Nội</strong></h5>
                            </div>
                            <a href="https://housedesign.vn/du-an/ghesai-cat-coffe-05-nguyen-hoang-ton-tay-ho-ha-noi/" class="transition"></a>
                        </div>

                    </div>
                </div>
                <!-- END .portfolio-masonry-entry -->


                <div class="portfolio-masonry-entry masonry-item can-ho can-ho-3-phong-ngu " style="position: absolute; left: 582px; top: 2045.55px; width: 572px;">
                    <div class="entry-thumb portfolio-thumb">

                        <div class="imgoverlay overlay-light overlay-transparent overlay-simple name-hidden">
                            <img width="800" height="533" class="attachment-thumb-big size-thumb-big wp-post-image entered lazyloaded" alt="" data-lazy-srcset="https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-800x533.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-1024x683.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-1536x1024.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-1100x733.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-1690x1126.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16.jpg 2048w" data-lazy-sizes="(max-width: 800px) 100vw, 800px" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-800x533.jpg" src="https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-800x533.jpg" data-ll-status="loaded" sizes="(max-width: 800px) 100vw, 800px" srcset="https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-800x533.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-1024x683.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-1536x1024.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-1100x733.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-1690x1126.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16.jpg 2048w"><noscript><img width="800" height="533" src="https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-800x533.jpg" class="attachment-thumb-big size-thumb-big wp-post-image" alt="" srcset="https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-800x533.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-1024x683.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-1536x1024.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-1100x733.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16-1690x1126.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-16.jpg 2048w" sizes="(max-width: 800px) 100vw, 800px" /></noscript>
                            <div class="overlaycaption">
                                <h5 class="overlay-name title-minimal"><strong>Thi công thực tế- Chung cư H2 Hải Phòng</strong></h5>
                            </div>
                            <a href="https://housedesign.vn/du-an/cong-trinh-thuc-te-chung-cu-hai-phong/" class="transition"></a>
                        </div>

                    </div>
                </div>
                <!-- END .portfolio-masonry-entry -->


                <div class="portfolio-masonry-entry masonry-item can-ho can-ho-3-phong-ngu " style="position: absolute; left: 0px; top: 2361.78px; width: 572px;">
                    <div class="entry-thumb portfolio-thumb">

                        <div class="imgoverlay overlay-light overlay-transparent overlay-simple name-hidden">
                            <img width="800" height="615" class="attachment-thumb-big size-thumb-big wp-post-image entered lazyloaded" alt="" data-lazy-srcset="https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4-800x615.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4-300x231.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4-1024x787.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4-768x590.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4-1536x1181.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4-420x323.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4-1100x846.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4.jpg 1600w" data-lazy-sizes="(max-width: 800px) 100vw, 800px" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4-800x615.jpg" src="https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4-800x615.jpg" data-ll-status="loaded" sizes="(max-width: 800px) 100vw, 800px" srcset="https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4-800x615.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4-300x231.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4-1024x787.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4-768x590.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4-1536x1181.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4-420x323.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4-1100x846.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4.jpg 1600w"><noscript><img width="800" height="615" src="https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4-800x615.jpg" class="attachment-thumb-big size-thumb-big wp-post-image" alt="" srcset="https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4-800x615.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4-300x231.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4-1024x787.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4-768x590.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4-1536x1181.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4-420x323.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4-1100x846.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/09/p-khach-4.jpg 1600w" sizes="(max-width: 800px) 100vw, 800px" /></noscript>
                            <div class="overlaycaption">
                                <h5 class="overlay-name title-minimal"><strong>Vinhome Central Park- Cải tạo</strong></h5>
                            </div>
                            <a href="https://housedesign.vn/du-an/vinhome-central-park-cai-tao/" class="transition"></a>
                        </div>

                    </div>
                </div>
                <!-- END .portfolio-masonry-entry -->


                <div class="portfolio-masonry-entry masonry-item can-ho can-ho-3-phong-ngu " style="position: absolute; left: 582px; top: 2437.06px; width: 572px;">
                    <div class="entry-thumb portfolio-thumb">

                        <div class="imgoverlay overlay-light overlay-transparent overlay-simple name-hidden">
                            <img width="800" height="667" class="attachment-thumb-big size-thumb-big wp-post-image entered lazyloaded" alt="" data-lazy-srcset="https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-800x667.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-300x250.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-1024x854.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-768x640.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-1536x1280.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-420x350.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-1100x917.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-1690x1409.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1.jpg 2000w" data-lazy-sizes="(max-width: 800px) 100vw, 800px" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-800x667.jpg" src="https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-800x667.jpg" data-ll-status="loaded" sizes="(max-width: 800px) 100vw, 800px" srcset="https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-800x667.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-300x250.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-1024x854.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-768x640.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-1536x1280.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-420x350.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-1100x917.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-1690x1409.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1.jpg 2000w"><noscript><img width="800" height="667" src="https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-800x667.jpg" class="attachment-thumb-big size-thumb-big wp-post-image" alt="" srcset="https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-800x667.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-300x250.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-1024x854.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-768x640.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-1536x1280.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-420x350.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-1100x917.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1-1690x1409.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/09/housedesign-the-Marq-w-1.jpg 2000w" sizes="(max-width: 800px) 100vw, 800px" /></noscript>
                            <div class="overlaycaption">
                                <h5 class="overlay-name title-minimal"><strong>The MarQ- Đẳng cấp thời thượng</strong></h5>
                            </div>
                            <a href="https://housedesign.vn/du-an/the-marq-dang-cap-thoi-thuong/" class="transition"></a>
                        </div>

                    </div>
                </div>
                <!-- END .portfolio-masonry-entry -->


                <div class="portfolio-masonry-entry masonry-item can-ho can-ho-3-phong-ngu " style="position: absolute; left: 0px; top: 2811.38px; width: 572px;">
                    <div class="entry-thumb portfolio-thumb">

                        <div class="imgoverlay overlay-light overlay-transparent overlay-simple name-hidden">
                            <img width="800" height="534" class="attachment-thumb-big size-thumb-big wp-post-image entered lazyloaded" alt="" data-lazy-srcset="https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-800x534.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-1024x683.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-1536x1025.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-1100x734.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-1690x1127.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9.jpg 2000w" data-lazy-sizes="(max-width: 800px) 100vw, 800px" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-800x534.jpg" src="https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-800x534.jpg" data-ll-status="loaded" sizes="(max-width: 800px) 100vw, 800px" srcset="https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-800x534.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-1024x683.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-1536x1025.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-1100x734.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-1690x1127.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9.jpg 2000w"><noscript><img width="800" height="534" src="https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-800x534.jpg" class="attachment-thumb-big size-thumb-big wp-post-image" alt="" srcset="https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-800x534.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-1024x683.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-1536x1025.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-1100x734.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-1690x1127.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9.jpg 2000w" sizes="(max-width: 800px) 100vw, 800px" /></noscript>
                            <div class="overlaycaption">
                                <h5 class="overlay-name title-minimal"><strong>Căn hộ The View- Tối giản hiện đại</strong></h5>
                            </div>
                            <a href="https://housedesign.vn/du-an/can-ho-the-view-toi-gian-hien-dai/" class="transition"></a>
                        </div>

                    </div>
                </div>
                <!-- END .portfolio-masonry-entry -->
            </div>

        </div>
    </section>
</div>--%>


<!-- PAGEBODY -->
