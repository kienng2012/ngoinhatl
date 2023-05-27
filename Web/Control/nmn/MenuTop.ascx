<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuTop.ascx.cs" Inherits="Web.Control.nmn.MenuTop" %>

<!-- HEADER -->
<header id="header">
    <div class="header_pc">
        <div class="header_main">
            <div class="container">
                <div class="header_logo">
                    <div class="header_icon">
                        <img alt="header_icon" src="<%= Page.ResolveClientUrl("~/App_Themes/house/img/icon_menu.png") %>">
                    </div>
                    <h1 class="logo"><a href="http://ngoinhatuonglai.vn/" title="ARBARO">
                        <img src="<%= Page.ResolveClientUrl("~/App_Themes/house/img/logo.png") %>" alt="ARBARO"><span style="display: none;">NNTL</span></a></h1>
                </div>
                <div class="header_menu">
                    <ul id="menu-menu-main" class="menu clearfix">
                        <%--<li id="menu-item-1720" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1720 nav-item"><a class="nav-links" href="/gioi-thieu.htm">Giới thiệu</a>
                            <ul class="sub-menu">
                                <li id="menu-item-1729" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1729 nav-item"><a class="nav-links" href="/gioi-thieu.htm#General_ARBARO">Tổng quan</a></li>
                                <li id="menu-item-1730" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1730 nav-item"><a class="nav-links" href="/gioi-thieu.htm#Team_ARBARO">Đội ngũ</a></li>
                            </ul>
                        </li>--%>
                        <li id="menu-item-2611" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2673 nav-item"><a class="nav-links" href="/gioi-thieu.htm">Giới thiệu</a></li>
                        <li id="menu-item-1721" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1721 nav-item"><a class="nav-links" href="/du-an.htm">Dự án</a>
                            <ul class="sub-menu">
                                <li id="menu-item-2322" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-2322 nav-item"><a class="nav-links" href="/du-an/chung-cu.htm">Chung cư</a></li>
                                <li id="menu-item-2315" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-2315 nav-item"><a class="nav-links" href="/du-an/van-phong.htm">Văn phòng</a></li>
                                <li id="menu-item-3747" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-3747 nav-item"><a class="nav-links" href="/du-an/biet-thu.htm">Biệt thự</a></li>
                                <li id="menu-item-3748" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-3747 nav-item"><a class="nav-links" href="/du-an/nha-pho.htm">Nhà phố</a></li>
                                <li id="menu-item-3749" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-3747 nav-item"><a class="nav-links" href="/du-an/nha-hang.htm">Nhà hàng</a></li>
                                <li id="menu-item-3750" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-3747 nav-item"><a class="nav-links" href="/du-an/shop.htm">Shop</a></li>
                            </ul>
                        </li>

                        <li id="menu-item-1722" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1722 nav-item"><a class="nav-links" href="/phong-cach.htm">Phong cách thiết kế</a>
                            <ul class="sub-menu">
                                <li id="menu-item-2307" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-2307 nav-item"><a class="nav-links" href="/phong-cach/hien-dai.htm">Hiện đại</a></li>
                                <li id="menu-item-2304" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-has-children menu-item-2304 nav-item"><a class="nav-links" href="/phong-cach/scandinavian.htm">Scandinavian</a></li>
                                <li id="menu-item-3313" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-3313 nav-item"><a class="nav-links" href="/phong-cach/indochine.htm">Indochine</a></li>
                                <li id="menu-item-2214" class="menu-item menu-item-type-taxonomy menu-item-object-project_cat menu-item-2256 nav-item"><a class="nav-links" href="/phong-cach/wabisabi.htm">Wabisabi</a></li>
                                <li id="menu-item-2215" class="menu-item menu-item-type-taxonomy menu-item-object-project_cat menu-item-2256 nav-item"><a class="nav-links" href="/phong-cach/tan-co-dien.htm">Tân cổ điển</a></li>
                            </ul>
                        </li>
                        <li id="menu-item-2676" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2673 nav-item"><a class="nav-links" href="/trai-nghiem.htm">Trải nghiệm khách hàng</a></li>
                        <li id="menu-item-1700" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1722 nav-item"><a class="nav-links" href="/chinh-sach.htm">Chính sách</a>
                            <ul class="sub-menu">
                                <li id="menu-item-1701" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-2307 nav-item"><a class="nav-links" href="/chinh-sach/quy-trinh-va-chinh-sach.htm">Quy trình và Chính Sách</a></li>
                                <li id="menu-item-1702" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-has-children menu-item-2304 nav-item"><a class="nav-links" href="/chinh-sach/chuong-trinh-uu-dai.htm">Chương trình ưu đãi</a></li>
                            </ul>
                        </li>
                        <li id="menu-item-2674" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2673 nav-item"><a class="nav-links" href="/bao-gia.htm">Báo giá</a></li>
                        <li id="menu-item-2673" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2673 nav-item"><a class="nav-links" href="/lien-he.htm">Liên hệ</a></li>
                        <li id="menu-item-1800" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1722 nav-item"><a class="nav-links" href="/tin-tuc.htm">Tin tức</a>
                            <ul class="sub-menu">
                                <li id="menu-item-1801" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-2307 nav-item"><a class="nav-links" href="/tin-tuc/hoat-dong-arbaro.htm">Hoạt động của Arbaro</a></li>
                                <li id="menu-item-1802" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-3313 nav-item"><a class="nav-links" href="/tin-tuc/tuyen-dung.htm">Tuyển dụng</a></li>
                                <li id="menu-item-1803" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-3313 nav-item"><a class="nav-links" href="/tin-tuc/blog-noi-that.htm">Blog nội thất</a></li>
                                <li id="menu-item-1804" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-3313 nav-item"><a class="nav-links" href="/tin-tuc/tin-tuc-khac.htm">Tin tức khác</a></li>
                            </ul>
                        </li>

                    </ul>
                    <form role="search" method="get" class="woocommerce-search" action="/tim-kiem.htm">
                        <label class="screen-reader-text" for="woocommerce-product-search-field-0">Tìm kiếm:</label>
                        <input type="search" id="woocommerce-product-search-field-01" class="search-field" placeholder="" value="" name="keyword">

                        <button type="submit" value="Tìm kiếm"><i class="iconx icon-search"></i></button>
                        <%--<asp:Button ID="btnSearch"  runat="server" OnClick="btnSearch_Click" /><i class="iconx icon-search">--%>
                    </form>
                </div>
            </div>
        </div>
        <div class="header_search">
            <form role="search" method="get" class="woocommerce-product-search" action="/tim-kiem.htm">
                <label class="screen-reader-text" for="woocommerce-product-search-field-2">Tìm kiếm:</label>
                <input type="search" id="woocommerce-product-search-field-0" class="search-field" placeholder="Tìm sản phẩm…" value="" name="keyword">
                <button type="submit" value="Tìm kiếm"><i class="fa fa-search" aria-hidden="true"></i></button>

            </form>
        </div>
    </div>
    <div id="header_mb" class="header_mb">
        <div class="header_main_mb ">
            <div class="container">
                <div class="row_flex">
                    <div id="touch_menu" class="touch_menu">
                        <span class="line"></span>
                    </div>
                    <div class="logo_mb">
                        <a href="http://ngoinhatuonglai.vn/" title="ARBARO">
                            <img src="<%= Page.ResolveClientUrl("~/App_Themes/house/img/logo.png") %>" alt="ARBARO"></a>
                    </div>
                    <div class="icon_search"><i class="fa fa-search" aria-hidden="true"></i></div>
                </div>
            </div>
        </div>
    </div>
    <div id="menu_bar_mobile">
        <ul id="menu-menu-mobile" class="menu_mobile clearfix">
            <%--<li id="menu-item-2297" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-250 nav-item"><a class="nav-links" href="/gioi-thieu.htm">Giới thiệu</a><i class="fa fa-caret-down"></i>
                <ul class="sub-menu">
                    <li id="menu-item-257" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-257 nav-item"><a class="nav-links" href="/gioi-thieu.htm#General_ARBARO">Tổng quan</a></li>
                    <li id="menu-item-259" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-251 nav-item"><a class="nav-links" href="/gioi-thieu.htm#Team_ARBARO">Đội ngũ</a></li>
                </ul>
            </li>--%>
            <li id="menu-item-2333" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2303 nav-item"><a class="nav-links" href="/gioi-thieu.htm">Giới thiệu</a></li>
            <li id="menu-item-250" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-250 nav-item"><a class="nav-links" href="/du-an.htm">Dự án</a><i class="fa fa-caret-down"></i>
                <ul class="sub-menu">
                    <li id="menu-item-256" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-256 nav-item"><a class="nav-links" href="/du-an/chung-cu.htm">Chung cư</a></li>
                    <li id="menu-item-258" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-258 nav-item"><a class="nav-links" href="/du-an/van-phong.htm">Văn phòng</a></li>
                    <li id="menu-item-252" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-252 nav-item"><a class="nav-links" href="/du-an/biet-thu.htm">Biệt thự</a></li>
                    <li id="menu-item-253" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-253 nav-item"><a class="nav-links" href="/du-an/nha-pho.htm">Nhà phố</a></li>
                    <li id="menu-item-254" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-254 nav-item"><a class="nav-links" href="/du-an/nha-hang.htm">Nhà hàng</a></li>
                    <li id="menu-item-255" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-255 nav-item"><a class="nav-links" href="/du-an/shop.htm">Shop</a></li>
                </ul>
            </li>
            <li id="menu-item-260" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-250 nav-item"><a class="nav-links" href="/phong-cach.htm">Phong cách thiết kế</a><i class="fa fa-caret-down"></i>
                <ul class="sub-menu">
                    <li id="menu-item-261" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-256 nav-item"><a class="nav-links" href="/phong-cach/hien-dai.htm">Hiện đại</a></li>
                    <li id="menu-item-262" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-258 nav-item"><a class="nav-links" href="/phong-cach/scandinavian.htm">Scandinavian</a></li>
                    <li id="menu-item-263" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-252 nav-item"><a class="nav-links" href="/phong-cach/indochine.htm">Indochine</a></li>
                    <li id="menu-item-264" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-253 nav-item"><a class="nav-links" href="/phong-cach/wabisabi.htm">Wabisabi</a></li>
                    <li id="menu-item-265" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-254 nav-item"><a class="nav-links" href="/phong-cach/tan-co-dien.htm">Tân cổ điển</a></li>
                </ul>
            </li>
            <li id="menu-item-2335" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2303 nav-item"><a class="nav-links" href="/trai-nghiem.htm">Trải nghiệm khách hàng</a></li>
            <li id="menu-item-266" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-250 nav-item"><a class="nav-links" href="/chinh-sach.htm">Chính sách</a><i class="fa fa-caret-down"></i>
                <ul class="sub-menu">
                    <li id="menu-item-267" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-256 nav-item"><a class="nav-links" href="/chinh-sach/quy-trinh-va-chinh-sach.htm">Quy trình và Chính Sách</a></li>
                    <li id="menu-item-268" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-258 nav-item"><a class="nav-links" href="/chinh-sach/chuong-trinh-uu-dai.htm">Chương trình ưu đãi</a></li>
                </ul>
            </li>
            <li id="menu-item-2332" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2303 nav-item"><a class="nav-links" href="/bao-gia.htm">Báo giá</a></li>
            <li id="menu-item-2303" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2303 nav-item"><a class="nav-links" href="/lien-he.htm">Liên hệ</a></li>
            <li id="menu-item-221" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-250 nav-item"><a class="nav-links" href="/tin-tuc.htm">Tin tức</a><i class="fa fa-caret-down"></i>
                <ul class="sub-menu">
                    <li id="menu-item-222" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-256 nav-item"><a class="nav-links" href="/tin-tuc/hoat-dong-arbaro.htm">Hoạt động của Arbaro</a></li>
                    <li id="menu-item-223" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-258 nav-item"><a class="nav-links" href="/tin-tuc/tuyen-dung.htm">Tuyển dụng</a></li>
                    <li id="menu-item-224" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-252 nav-item"><a class="nav-links" href="/tin-tuc/blog-noi-that.htm">Blog nội thất</a></li>
                    <li id="menu-item-225" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-253 nav-item"><a class="nav-links" href="/tin-tuc/tin-tuc-khac.htm">Tin tức khác</a></li>
                </ul>
            </li>
        </ul>
    </div>
    <div class="fixed_search">
        <form role="search" method="get" class="" action="/tim-kiem.htm">
            <label class="screen-reader-text" for="woocommerce-product-search-field-0">Tìm kiếm:</label>
            <input type="search" class="search-field" placeholder="Nhập từ khóa tìm kiếm" value="" name="keyword">
            <button type="submit" value="Tìm kiếm"><span class="arrow"></span></button>

        </form>
        <div class="close_bt">X</div>
    </div>
    <div class="line_dark"></div>
</header>
<!-- END header -->
