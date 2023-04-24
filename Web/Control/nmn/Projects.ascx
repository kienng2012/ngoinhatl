<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Projects.ascx.cs" Inherits="Web.Control.nmn.Projects" %>
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
    <div class="filter_product">
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
    </div>
    <div class="woocommerce-notices-wrapper"></div>
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
    </form>
    <div class="products columns-3 list_product">
        <div class="item_pro">
            <div class="">
                <img src="https://nordic.vn/wp-content/uploads/2023/03/19-Hug-Side-Board.png" /></div>
            <div class="info">
                <h3 class="capt">Hug Sidebed</h3>
                <div class="short_desc">
                    <p><em><strong>Gỗ sồi Mỹ</strong></em></p>
                </div>
                <div class="bottom">
                    <div class="price">
                        <span class="woocommerce-Price-amount amount">
                            <bdi>18.700.000&nbsp;<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span>
                    </div>
                    <span class="link">Xem chi tiết</span>
                </div>
            </div>
            <a href="https://nordic.vn/hug-sidebed/" class="link_full"></a>
        </div>
        <div class="item_pro">
            <div class="">
                <img src="https://nordic.vn/wp-content/uploads/2023/03/19-Hug-Side-Board.png" /></div>
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
        <div class="item_pro">
            <div class="">
                <img src="https://nordic.vn/wp-content/uploads/2023/03/16-Hug-Tivi-Cabinet-1.png)" /></div>
            <div class="info">
                <h3 class="capt">Hug Tivi Cabinet</h3>
                <div class="short_desc">
                    <p><em><strong>Gỗ sồi Mỹ</strong></em></p>
                </div>
                <div class="bottom">
                    <div class="price">
                        <span class="woocommerce-Price-amount amount">
                            <bdi>39.000.000&nbsp;<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span>
                    </div>
                    <span class="link">Xem chi tiết</span>
                </div>
            </div>
            <a href="https://nordic.vn/hug-tivi-cabinet/" class="link_full"></a>
        </div>
        <div class="item_pro">
            <div class="">
                <img src="https://nordic.vn/wp-content/uploads/2023/03/15-Liso-bed-xanh-navy-1.png)" /></div>
            <div class="info">
                <h3 class="capt">Liso Signature Bed</h3>
                <div class="short_desc">
                    <p><em><strong>Vải VIP Aldeco &amp; Da thuộc Bò Ý cao cấp</strong></em></p>
                </div>
                <div class="bottom">
                    <div class="price">
                        <span class="woocommerce-Price-amount amount">
                            <bdi>145.000.000&nbsp;<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span>
                    </div>
                    <span class="link">Xem chi tiết</span>
                </div>
            </div>
            <a href="https://nordic.vn/liso-signature-bed/" class="link_full"></a>
        </div>
        <div class="item_pro">
            <div class="">
                <img src="https://nordic.vn/wp-content/uploads/2023/01/42-Sofa-Aesir-2-cho-khong-tay.png)" /></div>
            <div class="info">
                <h3 class="capt">Sofa AESIR 2 chỗ không tay – Signature Sofa</h3>
                <div class="short_desc">
                    <p><span style="font-size: 10pt;"><em><strong>Vải VIP Aldeco &amp; Da thuộc Bò Ý cao cấp</strong></em></span></p>
                </div>
                <div class="bottom">
                    <div class="price">
                        <span class="woocommerce-Price-amount amount">
                            <bdi>85.000.000&nbsp;<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span>
                    </div>
                    <span class="link">Xem chi tiết</span>
                </div>
            </div>
            <a href="https://nordic.vn/sofa-aesir-2-cho-khong-tay-signature-sofa/" class="link_full"></a>
        </div>

    </div>
    <div class="wp-pagenavi" role="navigation">
        <span class="pages">Trang 1 trên 6</span><span aria-current="page" class="current">1</span><a class="page larger" title="Page 2" href="https://nordic.vn/san-pham/page/2/">2</a><a class="page larger" title="Page 3" href="https://nordic.vn/san-pham/page/3/">3</a><a class="page larger" title="Page 4" href="https://nordic.vn/san-pham/page/4/">4</a><a class="page larger" title="Page 5" href="https://nordic.vn/san-pham/page/5/">5</a><span class="extend">...</span><a class="nextpostslink" rel="next" aria-label="Trang sau" href="https://nordic.vn/san-pham/page/2/">»</a><a class="last" aria-label="Last Page" href="https://nordic.vn/san-pham/page/6/">Trang cuối »</a>
    </div>
