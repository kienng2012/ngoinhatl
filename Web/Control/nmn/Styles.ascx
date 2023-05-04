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
    <div class="products columns-3 list_product">
        <asp:Repeater ID="rptListCate" runat="server">
            <ItemTemplate>
                <div class="item_pro">
                    <div class="img" style="background-image: url(<%#Eval("CS_ImageURL") %>"></div>
                    <%--<div class="img"><img src="<%#Eval("CS_ImageURL") %>" alt=""/></div>--%>
                    <div class="info-style">
                        <%--<h4 class="capt"><%#Eval("CS_Name")%></h4>--%>
                        <div class="round-capt"><span class="capt"><%#Eval("CS_Name")%></span></div>
                    </div>
                    <a href="/Phong-cach-<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm" class="link_full"></a>
                </div>

            </ItemTemplate>
        </asp:Repeater>

    </div>
    <div class="wp-pagenavi" role="navigation">
        <span class="pages">Trang 1 trên 6</span><span aria-current="page" class="current">1</span><a class="page larger" title="Page 2" href="https://nordic.vn/san-pham/page/2/">2</a><a class="page larger" title="Page 3" href="https://nordic.vn/san-pham/page/3/">3</a><a class="page larger" title="Page 4" href="https://nordic.vn/san-pham/page/4/">4</a><a class="page larger" title="Page 5" href="https://nordic.vn/san-pham/page/5/">5</a><span class="extend">...</span><a class="nextpostslink" rel="next" aria-label="Trang sau" href="https://nordic.vn/san-pham/page/2/">»</a><a class="last" aria-label="Last Page" href="https://nordic.vn/san-pham/page/6/">Trang cuối »</a>
    </div>
</div>

