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
                        <li id="menu-item-1720" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1720 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/gioi-thieu/">Giới thiệu</a>
                            <ul class="sub-menu">
                                <li id="menu-item-1729" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1729 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/#">Tổng quan</a></li>
                                <li id="menu-item-1730" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1730 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/#">Đội ngũ</a></li>
                            </ul>
                        </li>
                        <li id="menu-item-1721" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1721 nav-item"><a class="nav-links" href="/Du-an.htm">Dự án</a>
                            <ul class="sub-menu">
                                <li id="menu-item-2322" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-2322 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/sofa/">Chung cư</a></li>
                                <li id="menu-item-2315" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-2315 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/ban-tra/">Văn phòng</a></li>
                                <li id="menu-item-3747" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-3747 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/ghe-thu-gian-armchair/">Biệt thự</a></li>
                                <li id="menu-item-3748" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-3747 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/ghe-thu-gian-armchair/">Nhà phố</a></li>
                                <li id="menu-item-3749" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-3747 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/ghe-thu-gian-armchair/">Nhà hàng</a></li>
                                <li id="menu-item-3750" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-3747 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/ghe-thu-gian-armchair/">Shop</a></li>
                            </ul>
                        </li>

                        <li id="menu-item-1722" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1722 nav-item"><a class="nav-links" href="/Phong-cach.htm">Phong cách thiết kế</a>
                            <ul class="sub-menu">
                                <li id="menu-item-2307" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-2307 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/bst-2020/">Hiện đại</a></li>
                                <li id="menu-item-2304" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-has-children menu-item-2304 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/the-lover/">Scandinavian</a></li>
                                <li id="menu-item-3313" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-3313 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/the-nest/">Indochine</a></li>
                                <li id="menu-item-2214" class="menu-item menu-item-type-taxonomy menu-item-object-project_cat menu-item-2256 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/project_cat/bespoker/">Wabisabi</a></li>
                                <li id="menu-item-2215" class="menu-item menu-item-type-taxonomy menu-item-object-project_cat menu-item-2256 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/project_cat/bespoker/">Tân cổ điển</a></li>
                            </ul>
                        </li>

                        <li id="menu-item-2673" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2673 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/showroom-1/">Liên hệ</a></li>
                        <li id="menu-item-2248" class="menu-item menu-item-type-taxonomy menu-item-object-project_cat menu-item-2248 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/project_cat/trai-nghiem/">Tuyển dụng</a></li>
                    </ul>
                    <form role="search" method="get" class="woocommerce-search" action="http://ngoinhatuonglai.vn/">
                        <label class="screen-reader-text" for="woocommerce-product-search-field-0">Tìm kiếm:</label>
                        <input type="search" id="woocommerce-product-search-field-0" class="search-field" placeholder="" value="" name="s">
                        <button type="submit" value="Tìm kiếm"><i class="iconx icon-search"></i></button>
                        <input type="hidden" name="post_type" value="product">
                    </form>
                </div>
            </div>
        </div>
        <div class="header_search">
            <form role="search" method="get" class="woocommerce-product-search" action="http://ngoinhatuonglai.vn/">
                <label class="screen-reader-text" for="woocommerce-product-search-field-0">Tìm kiếm:</label>
                <input type="search" id="woocommerce-product-search-field-0" class="search-field" placeholder="Tìm sản phẩm…" value="" name="s">
                <button type="submit" value="Tìm kiếm"><i class="fa fa-search" aria-hidden="true"></i></button>
                <input type="hidden" name="post_type" value="product">
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
                            <img src="App_Themes/house/img/logo.png" alt="ARBARO"></a>
                    </div>
                    <div class="icon_search"><i class="fa fa-search" aria-hidden="true"></i></div>
                </div>
            </div>
        </div>
    </div>
    <div id="menu_bar_mobile">
        <ul id="menu-menu-mobile" class="menu_mobile clearfix">
            <li id="menu-item-2297" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-250 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/gioi-thieu/">Giới thiệu</a><i class="fa fa-caret-down"></i>
                <ul class="sub-menu">
                    <li id="menu-item-257" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-257 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/sofa/">Tổng quan</a></li>
                    <li id="menu-item-259" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-251 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/ban-ghe-an/">Đội ngũ</a></li>
                </ul>
            </li>
            <li id="menu-item-250" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-250 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/san-pham/">Dự án</a><i class="fa fa-caret-down"></i>
                <ul class="sub-menu">
                    <li id="menu-item-256" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-256 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/ke-trang-tri/">Chung cư</a></li>
                    <li id="menu-item-258" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-258 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/tab-giuong/">Văn phòng</a></li>
                    <li id="menu-item-252" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-252 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/ban-tra/">Biệt thự</a></li>
                    <li id="menu-item-253" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-253 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/ghe-nghi/">Nhà phố</a></li>
                    <li id="menu-item-254" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-254 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/giuong/">Nhà hàng</a></li>
                    <li id="menu-item-255" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-255 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/ke-tivi/">Shop</a></li>
                </ul>
            </li>
            <li id="menu-item-260" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-250 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/san-pham/">Phong cách thiết kế</a><i class="fa fa-caret-down"></i>
                <ul class="sub-menu">
                    <li id="menu-item-261" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-256 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/ke-trang-tri/">Hiện đại</a></li>
                    <li id="menu-item-262" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-258 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/tab-giuong/">Scandinavian</a></li>
                    <li id="menu-item-263" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-252 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/ban-tra/">Indochine</a></li>
                    <li id="menu-item-264" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-253 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/ghe-nghi/">Wabisabi</a></li>
                    <li id="menu-item-265" class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-254 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/giuong/">Tân cổ điển</a></li>
                </ul>
            </li>
            <li id="menu-item-2303" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2303 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/lien-he/">Liên hệ</a></li>
            <li id="menu-item-2295" class="menu-item menu-item-type-taxonomy menu-item-object-project_cat menu-item-2295 nav-item"><a class="nav-links" href="http://ngoinhatuonglai.vn/project_cat/trai-nghiem/">Tuyển dụng</a></li>
        </ul>
    </div>
    <div class="fixed_search">
        <form role="search" method="get" class="" action="#">
            <label class="screen-reader-text" for="woocommerce-product-search-field-0">Tìm kiếm:</label>
            <input type="search" id="woocommerce-product-search-field-0" class="search-field" placeholder="Nhập từ khóa tìm kiếm" value="" name="s">
            <button type="submit" value="Tìm kiếm"><span class="arrow"></span></button>
            <input type="hidden" name="post_type" value="product">
        </form>
        <div class="close_bt">X</div>
    </div>
    <div class="line_dark"></div>
</header>
<!-- END header -->