</div>
<!-- END PROJECT -->

<div class="news_home2">
    <div class="container-fluid">
        <div class="title_home2">
            <h2 class="title">CÁC DỰ ÁN</h2>
            <a href="https://nordic.vn/bao-chi-viet-ve-nordic/" class="link">Xem tất cả</a>
        </div>
        <div class="slider">
            <div class="owl-carousel owl-loaded owl-drag">
                <div class="owl-stage-outer owl-height" style="height: 483px;">
                    <div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 3727px;">
                        <asp:Repeater ID="rptListCate" runat="server">
                            <ItemTemplate>
                                <div class="owl-item active" style="width: 372.667px;">
                                    <div class="item">
                                        <div class="box">
                                            <div class="img">
                                                <a href="/Bai-viet-<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm">
                                                    <img data-lazyloaded="1" src="<%#Eval("CS_ImageURL") %>" width="768" height="432" data-src="<%#Eval("CS_ImageURL") %>"
                                                        class="attachment-large size-large wvs-archive-product-image wp-post-image entered litespeed-loaded" alt="" decoding="async" loading="lazy">
                                                </a>
                                            </div>
                                            <div class="info">
                                                <div class="top">
                                                    <div class="date">04/03/2023</div>
                                                    <div class="meta">
                                                        <div class="share">
                                                            <a href="https://facebook.com/share.php?u=https://nordic.vn/tap-chi-kien-truc-kts-nguyen-phuong-chi-hanh-trinh-dinh-vi-thuong-hieu-noi-that-viet/" target="_blank" rel="nofollow" onclick="javascript:window.open(this.href, &#39;&#39;, &#39;menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600&#39;);return false;" class="facebook " data-toggle="tooltip" title="Share on Facebook">
                                                                <img data-lazyloaded="1" src="App_Themes/house/img/icon_share.png" alt="" icon_share data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_share.png" data-ll-status="loaded" class="entered litespeed-loaded" />
                                                            </a>
                                                        </div>
                                                        <div class="view">
                                                            <img data-lazyloaded="1" src="App_Themes/house/img/icon_view.png" alt="view" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_view.png" data-ll-status="loaded" class="entered litespeed-loaded">221
                                                        </div>
                                                    </div>
                                                </div>
                                                <h3 class="name">
                                                    <a href="https://nordic.vn/tap-chi-kien-truc-kts-nguyen-phuong-chi-hanh-trinh-dinh-vi-thuong-hieu-noi-that-viet/"><%#Eval("CS_Name")%></a>
                                                </h3>
                                                <div class="text"><%#Eval("CS_Description") %></div>
                                                <div class="link">
                                                    <a href="https://nordic.vn/tap-chi-kien-truc-kts-nguyen-phuong-chi-hanh-trinh-dinh-vi-thuong-hieu-noi-that-viet/">Xem chi tiết <i></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <div class="owl-item active" style="width: 372.667px;">
                            <div class="item">
                                <div class="box">
                                    <div class="img">
                                        <a href="https://nordic.vn/tap-chi-kien-truc-kts-nguyen-phuong-chi-hanh-trinh-dinh-vi-thuong-hieu-noi-that-viet/">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/22A11024-2-768x432-5.jpg" width="768" height="432" data-src="https://nordic.vn/wp-content/uploads/2023/03/22A11024-2-768x432-5.jpg" class="attachment-large size-large wvs-archive-product-image wp-post-image entered litespeed-loaded" alt="" decoding="async" loading="lazy" data-srcset="https://nordic.vn/wp-content/uploads/2023/03/22A11024-2-768x432-5.jpg 768w, https://nordic.vn/wp-content/uploads/2023/03/22A11024-2-768x432-5-300x169.jpg 300w, https://nordic.vn/wp-content/uploads/2023/03/22A11024-2-768x432-5-600x338.jpg 600w" data-sizes="(max-width: 768px) 100vw, 768px" data-ll-status="loaded" sizes="(max-width: 768px) 100vw, 768px" srcset="https://nordic.vn/wp-content/uploads/2023/03/22A11024-2-768x432-5.jpg 768w, https://nordic.vn/wp-content/uploads/2023/03/22A11024-2-768x432-5-300x169.jpg 300w, https://nordic.vn/wp-content/uploads/2023/03/22A11024-2-768x432-5-600x338.jpg 600w">
                                        </a>
                                    </div>
                                    <div class="info">
                                        <div class="top">
                                            <div class="date">04/03/2023</div>
                                            <div class="meta">
                                                <div class="share">
                                                    <a href="https://facebook.com/share.php?u=https://nordic.vn/tap-chi-kien-truc-kts-nguyen-phuong-chi-hanh-trinh-dinh-vi-thuong-hieu-noi-that-viet/" target="_blank" rel="nofollow" onclick="javascript:window.open(this.href, &#39;&#39;, &#39;menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600&#39;);return false;" class="facebook " data-toggle="tooltip" title="Share on Facebook">
                                                        <img data-lazyloaded="1" src="App_Themes/house/img/icon_share.png" alt="" icon_share data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_share.png" data-ll-status="loaded" class="entered litespeed-loaded" />
                                                    </a>
                                                </div>
                                                <div class="view">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/icon_view.png" alt="view" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_view.png" data-ll-status="loaded" class="entered litespeed-loaded">221
                                                </div>
                                            </div>
                                        </div>
                                        <h3 class="name">
                                            <a href="https://nordic.vn/tap-chi-kien-truc-kts-nguyen-phuong-chi-hanh-trinh-dinh-vi-thuong-hieu-noi-that-viet/">Tạp chí Kiến trúc – KTS Nguyễn Phương Chi: “Hành trình định vị thương hiệu nội thất Việt”</a>
                                        </h3>
                                        <div class="text">Tại Việt Nam, cho tới nay lĩnh vực thiết kế sản phẩm nội thất còn khá mới mẻ, rất ít các nhà thiết kế thực hiện thiết kế đồ nội thất, chưa nói đến việc...</div>
                                        <div class="link">
                                            <a href="https://nordic.vn/tap-chi-kien-truc-kts-nguyen-phuong-chi-hanh-trinh-dinh-vi-thuong-hieu-noi-that-viet/">Xem chi tiết <i></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="owl-item" style="width: 372.667px;">
                            <div class="item">
                                <div class="box">
                                    <div class="img">
                                        <a href="https://nordic.vn/tinphongcach-sema-nordic-thuong-hieu-noi-that-phong-cach-bac-au-thiet-ke-uy-tin-boi-nguoi-viet/">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/b1-1024x1024.jpg" width="1024" height="1024" data-src="https://nordic.vn/wp-content/uploads/2022/09/b1-1024x1024.jpg" class="attachment-large size-large wvs-archive-product-image wp-post-image entered litespeed-loaded" alt="nha-thiet-ke-ve-ghe-hoang-hau-1" decoding="async" loading="lazy" data-srcset="https://nordic.vn/wp-content/uploads/2022/09/b1-1024x1024.jpg 1024w, https://nordic.vn/wp-content/uploads/2022/09/b1-300x300.jpg 300w, https://nordic.vn/wp-content/uploads/2022/09/b1-150x150.jpg 150w, https://nordic.vn/wp-content/uploads/2022/09/b1-768x768.jpg 768w, https://nordic.vn/wp-content/uploads/2022/09/b1-600x600.jpg 600w, https://nordic.vn/wp-content/uploads/2022/09/b1-400x400.jpg 400w, https://nordic.vn/wp-content/uploads/2022/09/b1-50x50.jpg 50w, https://nordic.vn/wp-content/uploads/2022/09/b1-100x100.jpg 100w, https://nordic.vn/wp-content/uploads/2022/09/b1.jpg 1242w" data-sizes="(max-width: 1024px) 100vw, 1024px" data-ll-status="loaded" sizes="(max-width: 1024px) 100vw, 1024px" srcset="https://nordic.vn/wp-content/uploads/2022/09/b1-1024x1024.jpg 1024w, https://nordic.vn/wp-content/uploads/2022/09/b1-300x300.jpg 300w, https://nordic.vn/wp-content/uploads/2022/09/b1-150x150.jpg 150w, https://nordic.vn/wp-content/uploads/2022/09/b1-768x768.jpg 768w, https://nordic.vn/wp-content/uploads/2022/09/b1-600x600.jpg 600w, https://nordic.vn/wp-content/uploads/2022/09/b1-400x400.jpg 400w, https://nordic.vn/wp-content/uploads/2022/09/b1-50x50.jpg 50w, https://nordic.vn/wp-content/uploads/2022/09/b1-100x100.jpg 100w, https://nordic.vn/wp-content/uploads/2022/09/b1.jpg 1242w">
                                        </a>
                                    </div>
                                    <div class="info">
                                        <div class="top">
                                            <div class="date">21/09/2022</div>
                                            <div class="meta">
                                                <div class="share">
                                                    <a href="https://facebook.com/share.php?u=https://nordic.vn/tinphongcach-sema-nordic-thuong-hieu-noi-that-phong-cach-bac-au-thiet-ke-uy-tin-boi-nguoi-viet/" target="_blank" rel="nofollow" onclick="javascript:window.open(this.href, &#39;&#39;, &#39;menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600&#39;);return false;" class="facebook " data-toggle="tooltip" title="Share on Facebook">
                                                        <img data-lazyloaded="1" src="data:image/gif;base64,R0lGODdhAQABAPAAAMPDwwAAACwAAAAAAQABAAACAkQBADs=" alt="" icon_share="" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_share.png">
                                                    </a>
                                                </div>
                                                <div class="view">
                                                    <img data-lazyloaded="1" src="data:image/gif;base64,R0lGODdhAQABAPAAAMPDwwAAACwAAAAAAQABAAACAkQBADs=" alt="view" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_view.png">577
                                                </div>
                                            </div>
                                        </div>
                                        <h3 class="name">
                                            <a href="https://nordic.vn/tinphongcach-sema-nordic-thuong-hieu-noi-that-phong-cach-bac-au-thiet-ke-uy-tin-boi-nguoi-viet/">Tinphongcach – “SEMA Nordic – Thương hiệu nội thất phong cách Bắc Âu thiết kế uy tín bởi người Việt”</a>
                                        </h3>
                                        <div class="text">Sema&nbsp;NORDIC® ra đời với khao khát phụng sự cho ngôi nhà Việt các sản phẩm nội thất phong cách Bắc Âu chất lượng, bền đẹp, tiện ích và đầy đủ công năng. Trong suốt hơn...</div>
                                        <div class="link">
                                            <a href="https://nordic.vn/tinphongcach-sema-nordic-thuong-hieu-noi-that-phong-cach-bac-au-thiet-ke-uy-tin-boi-nguoi-viet/">Xem chi tiết <i></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="owl-nav">
                    <button type="button" role="presentation" class="owl-prev disabled">
                        <span aria-label="Previous">‹</span>
                    </button>
                    <button type="button" role="presentation" class="owl-next">
                        <span aria-label="Next">›</span>
                    </button>
                </div>
                <div class="owl-dots disabled"></div>
            </div>
        </div>
    </div>
</div>
<!-- PAGEBODY -->