<div class="all_box">
    <div class="head_title center head_title_cat">
        <div class="box_title single_cat_title">
            <h1 class="title">Nordic 24h</h1>
            <div class="divider"></div>
            <div class="category-info">
                <p>Cập nhật nhanh chóng, chính xác &amp; đầy đủ các tin tức về Nội thất, tin tức báo chí &amp; tin tức thị trường.</p>
            </div>
        </div>
    </div>
    <div class="list_news columns-3">
        <div class="item_news">
            <div class="img">
                <a href="https://nordic.vn/3769-2/" style="background-image: url(https://nordic.vn/wp-content/uploads/2023/04/FA1F6099-B6A1-4DF9-A9E5-4CC6AC2EEA05-1024x683.jpeg);"></a>
            </div>
            <div class="info">
                <h3 class="capt"><a href="https://nordic.vn/3769-2/">NỘI THẤT BẮC ÂU TUYỂN DỤNG VỊ TRÍ: CONTENT MARKETING</a></h3>
                <div class="date">12 - 04 - 2023</div>
                <div class="desc">[𝗡𝗢𝗥𝗗𝗜𝗖® ] NỘI THẤT BẮC ÂU TUYỂN DỤNG VỊ TRÍ: CONTENT MARKETING Số lượng: 02 QUYỀN LỢI: • Lương cứng: Thoả thuận • BHXH, BHYT, lương tháng 13, nghỉ phép...</div>
            </div>
        </div>
        <div class="item_news">
            <div class="img">
                <a href="https://nordic.vn/tuyen-dung-vi-tri-thiet-ke-noi-that/" style="background-image: url(https://nordic.vn/wp-content/uploads/2023/04/B1DC00E8-BA36-4CD3-A8F5-AF0BA2142E73-1024x767.jpeg);"></a>
            </div>
            <div class="info">
                <h3 class="capt"><a href="https://nordic.vn/tuyen-dung-vi-tri-thiet-ke-noi-that/">Tuyển dụng vị trí thiết kế nội thất</a></h3>
                <div class="date">12 - 04 - 2023</div>
                <div class="desc">[BẢN TIN TUYỂN DỤNG] 𝗡𝗢𝗥𝗗𝗜𝗖® - NỘI THẤT BẮC ÂU CẦN BỔ SUNG THÀNH VIÊN VỀ 𝐓𝐄𝐀𝐌 𝐑&amp;𝐃 —------------------------ 𝐈. Giới thiệu công ty: Nội thất Bắc Âu 𝗡𝗢𝗥𝗗𝗜𝗖® chuyên...</div>
            </div>
        </div>
        <div class="item_news">
            <div class="img">
                <a href="https://nordic.vn/tap-chi-kien-truc-kts-nguyen-phuong-chi-hanh-trinh-dinh-vi-thuong-hieu-noi-that-viet/" style="background-image: url(https://nordic.vn/wp-content/uploads/2023/03/22A11024-2-768x432-5.jpg);"></a>
            </div>
            <div class="info">
                <h3 class="capt"><a href="https://nordic.vn/tap-chi-kien-truc-kts-nguyen-phuong-chi-hanh-trinh-dinh-vi-thuong-hieu-noi-that-viet/">Tạp chí Kiến trúc –  KTS Nguyễn Phương Chi: “Hành trình định vị thương hiệu nội thất Việt”</a></h3>
                <div class="date">04 - 03 - 2023</div>
                <div class="desc">Tại Việt Nam, cho tới nay lĩnh vực thiết kế sản phẩm nội thất còn khá mới mẻ, rất ít các nhà thiết kế thực hiện thiết kế đồ nội...</div>
            </div>
        </div>
        <div class="item_news">
            <div class="img">
                <a href="https://nordic.vn/tong-hop-khong-gian-am-ap-don-xuan-2023-cua-khach-hang-nordic/" style="background-image: url(https://nordic.vn/wp-content/uploads/2023/01/1.png);"></a>
            </div>
            <div class="info">
                <h3 class="capt"><a href="https://nordic.vn/tong-hop-khong-gian-am-ap-don-xuan-2023-cua-khach-hang-nordic/">Tổng hợp không gian ấm áp đón Xuân 2023 của khách hàng Nordic</a></h3>
                <div class="date">31 - 01 - 2023</div>
                <div class="desc">Không gian ấm áp đón Xuân 2023 của khách hàng Nordic với những món đồ nội thất cao cấp phù hợp, tô điểm sắc màu cho ngày Tết đến, làm...</div>
            </div>
        </div>
        <div class="item_news">
            <div class="img">
                <a href="https://nordic.vn/thuong-hieu-noi-that-cao-cap-viet-nordic-dong-hanh-cung-diep-lam-anh-cai-tao-to-am-moi-cho-me-va-2-con/" style="background-image: url(https://nordic.vn/wp-content/uploads/2023/01/600ef4407605ad5bf414-1024x536.jpg);"></a>
            </div>
            <div class="info">
                <h3 class="capt"><a href="https://nordic.vn/thuong-hieu-noi-that-cao-cap-viet-nordic-dong-hanh-cung-diep-lam-anh-cai-tao-to-am-moi-cho-me-va-2-con/">Thương hiệu nội thất cao cấp Việt Nordic đồng hành cùng Diệp Lâm Anh cải tạo tổ ấm mới cho mẹ và 2 con</a></h3>
                <div class="date">10 - 01 - 2023</div>
                <div class="desc">Mới đây, trong chương trình Là Nhà tập 5, Diệp Lâm Anh đã chi khoảng 2 tỷ đồng để tu sửa và hoàn thiện tổ ấm mới. Căn nhà mới...</div>
            </div>
        </div>
        <div class="item_news">
            <div class="img">
                <a href="https://nordic.vn/5-mau-ghe-lam-thay-doi-nganh-noi-that-the-ky-20/" style="background-image: url(https://nordic.vn/wp-content/uploads/2022/11/5-mau-ghe-lam-thay-doi-nganh-noi-that-the-ky-20-5-1024x1024.png);"></a>
            </div>
            <div class="info">
                <h3 class="capt"><a href="https://nordic.vn/5-mau-ghe-lam-thay-doi-nganh-noi-that-the-ky-20/">5 mẫu ghế làm thay đổi ngành nội thất thế kỷ 20</a></h3>
                <div class="date">15 - 11 - 2022</div>
                <div class="desc">Một chiếc ghế tuyệt tác chứa đựng trong nó nhiều yếu tố từ kỹ thuật, vật liệu, tính thực tế và cả trí tưởng tượng, sáng tạo. Một chiếc ghế...</div>
            </div>
        </div>
    </div>
    <div class="wp-pagenavi" role="navigation">
        <span class="pages">Trang 1 trên 25</span><span aria-current="page" class="current">1</span><a class="page larger" title="Page 2" href="https://nordic.vn/nordic-24h/page/2/">2</a><a class="page larger" title="Page 3" href="https://nordic.vn/nordic-24h/page/3/">3</a><a class="page larger" title="Page 4" href="https://nordic.vn/nordic-24h/page/4/">4</a><a class="page larger" title="Page 5" href="https://nordic.vn/nordic-24h/page/5/">5</a><span class="extend">...</span><a class="larger page" title="Page 10" href="https://nordic.vn/nordic-24h/page/10/">10</a><a class="larger page" title="Page 20" href="https://nordic.vn/nordic-24h/page/20/">20</a><span class="extend">...</span><a class="nextpostslink" rel="next" aria-label="Trang sau" href="https://nordic.vn/nordic-24h/page/2/">»</a><a class="last" aria-label="Last Page" href="https://nordic.vn/nordic-24h/page/25/">Trang cuối »</a>
    </div>
</div>

<%--<div id="page-body" class="">



    <!-- SECTION -->
    <section id="section-noi-that-luxury" class="notoppadding">
        <div class="section-inner clearfix">

            <div class="archive-title align-center">
                <!-- <h1>Phong cách thiết kế</h1> -->
                <!-- <div class="separator"><span></span></div> -->
            </div>
            <div id="phong-cach-thiet-ke-grid" class="phong-cach-blog masonry blog-entries masonry-spaced clearfix" data-maxitemwidth="370" style="position: relative; height: 1077px;">
                <div class="blog-entry blog-masonry-entry masonry-item">

                    <div class="blog-media">
                        <a href="https://housedesign.vn/phong-cach-thiet-ke/noi-that-luxury/" class="transition">
                            <img width="420" height="315" src="https://housedesign.vn/wp-content/uploads/2020/08/phong-cach-thiet-ke-noi-that-luxury-420x315.jpg" class="attachment-thumb-medium size-thumb-medium wp-post-image entered lazyloaded" alt="phong cách thiết kế nội thất luxury" data-lazy-srcset="https://housedesign.vn/wp-content/uploads/2020/08/phong-cach-thiet-ke-noi-that-luxury-420x315.jpg 420w, https://housedesign.vn/wp-content/uploads/2020/08/phong-cach-thiet-ke-noi-that-luxury-300x225.jpg 300w, https://housedesign.vn/wp-content/uploads/2020/08/phong-cach-thiet-ke-noi-that-luxury-768x576.jpg 768w, https://housedesign.vn/wp-content/uploads/2020/08/phong-cach-thiet-ke-noi-that-luxury-1024x768.jpg 1024w, https://housedesign.vn/wp-content/uploads/2020/08/phong-cach-thiet-ke-noi-that-luxury-800x600.jpg 800w, https://housedesign.vn/wp-content/uploads/2020/08/phong-cach-thiet-ke-noi-that-luxury-1100x825.jpg 1100w, https://housedesign.vn/wp-content/uploads/2020/08/phong-cach-thiet-ke-noi-that-luxury.jpg 1150w" data-lazy-sizes="(max-width: 420px) 100vw, 420px" data-lazy-src="https://housedesign.vn/wp-content/uploads/2020/08/phong-cach-thiet-ke-noi-that-luxury-420x315.jpg" srcset="https://housedesign.vn/wp-content/uploads/2020/08/phong-cach-thiet-ke-noi-that-luxury-420x315.jpg 420w, https://housedesign.vn/wp-content/uploads/2020/08/phong-cach-thiet-ke-noi-that-luxury-300x225.jpg 300w, https://housedesign.vn/wp-content/uploads/2020/08/phong-cach-thiet-ke-noi-that-luxury-768x576.jpg 768w, https://housedesign.vn/wp-content/uploads/2020/08/phong-cach-thiet-ke-noi-that-luxury-1024x768.jpg 1024w, https://housedesign.vn/wp-content/uploads/2020/08/phong-cach-thiet-ke-noi-that-luxury-800x600.jpg 800w, https://housedesign.vn/wp-content/uploads/2020/08/phong-cach-thiet-ke-noi-that-luxury-1100x825.jpg 1100w, https://housedesign.vn/wp-content/uploads/2020/08/phong-cach-thiet-ke-noi-that-luxury.jpg 1150w" data-ll-status="loaded" sizes="(max-width: 420px) 100vw, 420px"><noscript><img width="420" height="315" src="https://housedesign.vn/wp-content/uploads/2020/08/phong-cach-thiet-ke-noi-that-luxury-420x315.jpg" class="attachment-thumb-medium size-thumb-medium wp-post-image" alt="phong cách thiết kế nội thất luxury" srcset="https://housedesign.vn/wp-content/uploads/2020/08/phong-cach-thiet-ke-noi-that-luxury-420x315.jpg 420w, https://housedesign.vn/wp-content/uploads/2020/08/phong-cach-thiet-ke-noi-that-luxury-300x225.jpg 300w, https://housedesign.vn/wp-content/uploads/2020/08/phong-cach-thiet-ke-noi-that-luxury-768x576.jpg 768w, https://housedesign.vn/wp-content/uploads/2020/08/phong-cach-thiet-ke-noi-that-luxury-1024x768.jpg 1024w, https://housedesign.vn/wp-content/uploads/2020/08/phong-cach-thiet-ke-noi-that-luxury-800x600.jpg 800w, https://housedesign.vn/wp-content/uploads/2020/08/phong-cach-thiet-ke-noi-that-luxury-1100x825.jpg 1100w, https://housedesign.vn/wp-content/uploads/2020/08/phong-cach-thiet-ke-noi-that-luxury.jpg 1150w" sizes="(max-width: 420px) 100vw, 420px" /></noscript>
                        </a>
                    </div>

                    <div class="blog-content">
                        <div class="blog-headline">
                            <p class="post-tag">
                            </p>
                            <!--<span class="time">Th2 25, 2020</span>-->
                            <h5 class="post-name"><a href="https://housedesign.vn/phong-cach-thiet-ke/noi-that-luxury/" class="transition">Phong cách luxury là gì? Tìm hiểu phong cách thiết kế nội thất Luxury</a></h5>
                            <span class="more-info">House Design - <span>25/02/2020</span></span>
                        </div>
                        <!-- <a href="https://housedesign.vn/phong-cach-thiet-ke/noi-that-luxury/" class="read-more transition">Đọc thêm</a> -->
                    </div>

                </div>


                <div class="blog-entry blog-masonry-entry masonry-item">

                    <div class="blog-media">
                        <a href="https://housedesign.vn/phong-cach-thiet-ke/noi-that-dia-trung-hai/" class="transition">
                            <img width="420" height="257" src="https://housedesign.vn/wp-content/uploads/2020/02/phong-cach-thiet-ke-noi-that-dia-trung-hai-1-420x257.jpg" class="attachment-thumb-medium size-thumb-medium wp-post-image entered lazyloaded" alt="phong cách thiết kế nội thất địa trung hải là gì" data-lazy-srcset="https://housedesign.vn/wp-content/uploads/2020/02/phong-cach-thiet-ke-noi-that-dia-trung-hai-1-420x257.jpg 420w, https://housedesign.vn/wp-content/uploads/2020/02/phong-cach-thiet-ke-noi-that-dia-trung-hai-1-300x183.jpg 300w, https://housedesign.vn/wp-content/uploads/2020/02/phong-cach-thiet-ke-noi-that-dia-trung-hai-1-768x470.jpg 768w, https://housedesign.vn/wp-content/uploads/2020/02/phong-cach-thiet-ke-noi-that-dia-trung-hai-1.jpg 1024w, https://housedesign.vn/wp-content/uploads/2020/02/phong-cach-thiet-ke-noi-that-dia-trung-hai-1-800x489.jpg 800w" data-lazy-sizes="(max-width: 420px) 100vw, 420px" data-lazy-src="https://housedesign.vn/wp-content/uploads/2020/02/phong-cach-thiet-ke-noi-that-dia-trung-hai-1-420x257.jpg" srcset="https://housedesign.vn/wp-content/uploads/2020/02/phong-cach-thiet-ke-noi-that-dia-trung-hai-1-420x257.jpg 420w, https://housedesign.vn/wp-content/uploads/2020/02/phong-cach-thiet-ke-noi-that-dia-trung-hai-1-300x183.jpg 300w, https://housedesign.vn/wp-content/uploads/2020/02/phong-cach-thiet-ke-noi-that-dia-trung-hai-1-768x470.jpg 768w, https://housedesign.vn/wp-content/uploads/2020/02/phong-cach-thiet-ke-noi-that-dia-trung-hai-1.jpg 1024w, https://housedesign.vn/wp-content/uploads/2020/02/phong-cach-thiet-ke-noi-that-dia-trung-hai-1-800x489.jpg 800w" data-ll-status="loaded" sizes="(max-width: 420px) 100vw, 420px"><noscript><img width="420" height="257" src="https://housedesign.vn/wp-content/uploads/2020/02/phong-cach-thiet-ke-noi-that-dia-trung-hai-1-420x257.jpg" class="attachment-thumb-medium size-thumb-medium wp-post-image" alt="phong cách thiết kế nội thất địa trung hải là gì" srcset="https://housedesign.vn/wp-content/uploads/2020/02/phong-cach-thiet-ke-noi-that-dia-trung-hai-1-420x257.jpg 420w, https://housedesign.vn/wp-content/uploads/2020/02/phong-cach-thiet-ke-noi-that-dia-trung-hai-1-300x183.jpg 300w, https://housedesign.vn/wp-content/uploads/2020/02/phong-cach-thiet-ke-noi-that-dia-trung-hai-1-768x470.jpg 768w, https://housedesign.vn/wp-content/uploads/2020/02/phong-cach-thiet-ke-noi-that-dia-trung-hai-1.jpg 1024w, https://housedesign.vn/wp-content/uploads/2020/02/phong-cach-thiet-ke-noi-that-dia-trung-hai-1-800x489.jpg 800w" sizes="(max-width: 420px) 100vw, 420px" /></noscript>
                        </a>
                    </div>

                    <div class="blog-content">
                        <div class="blog-headline">
                            <p class="post-tag">
                            </p>
                            <!--<span class="time">Th2 25, 2020</span>-->
                            <h5 class="post-name"><a href="https://housedesign.vn/phong-cach-thiet-ke/noi-that-dia-trung-hai/" class="transition">Phong cách nội thất Địa Trung Hải: những đặc trưng cuốn hút của phong cách</a></h5>
                            <span class="more-info">House Design - <span>25/02/2020</span></span>
                        </div>
                        <!-- <a href="https://housedesign.vn/phong-cach-thiet-ke/noi-that-dia-trung-hai/" class="read-more transition">Đọc thêm</a> -->
                    </div>

                </div>


                <div class="blog-entry blog-masonry-entry masonry-item">

                    <div class="blog-media">
                        <a href="https://housedesign.vn/phong-cach-thiet-ke/noi-that-mix-match/" class="transition">
                            <img width="420" height="280" src="https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-mix-match-420x280.jpg" class="attachment-thumb-medium size-thumb-medium wp-post-image entered lazyloaded" alt="phong cách thiết kế nội thất mix match - Housedesign" data-lazy-srcset="https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-mix-match-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-mix-match-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-mix-match-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-mix-match-1024x682.jpg 1024w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-mix-match-800x533.jpg 800w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-mix-match-1100x733.jpg 1100w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-mix-match.jpg 1280w" data-lazy-sizes="(max-width: 420px) 100vw, 420px" data-lazy-src="https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-mix-match-420x280.jpg" srcset="https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-mix-match-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-mix-match-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-mix-match-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-mix-match-1024x682.jpg 1024w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-mix-match-800x533.jpg 800w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-mix-match-1100x733.jpg 1100w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-mix-match.jpg 1280w" data-ll-status="loaded" sizes="(max-width: 420px) 100vw, 420px"><noscript><img width="420" height="280" src="https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-mix-match-420x280.jpg" class="attachment-thumb-medium size-thumb-medium wp-post-image" alt="phong cách thiết kế nội thất mix match - Housedesign" srcset="https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-mix-match-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-mix-match-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-mix-match-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-mix-match-1024x682.jpg 1024w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-mix-match-800x533.jpg 800w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-mix-match-1100x733.jpg 1100w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-mix-match.jpg 1280w" sizes="(max-width: 420px) 100vw, 420px" /></noscript>
                        </a>
                    </div>

                    <div class="blog-content">
                        <div class="blog-headline">
                            <p class="post-tag">
                            </p>
                            <!--<span class="time">Th12 23, 2019</span>-->
                            <h5 class="post-name"><a href="https://housedesign.vn/phong-cach-thiet-ke/noi-that-mix-match/" class="transition">Làm mới nhà ở của bạn bằng phong cách mix &amp; match độc đáo</a></h5>
                            <span class="more-info">House Design - <span>23/12/2019</span></span>
                        </div>
                        <!-- <a href="https://housedesign.vn/phong-cach-thiet-ke/noi-that-mix-match/" class="read-more transition">Đọc thêm</a> -->
                    </div>

                </div>


                <div class="blog-entry blog-masonry-entry masonry-item">

                    <div class="blog-media">
                        <a href="https://housedesign.vn/phong-cach-thiet-ke/noi-that-indochine/" class="transition">
                            <img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-indochine-420x420.jpg" class="attachment-thumb-medium size-thumb-medium wp-post-image entered lazyloaded" alt="phong cách thiết kế nội thất indochine - Housedesign" data-lazy-srcset="https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-indochine-420x420.jpg 420w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-indochine-150x150.jpg 150w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-indochine-300x300.jpg 300w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-indochine-768x768.jpg 768w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-indochine-800x800.jpg 800w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-indochine.jpg 960w" data-lazy-sizes="(max-width: 420px) 100vw, 420px" data-lazy-src="https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-indochine-420x420.jpg" srcset="https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-indochine-420x420.jpg 420w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-indochine-150x150.jpg 150w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-indochine-300x300.jpg 300w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-indochine-768x768.jpg 768w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-indochine-800x800.jpg 800w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-indochine.jpg 960w" data-ll-status="loaded" sizes="(max-width: 420px) 100vw, 420px"><noscript><img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-indochine-420x420.jpg" class="attachment-thumb-medium size-thumb-medium wp-post-image" alt="phong cách thiết kế nội thất indochine - Housedesign" srcset="https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-indochine-420x420.jpg 420w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-indochine-150x150.jpg 150w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-indochine-300x300.jpg 300w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-indochine-768x768.jpg 768w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-indochine-800x800.jpg 800w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-thiet-ke-noi-that-indochine.jpg 960w" sizes="(max-width: 420px) 100vw, 420px" /></noscript>
                        </a>
                    </div>

                    <div class="blog-content">
                        <div class="blog-headline">
                            <p class="post-tag">
                            </p>
                            <!--<span class="time">Th12 23, 2019</span>-->
                            <h5 class="post-name"><a href="https://housedesign.vn/phong-cach-thiet-ke/noi-that-indochine/" class="transition">Phong cách nội thất Indochine (Đông Dương): sự giao thoa bản sắc</a></h5>
                            <span class="more-info">House Design - <span>23/12/2019</span></span>
                        </div>
                        <!-- <a href="https://housedesign.vn/phong-cach-thiet-ke/noi-that-indochine/" class="read-more transition">Đọc thêm</a> -->
                    </div>

                </div>


                <div class="blog-entry blog-masonry-entry masonry-item">

                    <div class="blog-media">
                        <a href="https://housedesign.vn/phong-cach-thiet-ke/noi-that-minimalist/" class="transition">
                            <img width="420" height="280" src="https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-420x280.jpg" class="attachment-thumb-medium size-thumb-medium wp-post-image entered lazyloaded" alt="" data-lazy-srcset="https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-1024x683.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-1536x1025.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-800x534.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-1100x734.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-1690x1127.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9.jpg 2000w" data-lazy-sizes="(max-width: 420px) 100vw, 420px" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-420x280.jpg" srcset="https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-1024x683.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-1536x1025.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-800x534.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-1100x734.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-1690x1127.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9.jpg 2000w" data-ll-status="loaded" sizes="(max-width: 420px) 100vw, 420px"><noscript><img width="420" height="280" src="https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-420x280.jpg" class="attachment-thumb-medium size-thumb-medium wp-post-image" alt="" srcset="https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-1024x683.jpg 1024w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-1536x1025.jpg 1536w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-800x534.jpg 800w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-1100x734.jpg 1100w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9-1690x1127.jpg 1690w, https://housedesign.vn/wp-content/uploads/2022/09/khach-bep-9.jpg 2000w" sizes="(max-width: 420px) 100vw, 420px" /></noscript>
                        </a>
                    </div>

                    <div class="blog-content">
                        <div class="blog-headline">
                            <p class="post-tag">
                            </p>
                            <!--<span class="time">Th12 23, 2019</span>-->
                            <h5 class="post-name"><a href="https://housedesign.vn/phong-cach-thiet-ke/noi-that-minimalist/" class="transition">Phong cách nội thất tối giản (Minimalism): Xu hướng hot nhất 2019</a></h5>
                            <span class="more-info">House Design - <span>23/12/2019</span></span>
                        </div>
                        <!-- <a href="https://housedesign.vn/phong-cach-thiet-ke/noi-that-minimalist/" class="read-more transition">Đọc thêm</a> -->
                    </div>

                </div>


                <div class="blog-entry blog-masonry-entry masonry-item">

                    <div class="blog-media">
                        <a href="https://housedesign.vn/phong-cach-thiet-ke/noi-that-urban/" class="transition">
                            <img width="420" height="315" src="https://housedesign.vn/wp-content/uploads/2019/12/noi-that-urban-420x315.jpg" class="attachment-thumb-medium size-thumb-medium wp-post-image entered lazyloaded" alt="nội thất urban là gì" data-lazy-srcset="https://housedesign.vn/wp-content/uploads/2019/12/noi-that-urban-420x315.jpg 420w, https://housedesign.vn/wp-content/uploads/2019/12/noi-that-urban-300x225.jpg 300w, https://housedesign.vn/wp-content/uploads/2019/12/noi-that-urban-768x576.jpg 768w, https://housedesign.vn/wp-content/uploads/2019/12/noi-that-urban-1024x768.jpg 1024w, https://housedesign.vn/wp-content/uploads/2019/12/noi-that-urban-800x600.jpg 800w, https://housedesign.vn/wp-content/uploads/2019/12/noi-that-urban-1100x825.jpg 1100w, https://housedesign.vn/wp-content/uploads/2019/12/noi-that-urban.jpg 1600w" data-lazy-sizes="(max-width: 420px) 100vw, 420px" data-lazy-src="https://housedesign.vn/wp-content/uploads/2019/12/noi-that-urban-420x315.jpg" srcset="https://housedesign.vn/wp-content/uploads/2019/12/noi-that-urban-420x315.jpg 420w, https://housedesign.vn/wp-content/uploads/2019/12/noi-that-urban-300x225.jpg 300w, https://housedesign.vn/wp-content/uploads/2019/12/noi-that-urban-768x576.jpg 768w, https://housedesign.vn/wp-content/uploads/2019/12/noi-that-urban-1024x768.jpg 1024w, https://housedesign.vn/wp-content/uploads/2019/12/noi-that-urban-800x600.jpg 800w, https://housedesign.vn/wp-content/uploads/2019/12/noi-that-urban-1100x825.jpg 1100w, https://housedesign.vn/wp-content/uploads/2019/12/noi-that-urban.jpg 1600w" data-ll-status="loaded" sizes="(max-width: 420px) 100vw, 420px"><noscript><img width="420" height="315" src="https://housedesign.vn/wp-content/uploads/2019/12/noi-that-urban-420x315.jpg" class="attachment-thumb-medium size-thumb-medium wp-post-image" alt="nội thất urban là gì" srcset="https://housedesign.vn/wp-content/uploads/2019/12/noi-that-urban-420x315.jpg 420w, https://housedesign.vn/wp-content/uploads/2019/12/noi-that-urban-300x225.jpg 300w, https://housedesign.vn/wp-content/uploads/2019/12/noi-that-urban-768x576.jpg 768w, https://housedesign.vn/wp-content/uploads/2019/12/noi-that-urban-1024x768.jpg 1024w, https://housedesign.vn/wp-content/uploads/2019/12/noi-that-urban-800x600.jpg 800w, https://housedesign.vn/wp-content/uploads/2019/12/noi-that-urban-1100x825.jpg 1100w, https://housedesign.vn/wp-content/uploads/2019/12/noi-that-urban.jpg 1600w" sizes="(max-width: 420px) 100vw, 420px" /></noscript>
                        </a>
                    </div>

                    <div class="blog-content">
                        <div class="blog-headline">
                            <p class="post-tag">
                            </p>
                            <!--<span class="time">Th12 23, 2019</span>-->
                            <h5 class="post-name"><a href="https://housedesign.vn/phong-cach-thiet-ke/noi-that-urban/" class="transition">Phong cách thiết kế nội thất Urban có gì mà độc đáo đến vậy?</a></h5>
                            <span class="more-info">House Design - <span>23/12/2019</span></span>
                        </div>
                        <!-- <a href="https://housedesign.vn/phong-cach-thiet-ke/noi-that-urban/" class="read-more transition">Đọc thêm</a> -->
                    </div>

                </div>


                <div class="blog-entry blog-masonry-entry masonry-item">

                    <div class="blog-media">
                        <a href="https://housedesign.vn/phong-cach-thiet-ke/noi-that-scandinavian/" class="transition">
                            <img width="420" height="280" src="https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-scandinavian-420x280.jpg" class="attachment-thumb-medium size-thumb-medium wp-post-image entered lazyloaded" alt="" data-lazy-srcset="https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-scandinavian-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-scandinavian-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-scandinavian-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-scandinavian-800x534.jpg 800w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-scandinavian.jpg 1000w" data-lazy-sizes="(max-width: 420px) 100vw, 420px" data-lazy-src="https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-scandinavian-420x280.jpg" srcset="https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-scandinavian-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-scandinavian-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-scandinavian-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-scandinavian-800x534.jpg 800w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-scandinavian.jpg 1000w" data-ll-status="loaded" sizes="(max-width: 420px) 100vw, 420px"><noscript><img width="420" height="280" src="https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-scandinavian-420x280.jpg" class="attachment-thumb-medium size-thumb-medium wp-post-image" alt="" srcset="https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-scandinavian-420x280.jpg 420w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-scandinavian-300x200.jpg 300w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-scandinavian-768x512.jpg 768w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-scandinavian-800x534.jpg 800w, https://housedesign.vn/wp-content/uploads/2019/12/phong-cach-scandinavian.jpg 1000w" sizes="(max-width: 420px) 100vw, 420px" /></noscript>
                        </a>
                    </div>

                    <div class="blog-content">
                        <div class="blog-headline">
                            <p class="post-tag">
                            </p>
                            <!--<span class="time">Th12 23, 2019</span>-->
                            <h5 class="post-name"><a href="https://housedesign.vn/phong-cach-thiet-ke/noi-that-scandinavian/" class="transition">Phong cách scandinavian trong thiết kế nội thất: Đơn giản nhưng đầy tinh tế</a></h5>
                            <span class="more-info">House Design - <span>23/12/2019</span></span>
                        </div>
                        <!-- <a href="https://housedesign.vn/phong-cach-thiet-ke/noi-that-scandinavian/" class="read-more transition">Đọc thêm</a> -->
                    </div>

                </div>



            </div>
            <!-- END #blog-entries -->


            <div class="wrapper">
                <ul id="blog-pagination" class="entries-pagination">
                    <li class="next inactive"><a href="https://housedesign.vn/phong-cach-thiet-ke/" title="Newer Post <i class=&quot;pagination-icon&quot;></i>" class="transistion">Newer Post <i class="pagination-icon"></i></a></li>
                    <li class="prev "><a href="https://housedesign.vn/phong-cach-thiet-ke/page/2/" title="Older Post <i class=&quot;pagination-icon&quot;></i>" class="transistion">Older Post <i class="pagination-icon"></i></a></li>
                </ul>
                <!-- END #entries-pagination -->
            </div>


        </div>
    </section>
    <!-- SECTION -->




</div>--%>
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
