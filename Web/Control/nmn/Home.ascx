<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Home.ascx.cs" Inherits="Web.Control.nmn.Home" %>
<%@ Import Namespace="Core.Utils" %>
<%--<%@ Register Src="~/Control/nmn/SlideShowHome.ascx" TagName="slideShowHome" TagPrefix="uc2" %>--%>
<%@ Register Src="~/Control/nmn/ProjectTop.ascx" TagName="projectTop" TagPrefix="uc1" %>
<%@ Register Src="~/Control/nmn/StyleTop.ascx" TagName="styleTop" TagPrefix="uc2" %>

<!-- PAGEBODY -->
<%--<main id="main">--%>
    <div class="banner_home">
            <div class="slider_home owl-carousel owl-loaded owl-drag">
                <div class="owl-stage-outer">
                    <div class="owl-stage" style="transform: translate3d(-3654px, 0px, 0px); transition: all 0s ease 0s; width: 7308px;">
                        <div class="owl-item" style="width: 1218px;">
                            <div class="item img">
                                <%--<video autoplay="" muted="" loop="">
                                    <source src="https://nordic.vn/wp-content/uploads/2023/01/Video-The-Nest-T11-2022-bo-ke-25s_bo-logo.mp4" type="video/mp4">
                                </video>--%>
                                 <img width="2048" height="1365" src="App_Themes/house/img/slide1.jpg" alt="" data-lazy-src="App_Themes/house/img/slide1.jpg" data-ll-status="loaded" class="entered lazyloaded">
                                <%--<div class="carousel-status">
                                    <div class="container">
                                        <div class="flex"><i class="fa fa-angle-left"></i><div class="carousel-current-slide">01</div><div class="slash">|</div><div class="carousel-total-slides">02</div><i class="fa fa-angle-right"></i></div></div></div>--%>
                            </div>
                        </div><div class="owl-item" style="width: 1218px;">
                            <div class="item img">
                                                                <%--
	                                <video autoplay="" muted="" loop="">
		                                <source src="https://nordic.vn/wp-content/uploads/2022/09/Main-video-WEB-20s.mp4" type="video/mp4">
		                                </video>--%> 
                                <img width="2048" height="1365" src="App_Themes/house/img/slide2.jpg" alt="" data-lazy-src="App_Themes/house/img/slide2.jpg" data-ll-status="loaded" class="entered lazyloaded">
                                  <%--<div class="carousel-status">
                                    <div class="container">
                                      <div class="flex">
                                        <i class="fa fa-angle-left"></i>
                                        <div class="carousel-current-slide">02</div>
                                        <div class="slash">|</div>
                                        <div class="carousel-total-slides">02</div>
                                        <i class="fa fa-angle-right"></i>
                                      </div>
                                    </div>
                                  </div>--%>
                                </div>
                        </div><div class="owl-item" style="width: 1218px;">
                            <div class="item img">
                                
                                 <img width="2048" height="1365" src="App_Themes/house/img/slide3.jpg" alt="" data-lazy-src="App_Themes/house/img/slide3.jpg" data-ll-status="loaded" class="entered lazyloaded">
                                <%--<div class="carousel-status">
                                    <div class="container">
                                        <div class="flex"><i class="fa fa-angle-left"></i><div class="carousel-current-slide">01</div><div class="slash">|</div><div class="carousel-total-slides">02</div><i class="fa fa-angle-right"></i></div></div></div>--%>
                            </div>
                        </div>
                        <%--<div class="owl-item active" style="width: 1218px;">
                            <div class="item img">
                                <video autoplay="" muted="" loop="">
                                    <source src="https://nordic.vn/wp-content/uploads/2022/09/Main-video-WEB-20s.mp4" type="video/mp4">
                                </video><div class="carousel-status"><div class="container"><div class="flex"><i class="fa fa-angle-left"></i><div class="carousel-current-slide">02</div><div class="slash">|</div><div class="carousel-total-slides">02</div><i class="fa fa-angle-right"></i></div></div></div>
                            </div>
                        </div>
                        <div class="owl-item cloned" style="width: 1218px;">
                            <div class="item img">
                                <video autoplay="" muted="" loop="">
                                    <source src="https://nordic.vn/wp-content/uploads/2023/01/Video-The-Nest-T11-2022-bo-ke-25s_bo-logo.mp4" type="video/mp4">
                                </video><div class="carousel-status"><div class="container"><div class="flex"><i class="fa fa-angle-left"></i><div class="carousel-current-slide">01</div><div class="slash">|</div><div class="carousel-total-slides">02</div><i class="fa fa-angle-right"></i></div></div></div>
                            </div>
                        </div>
                        <div class="owl-item cloned" style="width: 1218px;">
                            <div class="item img">
                                <video autoplay="" muted="" loop="">
                                    <source src="https://nordic.vn/wp-content/uploads/2022/09/Main-video-WEB-20s.mp4" type="video/mp4">
                                </video><div class="carousel-status"><div class="container"><div class="flex"><i class="fa fa-angle-left"></i><div class="carousel-current-slide">02</div><div class="slash">|</div><div class="carousel-total-slides">02</div><i class="fa fa-angle-right"></i></div></div></div>
                            </div>
                        </div>--%>
                    </div>
                </div><div class="owl-nav"><button type="button" role="presentation" class="owl-prev"><span aria-label="Previous">‹</span></button><button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button></div><div class="owl-dots"><button role="button" class="owl-dot"><span></span></button><button role="button" class="owl-dot active"><span></span></button></div>
            </div>
        </div>
    <div class="about_home" style="background-color: #f2efe9;">
            <div class="container">
                <div class="flex">
                    <div class="inner_left center">
                        <h2 class="title">
                            <span class="main">Nội thất</span>
                            <span class="tit">Bắc Âu</span>
                            <span class="sub">cao cấp cho người Việt</span>
                        </h2><div class="text">Chúng tôi cam kết, tất cả sản phẩm của NORDIC được độc quyền thiết kế kiểu dáng bởi những Designer tài năng và được đăng ký sở hữu trí tuệ tại cục SHTT Việt Nam. NORDIC mang tới chính sách hậu mãi vượt trội. Tỉ mỉ trong từng chi tiết nhỏ nhất, tất cả sản phẩm của NORDIC được hoàn thiện với chất lượng cao, tương đương với tiêu chuẩn Châu Âu, mang lại cho khách hàng những sản phẩm vượt trội.</div>
                    </div><div class="inner_right">
                        <div class="video">
                            <iframe data-lazyloaded="1" width="560" height="315" src="https://www.youtube.com/embed/l6QwtZsFuew?autoplay=1&amp;mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen name="youtube embed" data-ll-status="loaded" class="entered litespeed-loaded"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <!-- BEST SELLER -->
<%--    <div class="best_seller">
            <h2 class="title"><span>Best Seller.</span></h2><div class="owl-carousel owl-loaded owl-drag">
                <div class="owl-stage-outer">
                    <div class="owl-stage" style="transform: translate3d(-4872px, 0px, 0px); transition: all 0.25s ease 0s; width: 9744px;">
                        <div class="owl-item cloned" style="width: 1218px;">
                            <div class="block wvs-pro-product wvs-archive-product-wrapper">
                                <div class="img"><img data-lazyloaded="1" src="App_Themes/house/img/9-Sofa-I-Flot-nau-vang.png" width="1500" height="1500" data-src="https://nordic.vn/wp-content/uploads/2022/08/9-Sofa-I-Flot-nau-vang.png" class="attachment-post-thumbnail size-post-thumbnail wvs-archive-product-image wp-post-image entered error" alt="sofa-bac-au" decoding="async" loading="lazy" data-o_src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNTAwIiBoZWlnaHQ9IjE1MDAiIHZpZXdCb3g9IjAgMCAxNTAwIDE1MDAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIHN0eWxlPSJmaWxsOiNjZmQ0ZGI7ZmlsbC1vcGFjaXR5OiAwLjE7Ii8+PC9zdmc+" data-ll-status="error"><div class="img-2"></div></div><div class="container">
                                    <div class="inner">
                                        <div class="gallery">
                                            <div class="flex">
                                                <div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/GS_6404.jpg" width="2400" height="1600" data-src="https://nordic.vn/wp-content/uploads/2021/09/GS_6404.jpg" class="attachment-full size-full entered error" alt="" decoding="async" data-ll-status="error">
                                                </div><div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/H2_04155-scaled.jpg" width="2560" height="1707" data-src="https://nordic.vn/wp-content/uploads/2021/09/H2_04155-scaled.jpg" class="attachment-full size-full entered error" alt="" decoding="async" data-ll-status="error">
                                                </div><div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/20221005_151236-scaled.jpg" width="2560" height="1441" data-src="https://nordic.vn/wp-content/uploads/2021/09/20221005_151236-scaled.jpg" class="attachment-full size-full entered error" alt="" decoding="async" data-ll-status="error">
                                                </div>
                                            </div>
                                        </div><div class="box">
                                            <h3 class="name"><a href="https://nordic.vn/sofa-i-flot-ban-tieu-chuan/">Flot I Sofa – Standard</a></h3><div class="meta_product">
                                                <div class="star-rating" role="img" aria-label="Được xếp hạng 5.00 5 sao"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>								<a href="https://nordic.vn/sofa-i-flot-ban-tieu-chuan/#comments" class="cmt"><span>1</span> đánh giá</a><div class="buy">
                                                    <span>0</span> đã mua
                                                </div>
                                            </div>
                                            <a href="https://nordic.vn/sofa-i-flot-ban-tieu-chuan/" data-quantity="1" class="button product_type_variable add_to_cart_button wvs-add-to-cart-button" data-product_id="766" data-product_sku="" aria-label="Lựa chọn cho “Flot I Sofa - Standard”" rel="nofollow">Lựa chọn các tùy chọn</a><div class="wvs-archive-variations-wrapper wvs-pro-loaded" data-threshold_min="0" data-threshold_max="100" data-total_children="4" data-product_id="766" data-product_variations="false">
                                                <ul class="variations">
                                                    <li class="woo-variation-items-wrapper">
                                                        <select style="display:none" id="pa_mau-sac" class=" woo-variation-raw-select" name="attribute_pa_mau-sac" data-attribute_name="attribute_pa_mau-sac" data-show_option_none="yes"><option value="">Chọn một tùy chọn</option><option value="be" class="attached enabled">Be</option><option value="trang" class="attached enabled">Trắng</option><option value="xam" class="attached enabled">Xám</option><option value="xanh" class="attached enabled">Xanh</option></select><ul role="radiogroup" aria-label="Màu sắc" class="archive-variable-items enabled-catalog-display-limit-mode wvs-style-squared variable-items-wrapper color-variable-items-wrapper" data-attribute_name="attribute_pa_mau-sac" data-attribute_values="[&quot;trang&quot;,&quot;xam&quot;,&quot;be&quot;,&quot;xanh&quot;]"><li aria-checked="false" tabindex="0" data-wvstooltip="Be" class="variable-item color-variable-item color-variable-item-be" title="Be" data-title="Be" data-value="be" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#ddccaa;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Trắng" class="variable-item color-variable-item color-variable-item-trang" title="Trắng" data-title="Trắng" data-value="trang" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#ffffff;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Xám" class="variable-item color-variable-item color-variable-item-xam" title="Xám" data-title="Xám" data-value="xam" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#c6c6c6;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Xanh" class="variable-item color-variable-item color-variable-item-xanh" title="Xanh" data-title="Xanh" data-value="xanh" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#00287a;"></span></div></li></ul>
                                                    </li>
                                                </ul><div class="wvs-archive-information"></div>
                                            </div><div class="desc"><p><span style="font-size: 10pt;"><strong>Vải stardard NORDIC – Chi tiết vàng đồng 18K</strong></span></p><p>&nbsp;</p><p>&nbsp;</p></div><div class="link">
                                                <a href="https://nordic.vn/sofa-i-flot-ban-tieu-chuan/">Xem chi tiết <i class="fa fa-chevron-circle-right"></i></a>
                                            </div>
                                            <a href="tel:(+84) 965240366" class="hotline"><i class="fa fa-phone"></i> Đặt hàng ngay</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><div class="owl-item cloned" style="width: 1218px;">
                            <div class="block wvs-pro-product wvs-archive-product-wrapper">
                                <div class="img"><img width="1500" height="1500" src="App_Themes/house/img/10-Sofa-Semina.png" class="attachment-post-thumbnail size-post-thumbnail wvs-archive-product-image wp-post-image" alt="" decoding="async" loading="lazy" data-o_src="https://nordic.vn/wp-content/uploads/2022/08/10-Sofa-Semina.png"><div class="img-2"></div></div><div class="container">
                                    <div class="inner">
                                        <div class="gallery">
                                            <div class="flex">
                                                <div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/semina-2-1.jpg" width="2048" height="2048" data-src="https://nordic.vn/wp-content/uploads/2021/06/semina-2-1.jpg" class="attachment-full size-full entered error" alt="" decoding="async" data-ll-status="error">
                                                </div><div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/SEMINA-FB-VUONG-SIDE-sang-hon-1-scaled.jpg" width="2560" height="2560" data-src="https://nordic.vn/wp-content/uploads/2021/06/SEMINA-FB-VUONG-SIDE-sang-hon-1-scaled.jpg" class="attachment-full size-full entered error" alt="" decoding="async" data-ll-status="error">
                                                </div><div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/SEMINA-FB-VUONG-KHUY-DONG-scaled.jpg" width="2560" height="2560" data-src="https://nordic.vn/wp-content/uploads/2021/06/SEMINA-FB-VUONG-KHUY-DONG-scaled.jpg" class="attachment-full size-full entered error" alt="" decoding="async" data-ll-status="error">
                                                </div><div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/semina-van-anh.jpg" width="1798" height="1194" data-src="https://nordic.vn/wp-content/uploads/2021/06/semina-van-anh.jpg" class="attachment-full size-full entered error" alt="" decoding="async" data-ll-status="error">
                                                </div><div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/z2082144764952_add1205fef0dcdd7b9d5ddfb53735e2f.jpg" width="1500" height="1150" data-src="https://nordic.vn/wp-content/uploads/2021/06/z2082144764952_add1205fef0dcdd7b9d5ddfb53735e2f.jpg" class="attachment-full size-full entered litespeed-loaded" alt="" decoding="async" data-ll-status="loaded">
                                                </div>
                                            </div>
                                        </div><div class="box">
                                            <h3 class="name"><a href="https://nordic.vn/sofa-i-semina-ban-tieu-chuan/">Sofa I Semina – Standard</a></h3><div class="meta_product">
                                                <div class="star-rating" role="img" aria-label="Được xếp hạng 5.00 5 sao"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>								<a href="https://nordic.vn/sofa-i-semina-ban-tieu-chuan/#comments" class="cmt"><span>1</span> đánh giá</a><div class="buy">
                                                    <span>0</span> đã mua
                                                </div>
                                            </div>
                                            <a href="https://nordic.vn/sofa-i-semina-ban-tieu-chuan/" data-quantity="1" class="button product_type_variable add_to_cart_button wvs-add-to-cart-button" data-product_id="472" data-product_sku="" aria-label="Lựa chọn cho “Sofa I Semina - Standard”" rel="nofollow">Lựa chọn các tùy chọn</a><div class="wvs-archive-variations-wrapper wvs-pro-loaded" data-threshold_min="0" data-threshold_max="100" data-total_children="3" data-product_id="472" data-product_variations="false">
                                                <ul class="variations">
                                                    <li class="woo-variation-items-wrapper">
                                                        <select style="display:none" id="pa_mau-sac" class=" woo-variation-raw-select" name="attribute_pa_mau-sac" data-attribute_name="attribute_pa_mau-sac" data-show_option_none="yes"><option value="">Chọn một tùy chọn</option><option value="nau-xam" class="attached enabled">Nâu Xám</option><option value="trang" class="attached enabled">Trắng</option><option value="xam" class="attached enabled">Xám</option></select><ul role="radiogroup" aria-label="Màu sắc" class="archive-variable-items enabled-catalog-display-limit-mode wvs-style-squared variable-items-wrapper color-variable-items-wrapper" data-attribute_name="attribute_pa_mau-sac" data-attribute_values="[&quot;trang&quot;,&quot;xam&quot;,&quot;nau-xam&quot;]"><li aria-checked="false" tabindex="0" data-wvstooltip="Nâu Xám" class="variable-item color-variable-item color-variable-item-nau-xam" title="Nâu Xám" data-title="Nâu Xám" data-value="nau-xam" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#c1c1c1;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Trắng" class="variable-item color-variable-item color-variable-item-trang" title="Trắng" data-title="Trắng" data-value="trang" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#ffffff;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Xám" class="variable-item color-variable-item color-variable-item-xam" title="Xám" data-title="Xám" data-value="xam" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#c6c6c6;"></span></div></li></ul>
                                                    </li>
                                                </ul><div class="wvs-archive-information"></div>
                                            </div><div class="desc"><p><span style="font-size: 10pt;"><strong>Vải stardard NORDIC – Chi tiết vàng đồng 18K</strong></span></p><p>&nbsp;</p></div><div class="link">
                                                <a href="https://nordic.vn/sofa-i-semina-ban-tieu-chuan/">Xem chi tiết <i class="fa fa-chevron-circle-right"></i></a>
                                            </div>
                                            <a href="tel:(+84) 965240366" class="hotline"><i class="fa fa-phone"></i> Đặt hàng ngay</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><div class="owl-item" style="width: 1218px;">
                            <div class="block wvs-pro-product wvs-archive-product-wrapper">
                                <div class="img"><img data-lazyloaded="1" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNTAwIiBoZWlnaHQ9IjE1MDAiIHZpZXdCb3g9IjAgMCAxNTAwIDE1MDAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIHN0eWxlPSJmaWxsOiNjZmQ0ZGI7ZmlsbC1vcGFjaXR5OiAwLjE7Ii8+PC9zdmc+" width="1500" height="1500" data-src="https://nordic.vn/wp-content/uploads/2022/12/5-Armchair-Darling-tim.png" class="attachment-post-thumbnail size-post-thumbnail wvs-archive-product-image wp-post-image entered litespeed-loaded" alt="" decoding="async" loading="lazy" data-o_src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNTAwIiBoZWlnaHQ9IjE1MDAiIHZpZXdCb3g9IjAgMCAxNTAwIDE1MDAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIHN0eWxlPSJmaWxsOiNjZmQ0ZGI7ZmlsbC1vcGFjaXR5OiAwLjE7Ii8+PC9zdmc+" data-ll-status="loaded"><div class="img-2"></div></div><div class="container">
                                    <div class="inner">
                                        <div class="gallery">
                                            <div class="flex">
                                                <div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/Thiet-ke-chua-co-ten-7-1.png" width="750" height="750" data-src="https://nordic.vn/wp-content/uploads/2022/07/Thiet-ke-chua-co-ten-7-1.png" class="attachment-full size-full entered litespeed-loaded" alt="Phụ kiện tạo điểm nhấn đơn giản, tinh tế và đa dạng công năng " decoding="async" data-ll-status="loaded">
                                                </div><div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/z3067410105795_9e761610a3cc041982de72889f1730f4.jpg" width="960" height="1280" data-src="https://nordic.vn/wp-content/uploads/2021/09/z3067410105795_9e761610a3cc041982de72889f1730f4.jpg" class="attachment-full size-full entered litespeed-loaded" alt="" decoding="async" data-ll-status="loaded">
                                                </div><div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/IMG_1959-1.jpg" width="2048" height="1365" data-src="https://nordic.vn/wp-content/uploads/2021/09/IMG_1959-1.jpg" class="attachment-full size-full entered litespeed-loaded" alt="" decoding="async" data-ll-status="loaded">
                                                </div><div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/H2_03540-scaled.jpg" width="1707" height="2560" data-src="https://nordic.vn/wp-content/uploads/2021/09/H2_03540-scaled.jpg" class="attachment-full size-full entered litespeed-loaded" alt="" decoding="async" data-ll-status="loaded">
                                                </div>
                                            </div>
                                        </div><div class="box">
                                            <h3 class="name"><a href="https://nordic.vn/armchair-darling-ban-tieu-chuan/">Armchair Darling – Standard</a></h3><div class="meta_product">
                                                <div class="star-rating" role="img" aria-label="Được xếp hạng 5.00 5 sao"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>								<a href="https://nordic.vn/armchair-darling-ban-tieu-chuan/#comments" class="cmt"><span>3</span> đánh giá</a><div class="buy">
                                                    <span>0</span> đã mua
                                                </div>
                                            </div>
                                            <a href="https://nordic.vn/armchair-darling-ban-tieu-chuan/" data-quantity="1" class="button product_type_variable add_to_cart_button wvs-add-to-cart-button" data-product_id="771" data-product_sku="" aria-label="Lựa chọn cho “Armchair Darling - Standard”" rel="nofollow">Lựa chọn các tùy chọn</a><div class="wvs-archive-variations-wrapper wvs-pro-loaded" data-threshold_min="0" data-threshold_max="100" data-total_children="3" data-product_id="771" data-product_variations="false">
                                                <ul class="variations">
                                                    <li class="woo-variation-items-wrapper">
                                                        <select style="display:none" id="pa_mau-sac" class=" woo-variation-raw-select" name="attribute_pa_mau-sac" data-attribute_name="attribute_pa_mau-sac" data-show_option_none="yes"><option value="">Chọn một tùy chọn</option><option value="be" class="attached enabled">Be</option><option value="tim" class="attached enabled">Tím</option><option value="xanh" class="attached enabled">Xanh</option></select><ul role="radiogroup" aria-label="Màu sắc" class="archive-variable-items enabled-catalog-display-limit-mode wvs-style-squared variable-items-wrapper color-variable-items-wrapper" data-attribute_name="attribute_pa_mau-sac" data-attribute_values="[&quot;xanh&quot;,&quot;be&quot;,&quot;tim&quot;]"><li aria-checked="false" tabindex="0" data-wvstooltip="Be" class="variable-item color-variable-item color-variable-item-be" title="Be" data-title="Be" data-value="be" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#ddccaa;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Tím" class="variable-item color-variable-item color-variable-item-tim" title="Tím" data-title="Tím" data-value="tim" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#c99ff4;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Xanh" class="variable-item color-variable-item color-variable-item-xanh" title="Xanh" data-title="Xanh" data-value="xanh" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#00287a;"></span></div></li></ul>
                                                    </li>
                                                </ul><div class="wvs-archive-information"></div>
                                            </div><div class="desc"><p><span style="font-size: 10pt;"><strong>Vải stardard NORDIC</strong></span></p><p>&nbsp;</p></div><div class="link">
                                                <a href="https://nordic.vn/armchair-darling-ban-tieu-chuan/">Xem chi tiết <i class="fa fa-chevron-circle-right"></i></a>
                                            </div>
                                            <a href="tel:(+84) 965240366" class="hotline"><i class="fa fa-phone"></i> Đặt hàng ngay</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><div class="owl-item" style="width: 1218px;">
                            <div class="block wvs-pro-product wvs-archive-product-wrapper">
                                <div class="img"><img width="1500" height="1500" src="App_Themes/house/img/8-Sofa-Lounge-Flot-nau-vang.png" class="attachment-post-thumbnail size-post-thumbnail wvs-archive-product-image wp-post-image" alt="ghe-bac-au-1" decoding="async" loading="lazy" data-o_src="https://nordic.vn/wp-content/uploads/2022/08/8-Sofa-Lounge-Flot-nau-vang.png"><div class="img-2"></div></div><div class="container">
                                    <div class="inner">
                                        <div class="gallery">
                                            <div class="flex">
                                                <div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/file-anh-vuong-lougne-da-4b-scaled.jpg" width="2560" height="1708" data-src="https://nordic.vn/wp-content/uploads/2021/09/file-anh-vuong-lougne-da-4b-scaled.jpg" class="attachment-full size-full entered litespeed-loaded" alt="" decoding="async" data-ll-status="loaded">
                                                </div><div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/GS_6509-1.jpg" width="2400" height="1600" data-src="https://nordic.vn/wp-content/uploads/2021/09/GS_6509-1.jpg" class="attachment-full size-full entered litespeed-loaded" alt="" decoding="async" data-ll-status="loaded">
                                                </div><div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/6e2391f799fd43a31aec.jpg" width="2048" height="1536" data-src="https://nordic.vn/wp-content/uploads/2021/09/6e2391f799fd43a31aec.jpg" class="attachment-full size-full entered litespeed-loaded" alt="" decoding="async" data-ll-status="loaded">
                                                </div>
                                            </div>
                                        </div><div class="box">
                                            <h3 class="name"><a href="https://nordic.vn/sofa-lounge-flot-ban-tieu-chuan/">Flot Lounge Sofa – Standard</a></h3><div class="meta_product">
                                                <div class="star-rating" role="img" aria-label="Được xếp hạng 5.00 5 sao"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>								<a href="https://nordic.vn/sofa-lounge-flot-ban-tieu-chuan/#comments" class="cmt"><span>1</span> đánh giá</a><div class="buy">
                                                    <span>0</span> đã mua
                                                </div>
                                            </div>
                                            <a href="https://nordic.vn/sofa-lounge-flot-ban-tieu-chuan/" data-quantity="1" class="button product_type_variable add_to_cart_button wvs-add-to-cart-button" data-product_id="768" data-product_sku="" aria-label="Lựa chọn cho “Flot Lounge Sofa - Standard”" rel="nofollow">Lựa chọn các tùy chọn</a><div class="wvs-archive-variations-wrapper wvs-pro-loaded" data-threshold_min="0" data-threshold_max="100" data-total_children="4" data-product_id="768" data-product_variations="false">
                                                <ul class="variations">
                                                    <li class="woo-variation-items-wrapper">
                                                        <select style="display:none" id="pa_mau-sac" class=" woo-variation-raw-select" name="attribute_pa_mau-sac" data-attribute_name="attribute_pa_mau-sac" data-show_option_none="yes"><option value="">Chọn một tùy chọn</option><option value="be" class="attached enabled">Be</option><option value="nau" class="attached enabled">Nâu</option><option value="trang" class="attached enabled">Trắng</option><option value="xanh" class="attached enabled">Xanh</option></select><ul role="radiogroup" aria-label="Màu sắc" class="archive-variable-items enabled-catalog-display-limit-mode wvs-style-squared variable-items-wrapper color-variable-items-wrapper" data-attribute_name="attribute_pa_mau-sac" data-attribute_values="[&quot;trang&quot;,&quot;be&quot;,&quot;nau&quot;,&quot;xanh&quot;]"><li aria-checked="false" tabindex="0" data-wvstooltip="Be" class="variable-item color-variable-item color-variable-item-be" title="Be" data-title="Be" data-value="be" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#ddccaa;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Nâu" class="variable-item color-variable-item color-variable-item-nau" title="Nâu" data-title="Nâu" data-value="nau" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#a58c73;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Trắng" class="variable-item color-variable-item color-variable-item-trang" title="Trắng" data-title="Trắng" data-value="trang" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#ffffff;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Xanh" class="variable-item color-variable-item color-variable-item-xanh" title="Xanh" data-title="Xanh" data-value="xanh" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#00287a;"></span></div></li></ul>
                                                    </li>
                                                </ul><div class="wvs-archive-information"></div>
                                            </div><div class="desc"><p><span style="font-size: 10pt;"><strong>Vải stardard NORDIC – Chi tiết vàng đồng 18K</strong></span></p><p>&nbsp;</p></div><div class="link">
                                                <a href="https://nordic.vn/sofa-lounge-flot-ban-tieu-chuan/">Xem chi tiết <i class="fa fa-chevron-circle-right"></i></a>
                                            </div>
                                            <a href="tel:(+84) 965240366" class="hotline"><i class="fa fa-phone"></i> Đặt hàng ngay</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><div class="owl-item active" style="width: 1218px;">
                            <div class="block wvs-pro-product wvs-archive-product-wrapper">
                                <div class="img"><img data-lazyloaded="1" src="App_Themes/house/img/9-Sofa-I-Flot-nau-vang.png" width="1500" height="1500" data-src="https://nordic.vn/wp-content/uploads/2022/08/9-Sofa-I-Flot-nau-vang.png" class="attachment-post-thumbnail size-post-thumbnail wvs-archive-product-image wp-post-image entered error" alt="sofa-bac-au" decoding="async" loading="lazy" data-o_src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNTAwIiBoZWlnaHQ9IjE1MDAiIHZpZXdCb3g9IjAgMCAxNTAwIDE1MDAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIHN0eWxlPSJmaWxsOiNjZmQ0ZGI7ZmlsbC1vcGFjaXR5OiAwLjE7Ii8+PC9zdmc+" data-ll-status="error"><div class="img-2"></div></div><div class="container">
                                    <div class="inner">
                                        <div class="gallery">
                                            <div class="flex">
                                                <div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/GS_6404.jpg" width="2400" height="1600" data-src="https://nordic.vn/wp-content/uploads/2021/09/GS_6404.jpg" class="attachment-full size-full entered error" alt="" decoding="async" data-ll-status="error">
                                                </div><div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/H2_04155-scaled.jpg" width="2560" height="1707" data-src="https://nordic.vn/wp-content/uploads/2021/09/H2_04155-scaled.jpg" class="attachment-full size-full entered error" alt="" decoding="async" data-ll-status="error">
                                                </div><div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/20221005_151236-scaled.jpg" width="2560" height="1441" data-src="https://nordic.vn/wp-content/uploads/2021/09/20221005_151236-scaled.jpg" class="attachment-full size-full entered error" alt="" decoding="async" data-ll-status="error">
                                                </div>
                                            </div>
                                        </div><div class="box">
                                            <h3 class="name"><a href="https://nordic.vn/sofa-i-flot-ban-tieu-chuan/">Flot I Sofa – Standard</a></h3><div class="meta_product">
                                                <div class="star-rating" role="img" aria-label="Được xếp hạng 5.00 5 sao"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>								<a href="https://nordic.vn/sofa-i-flot-ban-tieu-chuan/#comments" class="cmt"><span>1</span> đánh giá</a><div class="buy">
                                                    <span>0</span> đã mua
                                                </div>
                                            </div>
                                            <a href="https://nordic.vn/sofa-i-flot-ban-tieu-chuan/" data-quantity="1" class="button product_type_variable add_to_cart_button wvs-add-to-cart-button" data-product_id="766" data-product_sku="" aria-label="Lựa chọn cho “Flot I Sofa - Standard”" rel="nofollow">Lựa chọn các tùy chọn</a><div class="wvs-archive-variations-wrapper wvs-pro-loaded" data-threshold_min="0" data-threshold_max="100" data-total_children="4" data-product_id="766" data-product_variations="false">
                                                <ul class="variations">
                                                    <li class="woo-variation-items-wrapper">
                                                        <select style="display:none" id="pa_mau-sac" class=" woo-variation-raw-select" name="attribute_pa_mau-sac" data-attribute_name="attribute_pa_mau-sac" data-show_option_none="yes"><option value="">Chọn một tùy chọn</option><option value="be" class="attached enabled">Be</option><option value="trang" class="attached enabled">Trắng</option><option value="xam" class="attached enabled">Xám</option><option value="xanh" class="attached enabled">Xanh</option></select><ul role="radiogroup" aria-label="Màu sắc" class="archive-variable-items enabled-catalog-display-limit-mode wvs-style-squared variable-items-wrapper color-variable-items-wrapper" data-attribute_name="attribute_pa_mau-sac" data-attribute_values="[&quot;trang&quot;,&quot;xam&quot;,&quot;be&quot;,&quot;xanh&quot;]"><li aria-checked="false" tabindex="0" data-wvstooltip="Be" class="variable-item color-variable-item color-variable-item-be" title="Be" data-title="Be" data-value="be" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#ddccaa;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Trắng" class="variable-item color-variable-item color-variable-item-trang" title="Trắng" data-title="Trắng" data-value="trang" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#ffffff;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Xám" class="variable-item color-variable-item color-variable-item-xam" title="Xám" data-title="Xám" data-value="xam" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#c6c6c6;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Xanh" class="variable-item color-variable-item color-variable-item-xanh" title="Xanh" data-title="Xanh" data-value="xanh" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#00287a;"></span></div></li></ul>
                                                    </li>
                                                </ul><div class="wvs-archive-information"></div>
                                            </div><div class="desc"><p><span style="font-size: 10pt;"><strong>Vải stardard NORDIC – Chi tiết vàng đồng 18K</strong></span></p><p>&nbsp;</p><p>&nbsp;</p></div><div class="link">
                                                <a href="https://nordic.vn/sofa-i-flot-ban-tieu-chuan/">Xem chi tiết <i class="fa fa-chevron-circle-right"></i></a>
                                            </div>
                                            <a href="tel:(+84) 965240366" class="hotline"><i class="fa fa-phone"></i> Đặt hàng ngay</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><div class="owl-item" style="width: 1218px;">
                            <div class="block wvs-pro-product wvs-archive-product-wrapper">
                                <div class="img"><img width="1500" height="1500" src="App_Themes/house/img/10-Sofa-Semina.png" class="attachment-post-thumbnail size-post-thumbnail wvs-archive-product-image wp-post-image" alt="" decoding="async" loading="lazy" data-o_src="https://nordic.vn/wp-content/uploads/2022/08/10-Sofa-Semina.png"><div class="img-2"></div></div><div class="container">
                                    <div class="inner">
                                        <div class="gallery">
                                            <div class="flex">
                                                <div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/semina-2-1.jpg" width="2048" height="2048" data-src="https://nordic.vn/wp-content/uploads/2021/06/semina-2-1.jpg" class="attachment-full size-full entered error" alt="" decoding="async" data-ll-status="error">
                                                </div><div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/SEMINA-FB-VUONG-SIDE-sang-hon-1-scaled.jpg" width="2560" height="2560" data-src="https://nordic.vn/wp-content/uploads/2021/06/SEMINA-FB-VUONG-SIDE-sang-hon-1-scaled.jpg" class="attachment-full size-full entered error" alt="" decoding="async" data-ll-status="error">
                                                </div><div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/SEMINA-FB-VUONG-KHUY-DONG-scaled.jpg" width="2560" height="2560" data-src="https://nordic.vn/wp-content/uploads/2021/06/SEMINA-FB-VUONG-KHUY-DONG-scaled.jpg" class="attachment-full size-full entered error" alt="" decoding="async" data-ll-status="error">
                                                </div><div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/semina-van-anh.jpg" width="1798" height="1194" data-src="https://nordic.vn/wp-content/uploads/2021/06/semina-van-anh.jpg" class="attachment-full size-full entered error" alt="" decoding="async" data-ll-status="error">
                                                </div><div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/z2082144764952_add1205fef0dcdd7b9d5ddfb53735e2f.jpg" width="1500" height="1150" data-src="https://nordic.vn/wp-content/uploads/2021/06/z2082144764952_add1205fef0dcdd7b9d5ddfb53735e2f.jpg" class="attachment-full size-full entered litespeed-loaded" alt="" decoding="async" data-ll-status="loaded">
                                                </div>
                                            </div>
                                        </div><div class="box">
                                            <h3 class="name"><a href="https://nordic.vn/sofa-i-semina-ban-tieu-chuan/">Sofa I Semina – Standard</a></h3><div class="meta_product">
                                                <div class="star-rating" role="img" aria-label="Được xếp hạng 5.00 5 sao"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>								<a href="https://nordic.vn/sofa-i-semina-ban-tieu-chuan/#comments" class="cmt"><span>1</span> đánh giá</a><div class="buy">
                                                    <span>0</span> đã mua
                                                </div>
                                            </div>
                                            <a href="https://nordic.vn/sofa-i-semina-ban-tieu-chuan/" data-quantity="1" class="button product_type_variable add_to_cart_button wvs-add-to-cart-button" data-product_id="472" data-product_sku="" aria-label="Lựa chọn cho “Sofa I Semina - Standard”" rel="nofollow">Lựa chọn các tùy chọn</a><div class="wvs-archive-variations-wrapper wvs-pro-loaded" data-threshold_min="0" data-threshold_max="100" data-total_children="3" data-product_id="472" data-product_variations="false">
                                                <ul class="variations">
                                                    <li class="woo-variation-items-wrapper">
                                                        <select style="display:none" id="pa_mau-sac" class=" woo-variation-raw-select" name="attribute_pa_mau-sac" data-attribute_name="attribute_pa_mau-sac" data-show_option_none="yes"><option value="">Chọn một tùy chọn</option><option value="nau-xam" class="attached enabled">Nâu Xám</option><option value="trang" class="attached enabled">Trắng</option><option value="xam" class="attached enabled">Xám</option></select><ul role="radiogroup" aria-label="Màu sắc" class="archive-variable-items enabled-catalog-display-limit-mode wvs-style-squared variable-items-wrapper color-variable-items-wrapper" data-attribute_name="attribute_pa_mau-sac" data-attribute_values="[&quot;trang&quot;,&quot;xam&quot;,&quot;nau-xam&quot;]"><li aria-checked="false" tabindex="0" data-wvstooltip="Nâu Xám" class="variable-item color-variable-item color-variable-item-nau-xam" title="Nâu Xám" data-title="Nâu Xám" data-value="nau-xam" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#c1c1c1;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Trắng" class="variable-item color-variable-item color-variable-item-trang" title="Trắng" data-title="Trắng" data-value="trang" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#ffffff;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Xám" class="variable-item color-variable-item color-variable-item-xam" title="Xám" data-title="Xám" data-value="xam" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#c6c6c6;"></span></div></li></ul>
                                                    </li>
                                                </ul><div class="wvs-archive-information"></div>
                                            </div><div class="desc"><p><span style="font-size: 10pt;"><strong>Vải stardard NORDIC – Chi tiết vàng đồng 18K</strong></span></p><p>&nbsp;</p></div><div class="link">
                                                <a href="https://nordic.vn/sofa-i-semina-ban-tieu-chuan/">Xem chi tiết <i class="fa fa-chevron-circle-right"></i></a>
                                            </div>
                                            <a href="tel:(+84) 965240366" class="hotline"><i class="fa fa-phone"></i> Đặt hàng ngay</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><div class="owl-item cloned" style="width: 1218px;">
                            <div class="block wvs-pro-product wvs-archive-product-wrapper">
                                <div class="img"><img data-lazyloaded="1" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNTAwIiBoZWlnaHQ9IjE1MDAiIHZpZXdCb3g9IjAgMCAxNTAwIDE1MDAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIHN0eWxlPSJmaWxsOiNjZmQ0ZGI7ZmlsbC1vcGFjaXR5OiAwLjE7Ii8+PC9zdmc+" width="1500" height="1500" data-src="https://nordic.vn/wp-content/uploads/2022/12/5-Armchair-Darling-tim.png" class="attachment-post-thumbnail size-post-thumbnail wvs-archive-product-image wp-post-image entered litespeed-loaded" alt="" decoding="async" loading="lazy" data-o_src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNTAwIiBoZWlnaHQ9IjE1MDAiIHZpZXdCb3g9IjAgMCAxNTAwIDE1MDAiPjxyZWN0IHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIHN0eWxlPSJmaWxsOiNjZmQ0ZGI7ZmlsbC1vcGFjaXR5OiAwLjE7Ii8+PC9zdmc+" data-ll-status="loaded"><div class="img-2"></div></div><div class="container">
                                    <div class="inner">
                                        <div class="gallery">
                                            <div class="flex">
                                                <div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/Thiet-ke-chua-co-ten-7-1.png" width="750" height="750" data-src="https://nordic.vn/wp-content/uploads/2022/07/Thiet-ke-chua-co-ten-7-1.png" class="attachment-full size-full entered litespeed-loaded" alt="Phụ kiện tạo điểm nhấn đơn giản, tinh tế và đa dạng công năng " decoding="async" data-ll-status="loaded">
                                                </div><div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/z3067410105795_9e761610a3cc041982de72889f1730f4.jpg" width="960" height="1280" data-src="https://nordic.vn/wp-content/uploads/2021/09/z3067410105795_9e761610a3cc041982de72889f1730f4.jpg" class="attachment-full size-full entered litespeed-loaded" alt="" decoding="async" data-ll-status="loaded">
                                                </div><div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/IMG_1959-1.jpg" width="2048" height="1365" data-src="https://nordic.vn/wp-content/uploads/2021/09/IMG_1959-1.jpg" class="attachment-full size-full entered litespeed-loaded" alt="" decoding="async" data-ll-status="loaded">
                                                </div><div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/H2_03540-scaled.jpg" width="1707" height="2560" data-src="https://nordic.vn/wp-content/uploads/2021/09/H2_03540-scaled.jpg" class="attachment-full size-full entered litespeed-loaded" alt="" decoding="async" data-ll-status="loaded">
                                                </div>
                                            </div>
                                        </div><div class="box">
                                            <h3 class="name"><a href="https://nordic.vn/armchair-darling-ban-tieu-chuan/">Armchair Darling – Standard</a></h3><div class="meta_product">
                                                <div class="star-rating" role="img" aria-label="Được xếp hạng 5.00 5 sao"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>								<a href="https://nordic.vn/armchair-darling-ban-tieu-chuan/#comments" class="cmt"><span>3</span> đánh giá</a><div class="buy">
                                                    <span>0</span> đã mua
                                                </div>
                                            </div>
                                            <a href="https://nordic.vn/armchair-darling-ban-tieu-chuan/" data-quantity="1" class="button product_type_variable add_to_cart_button wvs-add-to-cart-button" data-product_id="771" data-product_sku="" aria-label="Lựa chọn cho “Armchair Darling - Standard”" rel="nofollow">Lựa chọn các tùy chọn</a><div class="wvs-archive-variations-wrapper wvs-pro-loaded" data-threshold_min="0" data-threshold_max="100" data-total_children="3" data-product_id="771" data-product_variations="false">
                                                <ul class="variations">
                                                    <li class="woo-variation-items-wrapper">
                                                        <select style="display:none" id="pa_mau-sac" class=" woo-variation-raw-select" name="attribute_pa_mau-sac" data-attribute_name="attribute_pa_mau-sac" data-show_option_none="yes"><option value="">Chọn một tùy chọn</option><option value="be" class="attached enabled">Be</option><option value="tim" class="attached enabled">Tím</option><option value="xanh" class="attached enabled">Xanh</option></select><ul role="radiogroup" aria-label="Màu sắc" class="archive-variable-items enabled-catalog-display-limit-mode wvs-style-squared variable-items-wrapper color-variable-items-wrapper" data-attribute_name="attribute_pa_mau-sac" data-attribute_values="[&quot;xanh&quot;,&quot;be&quot;,&quot;tim&quot;]"><li aria-checked="false" tabindex="0" data-wvstooltip="Be" class="variable-item color-variable-item color-variable-item-be" title="Be" data-title="Be" data-value="be" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#ddccaa;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Tím" class="variable-item color-variable-item color-variable-item-tim" title="Tím" data-title="Tím" data-value="tim" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#c99ff4;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Xanh" class="variable-item color-variable-item color-variable-item-xanh" title="Xanh" data-title="Xanh" data-value="xanh" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#00287a;"></span></div></li></ul>
                                                    </li>
                                                </ul><div class="wvs-archive-information"></div>
                                            </div><div class="desc"><p><span style="font-size: 10pt;"><strong>Vải stardard NORDIC</strong></span></p><p>&nbsp;</p></div><div class="link">
                                                <a href="https://nordic.vn/armchair-darling-ban-tieu-chuan/">Xem chi tiết <i class="fa fa-chevron-circle-right"></i></a>
                                            </div>
                                            <a href="tel:(+84) 965240366" class="hotline"><i class="fa fa-phone"></i> Đặt hàng ngay</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><div class="owl-item cloned" style="width: 1218px;">
                            <div class="block wvs-pro-product wvs-archive-product-wrapper">
                                <div class="img"><img width="1500" height="1500" src="App_Themes/house/img/8-Sofa-Lounge-Flot-nau-vang.png" class="attachment-post-thumbnail size-post-thumbnail wvs-archive-product-image wp-post-image" alt="ghe-bac-au-1" decoding="async" loading="lazy" data-o_src="https://nordic.vn/wp-content/uploads/2022/08/8-Sofa-Lounge-Flot-nau-vang.png"><div class="img-2"></div></div><div class="container">
                                    <div class="inner">
                                        <div class="gallery">
                                            <div class="flex">
                                                <div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/file-anh-vuong-lougne-da-4b-scaled.jpg" width="2560" height="1708" data-src="https://nordic.vn/wp-content/uploads/2021/09/file-anh-vuong-lougne-da-4b-scaled.jpg" class="attachment-full size-full entered litespeed-loaded" alt="" decoding="async" data-ll-status="loaded">
                                                </div><div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/GS_6509-1.jpg" width="2400" height="1600" data-src="https://nordic.vn/wp-content/uploads/2021/09/GS_6509-1.jpg" class="attachment-full size-full entered litespeed-loaded" alt="" decoding="async" data-ll-status="loaded">
                                                </div><div class="item">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/6e2391f799fd43a31aec.jpg" width="2048" height="1536" data-src="https://nordic.vn/wp-content/uploads/2021/09/6e2391f799fd43a31aec.jpg" class="attachment-full size-full entered litespeed-loaded" alt="" decoding="async" data-ll-status="loaded">
                                                </div>
                                            </div>
                                        </div><div class="box">
                                            <h3 class="name"><a href="https://nordic.vn/sofa-lounge-flot-ban-tieu-chuan/">Flot Lounge Sofa – Standard</a></h3><div class="meta_product">
                                                <div class="star-rating" role="img" aria-label="Được xếp hạng 5.00 5 sao"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>								<a href="https://nordic.vn/sofa-lounge-flot-ban-tieu-chuan/#comments" class="cmt"><span>1</span> đánh giá</a><div class="buy">
                                                    <span>0</span> đã mua
                                                </div>
                                            </div>
                                            <a href="https://nordic.vn/sofa-lounge-flot-ban-tieu-chuan/" data-quantity="1" class="button product_type_variable add_to_cart_button wvs-add-to-cart-button" data-product_id="768" data-product_sku="" aria-label="Lựa chọn cho “Flot Lounge Sofa - Standard”" rel="nofollow">Lựa chọn các tùy chọn</a><div class="wvs-archive-variations-wrapper wvs-pro-loaded" data-threshold_min="0" data-threshold_max="100" data-total_children="4" data-product_id="768" data-product_variations="false">
                                                <ul class="variations">
                                                    <li class="woo-variation-items-wrapper">
                                                        <select style="display:none" id="pa_mau-sac" class=" woo-variation-raw-select" name="attribute_pa_mau-sac" data-attribute_name="attribute_pa_mau-sac" data-show_option_none="yes"><option value="">Chọn một tùy chọn</option><option value="be" class="attached enabled">Be</option><option value="nau" class="attached enabled">Nâu</option><option value="trang" class="attached enabled">Trắng</option><option value="xanh" class="attached enabled">Xanh</option></select><ul role="radiogroup" aria-label="Màu sắc" class="archive-variable-items enabled-catalog-display-limit-mode wvs-style-squared variable-items-wrapper color-variable-items-wrapper" data-attribute_name="attribute_pa_mau-sac" data-attribute_values="[&quot;trang&quot;,&quot;be&quot;,&quot;nau&quot;,&quot;xanh&quot;]"><li aria-checked="false" tabindex="0" data-wvstooltip="Be" class="variable-item color-variable-item color-variable-item-be" title="Be" data-title="Be" data-value="be" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#ddccaa;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Nâu" class="variable-item color-variable-item color-variable-item-nau" title="Nâu" data-title="Nâu" data-value="nau" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#a58c73;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Trắng" class="variable-item color-variable-item color-variable-item-trang" title="Trắng" data-title="Trắng" data-value="trang" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#ffffff;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Xanh" class="variable-item color-variable-item color-variable-item-xanh" title="Xanh" data-title="Xanh" data-value="xanh" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#00287a;"></span></div></li></ul>
                                                    </li>
                                                </ul><div class="wvs-archive-information"></div>
                                            </div><div class="desc"><p><span style="font-size: 10pt;"><strong>Vải stardard NORDIC – Chi tiết vàng đồng 18K</strong></span></p><p>&nbsp;</p></div><div class="link">
                                                <a href="https://nordic.vn/sofa-lounge-flot-ban-tieu-chuan/">Xem chi tiết <i class="fa fa-chevron-circle-right"></i></a>
                                            </div>
                                            <a href="tel:(+84) 965240366" class="hotline"><i class="fa fa-phone"></i> Đặt hàng ngay</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><div class="owl-nav"><button type="button" role="presentation" class="owl-prev"><span aria-label="Previous">‹</span></button><button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button></div><div class="owl-dots disabled"></div>
            </div>
        </div>--%>
    <!-- END BEST SELLER -->
    <!-- BEGIN SAN PHAM -->
    <%--<div class="product_home">
            <div class="container-fluid">
                <div class="title_home2">
                    <h2 class="title">Sản phẩm</h2>
                    <a href="https://nordic.vn/san-pham/" class="link">Xem tất cả</a>
                </div><div class="list_product2">
                    <div class="item_pro2 wvs-pro-product wvs-archive-product-wrapper">
                        <div class="img">
                            <a href="https://nordic.vn/shell-lounge-chair/">
                                <img width="1500" height="1500" src="App_Themes/house/img/11-Shell-lougne-chair-xanh-navy.png" class="attachment-post-thumbnail size-post-thumbnail wvs-archive-product-image wp-post-image" alt="" decoding="async" loading="lazy" data-o_src="https://nordic.vn/wp-content/uploads/2023/03/11-Shell-lougne-chair-xanh-navy.png"><div class="img-2"></div>
                            </a>
                        </div><div class="info">
                            <h3 class="name"><a href="https://nordic.vn/shell-lounge-chair/">Shell Lounge Chair</a></h3><div class="meta_product">
                                <div class="star-rating" role="img" aria-label="Được xếp hạng 5.00 5 sao"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>							<a href="https://nordic.vn/shell-lounge-chair/#comments" class="cmt"><span>1</span> đánh giá</a><div class="buy">
                                    <span>0</span> đã mua
                                </div>
                            </div><div class="price"><span class="woocommerce-Price-amount amount"><bdi>61.800.000&nbsp;<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span></div>
                            <a href="https://nordic.vn/shell-lounge-chair/" data-quantity="1" class="button product_type_variable add_to_cart_button wvs-add-to-cart-button" data-product_id="3356" data-product_sku="" aria-label="Lựa chọn cho “Shell Lounge Chair”" rel="nofollow">Lựa chọn các tùy chọn</a><div class="wvs-archive-variations-wrapper wvs-pro-loaded" data-threshold_min="0" data-threshold_max="100" data-total_children="3" data-product_id="3356" data-product_variations="false">
                                <ul class="variations">
                                    <li class="woo-variation-items-wrapper">
                                        <select style="display:none" id="pa_mau-sac" class=" woo-variation-raw-select" name="attribute_pa_mau-sac" data-attribute_name="attribute_pa_mau-sac" data-show_option_none="yes"><option value="">Chọn một tùy chọn</option><option value="nau" class="attached enabled">Nâu</option><option value="trang" class="attached enabled">Trắng</option><option value="xanh-navy" class="attached enabled">Xanh Navy</option></select><ul role="radiogroup" aria-label="Màu sắc" class="archive-variable-items enabled-catalog-display-limit-mode wvs-style-squared variable-items-wrapper color-variable-items-wrapper" data-attribute_name="attribute_pa_mau-sac" data-attribute_values="[&quot;nau&quot;,&quot;trang&quot;,&quot;xanh-navy&quot;]"><li aria-checked="false" tabindex="0" data-wvstooltip="Nâu" class="variable-item color-variable-item color-variable-item-nau" title="Nâu" data-title="Nâu" data-value="nau" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#a58c73;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Trắng" class="variable-item color-variable-item color-variable-item-trang" title="Trắng" data-title="Trắng" data-value="trang" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#ffffff;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Xanh Navy" class="variable-item color-variable-item color-variable-item-xanh-navy" title="Xanh Navy" data-title="Xanh Navy" data-value="xanh-navy" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#0a3575;"></span></div></li></ul>
                                    </li>
                                </ul><div class="wvs-archive-information"></div>
                            </div><div class="short_desc"><p><em><strong>Da microfiber và vải Bồ Đào Nha</strong></em></p></div>
                        </div>
                    </div><div class="item_pro2 wvs-pro-product wvs-archive-product-wrapper">
                        <div class="img">
                            <a href="https://nordic.vn/ban-tra-pige/">
                                <img width="1500" height="1500" src="App_Themes/house/img/4-Ban-tra-Pige-trang.png" class="attachment-post-thumbnail size-post-thumbnail wvs-archive-product-image wp-post-image" alt="ban-tra-bac-au-" decoding="async" loading="lazy" data-o_src="https://nordic.vn/wp-content/uploads/2022/08/4-Ban-tra-Pige-trang.png"><div class="img-2"></div>
                            </a>
                        </div><div class="info">
                            <h3 class="name"><a href="https://nordic.vn/ban-tra-pige/">Bàn trà Pige (Bản to)</a></h3><div class="meta_product">
                                <div class="star-rating" role="img" aria-label="Được xếp hạng 5.00 5 sao"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>							<a href="https://nordic.vn/ban-tra-pige/#comments" class="cmt"><span>1</span> đánh giá</a><div class="buy">
                                    <span>0</span> đã mua
                                </div>
                            </div><div class="price"><span class="woocommerce-Price-amount amount"><bdi>21.400.000&nbsp;<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span></div>
                            <a href="https://nordic.vn/ban-tra-pige/" data-quantity="1" class="button product_type_variable add_to_cart_button wvs-add-to-cart-button" data-product_id="772" data-product_sku="" aria-label="Lựa chọn cho “Bàn trà Pige (Bản to)”" rel="nofollow">Lựa chọn các tùy chọn</a><div class="wvs-archive-variations-wrapper wvs-pro-loaded" data-threshold_min="0" data-threshold_max="100" data-total_children="2" data-product_id="772" data-product_variations="false">
                                <ul class="variations">
                                    <li class="woo-variation-items-wrapper">
                                        <select style="display:none" id="pa_mau-sac" class=" woo-variation-raw-select" name="attribute_pa_mau-sac" data-attribute_name="attribute_pa_mau-sac" data-show_option_none="yes"><option value="">Chọn một tùy chọn</option><option value="den" class="attached enabled">Đen</option><option value="trang" class="attached enabled">Trắng</option></select><ul role="radiogroup" aria-label="Màu sắc" class="archive-variable-items enabled-catalog-display-limit-mode wvs-style-squared variable-items-wrapper color-variable-items-wrapper" data-attribute_name="attribute_pa_mau-sac" data-attribute_values="[&quot;den&quot;,&quot;trang&quot;]"><li aria-checked="false" tabindex="0" data-wvstooltip="Đen" class="variable-item color-variable-item color-variable-item-den" title="Đen" data-title="Đen" data-value="den" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#000000;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Trắng" class="variable-item color-variable-item color-variable-item-trang" title="Trắng" data-title="Trắng" data-value="trang" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#ffffff;"></span></div></li></ul>
                                    </li>
                                </ul><div class="wvs-archive-information"></div>
                            </div><div class="short_desc"><p><span style="font-size: 10pt;"><strong>Chân kim loại sơn tĩnh điện, mặt bàn đá&nbsp;</strong></span></p><p>&nbsp;</p></div>
                        </div>
                    </div><div class="item_pro2 wvs-pro-product wvs-archive-product-wrapper">
                        <div class="img">
                            <a href="https://nordic.vn/sofa-lounge-flot-ban-tieu-chuan/">
                                <img width="1500" height="1500" src="App_Themes/house/img/8-Sofa-Lounge-Flot-nau-vang.png" class="attachment-post-thumbnail size-post-thumbnail wvs-archive-product-image wp-post-image" alt="ghe-bac-au-1" decoding="async" loading="lazy" data-o_src="https://nordic.vn/wp-content/uploads/2022/08/8-Sofa-Lounge-Flot-nau-vang.png"><div class="img-2"></div>
                            </a>
                        </div><div class="info">
                            <h3 class="name"><a href="https://nordic.vn/sofa-lounge-flot-ban-tieu-chuan/">Flot Lounge Sofa – Standard</a></h3><div class="meta_product">
                                <div class="star-rating" role="img" aria-label="Được xếp hạng 5.00 5 sao"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>							<a href="https://nordic.vn/sofa-lounge-flot-ban-tieu-chuan/#comments" class="cmt"><span>1</span> đánh giá</a><div class="buy">
                                    <span>0</span> đã mua
                                </div>
                            </div><div class="price"><span class="woocommerce-Price-amount amount"><bdi>52.200.000&nbsp;<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span></div>
                            <a href="https://nordic.vn/sofa-lounge-flot-ban-tieu-chuan/" data-quantity="1" class="button product_type_variable add_to_cart_button wvs-add-to-cart-button" data-product_id="768" data-product_sku="" aria-label="Lựa chọn cho “Flot Lounge Sofa - Standard”" rel="nofollow">Lựa chọn các tùy chọn</a><div class="wvs-archive-variations-wrapper wvs-pro-loaded" data-threshold_min="0" data-threshold_max="100" data-total_children="4" data-product_id="768" data-product_variations="false">
                                <ul class="variations">
                                    <li class="woo-variation-items-wrapper">
                                        <select style="display:none" id="pa_mau-sac" class=" woo-variation-raw-select" name="attribute_pa_mau-sac" data-attribute_name="attribute_pa_mau-sac" data-show_option_none="yes"><option value="">Chọn một tùy chọn</option><option value="be" class="attached enabled">Be</option><option value="nau" class="attached enabled">Nâu</option><option value="trang" class="attached enabled">Trắng</option><option value="xanh" class="attached enabled">Xanh</option></select><ul role="radiogroup" aria-label="Màu sắc" class="archive-variable-items enabled-catalog-display-limit-mode wvs-style-squared variable-items-wrapper color-variable-items-wrapper" data-attribute_name="attribute_pa_mau-sac" data-attribute_values="[&quot;trang&quot;,&quot;be&quot;,&quot;nau&quot;,&quot;xanh&quot;]"><li aria-checked="false" tabindex="0" data-wvstooltip="Be" class="variable-item color-variable-item color-variable-item-be" title="Be" data-title="Be" data-value="be" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#ddccaa;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Nâu" class="variable-item color-variable-item color-variable-item-nau" title="Nâu" data-title="Nâu" data-value="nau" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#a58c73;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Trắng" class="variable-item color-variable-item color-variable-item-trang" title="Trắng" data-title="Trắng" data-value="trang" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#ffffff;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Xanh" class="variable-item color-variable-item color-variable-item-xanh" title="Xanh" data-title="Xanh" data-value="xanh" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#00287a;"></span></div></li></ul>
                                    </li>
                                </ul><div class="wvs-archive-information"></div>
                            </div><div class="short_desc"><p><span style="font-size: 10pt;"><strong>Vải stardard NORDIC – Chi tiết vàng đồng 18K</strong></span></p><p>&nbsp;</p></div>
                        </div>
                    </div><div class="item_pro2 wvs-pro-product wvs-archive-product-wrapper">
                        <div class="img">
                            <a href="https://nordic.vn/sofa-i-semina-ban-tieu-chuan/">
                                <img width="1500" height="1500" src="App_Themes/house/img/10-Sofa-Semina.png" class="attachment-post-thumbnail size-post-thumbnail wvs-archive-product-image wp-post-image" alt="" decoding="async" loading="lazy" data-o_src="https://nordic.vn/wp-content/uploads/2022/08/10-Sofa-Semina.png"><div class="img-2"></div>
                            </a>
                        </div><div class="info">
                            <h3 class="name"><a href="https://nordic.vn/sofa-i-semina-ban-tieu-chuan/">Sofa I Semina – Standard</a></h3><div class="meta_product">
                                <div class="star-rating" role="img" aria-label="Được xếp hạng 5.00 5 sao"><span style="width:100%">Được xếp hạng <strong class="rating">5.00</strong> 5 sao</span></div>							<a href="https://nordic.vn/sofa-i-semina-ban-tieu-chuan/#comments" class="cmt"><span>1</span> đánh giá</a><div class="buy">
                                    <span>0</span> đã mua
                                </div>
                            </div><div class="price"><span class="woocommerce-Price-amount amount"><bdi>41.200.000&nbsp;<span class="woocommerce-Price-currencySymbol">₫</span></bdi></span></div>
                            <a href="https://nordic.vn/sofa-i-semina-ban-tieu-chuan/" data-quantity="1" class="button product_type_variable add_to_cart_button wvs-add-to-cart-button" data-product_id="472" data-product_sku="" aria-label="Lựa chọn cho “Sofa I Semina - Standard”" rel="nofollow">Lựa chọn các tùy chọn</a><div class="wvs-archive-variations-wrapper wvs-pro-loaded" data-threshold_min="0" data-threshold_max="100" data-total_children="3" data-product_id="472" data-product_variations="false">
                                <ul class="variations">
                                    <li class="woo-variation-items-wrapper">
                                        <select style="display:none" id="pa_mau-sac" class=" woo-variation-raw-select" name="attribute_pa_mau-sac" data-attribute_name="attribute_pa_mau-sac" data-show_option_none="yes"><option value="">Chọn một tùy chọn</option><option value="nau-xam" class="attached enabled">Nâu Xám</option><option value="trang" class="attached enabled">Trắng</option><option value="xam" class="attached enabled">Xám</option></select><ul role="radiogroup" aria-label="Màu sắc" class="archive-variable-items enabled-catalog-display-limit-mode wvs-style-squared variable-items-wrapper color-variable-items-wrapper" data-attribute_name="attribute_pa_mau-sac" data-attribute_values="[&quot;trang&quot;,&quot;xam&quot;,&quot;nau-xam&quot;]"><li aria-checked="false" tabindex="0" data-wvstooltip="Nâu Xám" class="variable-item color-variable-item color-variable-item-nau-xam" title="Nâu Xám" data-title="Nâu Xám" data-value="nau-xam" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#c1c1c1;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Trắng" class="variable-item color-variable-item color-variable-item-trang" title="Trắng" data-title="Trắng" data-value="trang" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#ffffff;"></span></div></li><li aria-checked="false" tabindex="0" data-wvstooltip="Xám" class="variable-item color-variable-item color-variable-item-xam" title="Xám" data-title="Xám" data-value="xam" role="radio" data-wvstooltip-out-of-stock=""><div class="variable-item-contents"><span class="variable-item-span variable-item-span-color" style="background-color:#c6c6c6;"></span></div></li></ul>
                                    </li>
                                </ul><div class="wvs-archive-information"></div>
                            </div><div class="short_desc"><p><span style="font-size: 10pt;"><strong>Vải stardard NORDIC – Chi tiết vàng đồng 18K</strong></span></p><p>&nbsp;</p></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
    <!-- END SAN PHAM -->
    <!--<div class="banner_center"><div class="background bg_section" style="background-image: url(https://nordic.vn/wp-content/uploads/2023/04/Untitled-10-1.jpg);"></div></div>-->
    <div class="criteria_home">
            <div class="background" style="background-image: url(https://nordic.vn/wp-content/uploads/2022/08/Untitled-11.png);"></div><div class="container-fluid">
                <h2 class="title"><span></span> LÝ DO LỰA CHỌN</h2><div class="list">
                    <div class="item">
                        <div class="inner">
                            <div class="number">
                                <span class="num">1</span>
                                <span class="text">Thói <br>quen</span>
                                <span class="bgitem"><span class="num2">1</span></span>
                            </div><div class="box"><div class="text">Các thiết kế được Team R&amp;D nghiên cứu một cách tỉ mẩn, kỹ lưỡng dựa trên thói quen sống của người Việt nhằm mang đến trải nghiệm phù hợp nhất.</div></div>
                        </div>
                    </div><div class="item">
                        <div class="inner">
                            <div class="number">
                                <span class="num">2</span>
                                <span class="text">Lối <br> sống</span>
                                <span class="bgitem"><span class="num2">2</span></span>
                            </div><div class="box"><div class="text">Trước khi một sản phẩm được hoàn thiện, Team R&amp;D đã có khoảng thời gian tìm hiểu về lối sống và văn hóa bao đời của người Việt. Từ những chi tiết nhỏ như khoang để đồ để không gian gọn gàng hơn, nâng cao chất lượng sống lên tầm cao mới.</div></div>
                        </div>
                    </div><div class="item">
                        <div class="inner">
                            <div class="number">
                                <span class="num">3</span>
                                <span class="text">Sở <br> thích</span>
                                <span class="bgitem"><span class="num2">3</span></span>
                            </div><div class="box"><div class="text">Mỗi sản phẩm đều được cá nhân hóa theo sở thích của từng cá nhân, về chất liệu, màu sắc,... phù hợp với mọi nhu cầu của khách hàng và thị hiếu của người Việt.</div></div>
                        </div>
                    </div><div class="item">
                        <div class="inner">
                            <div class="number">
                                <span class="num">4</span>
                                <span class="text">Khí <br> hậu</span>
                                <span class="bgitem"><span class="num2">4</span></span>
                            </div><div class="box"><div class="text">Các chất liệu được nghiên cứu và chọn lọc kỹ lưỡng để sản phẩm thích nghi với mọi vùng khí hậu. Chất liệu vải &amp; da được chọn lựa dễ lau chùi, khó bám bẩn, đặc biệt thích nghi tốt với khí hậu nhiệt đới gió mùa ẩm ở Việt Nam.</div></div>
                        </div>
                    </div><div class="item">
                        <div class="inner">
                            <div class="number">
                                <span class="num">5</span>
                                <span class="text">Nhân <br> trắc</span>
                                <span class="bgitem"><span class="num2">5</span></span>
                            </div><div class="box"><div class="text">Mọi sản phẩm nội thất của NORDIC được nghiên cứu dựa trên form người của người Việt. Kích thước phù hợp mang đến trải nghiệm thoải mái, an toàn và tiện dụng cho khách hàng.</div></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<!-- DU AN TOP -->
   <%-- <div class="news_home2">
            <div class="container-fluid">
                <div class="title_home2">
                    <h2 class="title">CÁC DỰ ÁN</h2>
                    <a href="https://nordic.vn/bao-chi-viet-ve-nordic/" class="link">Xem tất cả</a>
                </div><div class="slider">
                    <div class="owl-carousel owl-loaded owl-drag">
                        <div class="owl-stage-outer owl-height" style="height: 483px;">
                            <div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 3727px;">
                                <div class="owl-item active" style="width: 372.667px;">
                                    <div class="item">
                                        <div class="box">
                                            <div class="img">
                                                <a href="https://nordic.vn/tap-chi-kien-truc-kts-nguyen-phuong-chi-hanh-trinh-dinh-vi-thuong-hieu-noi-that-viet/"><img data-lazyloaded="1" src="App_Themes/house/img/22A11024-2-768x432-5.jpg" width="768" height="432" data-src="https://nordic.vn/wp-content/uploads/2023/03/22A11024-2-768x432-5.jpg" class="attachment-large size-large wvs-archive-product-image wp-post-image entered litespeed-loaded" alt="" decoding="async" loading="lazy" data-srcset="https://nordic.vn/wp-content/uploads/2023/03/22A11024-2-768x432-5.jpg 768w, https://nordic.vn/wp-content/uploads/2023/03/22A11024-2-768x432-5-300x169.jpg 300w, https://nordic.vn/wp-content/uploads/2023/03/22A11024-2-768x432-5-600x338.jpg 600w" data-sizes="(max-width: 768px) 100vw, 768px" data-ll-status="loaded" sizes="(max-width: 768px) 100vw, 768px" srcset="https://nordic.vn/wp-content/uploads/2023/03/22A11024-2-768x432-5.jpg 768w, https://nordic.vn/wp-content/uploads/2023/03/22A11024-2-768x432-5-300x169.jpg 300w, https://nordic.vn/wp-content/uploads/2023/03/22A11024-2-768x432-5-600x338.jpg 600w"></a>
                                            </div>
                                            <div class="info">
   <div class="top">
      <div class="date">04/03/2023</div>
      <div class="meta">
         <div class="share">
  <a href="https://facebook.com/share.php?u=https://nordic.vn/tap-chi-kien-truc-kts-nguyen-phuong-chi-hanh-trinh-dinh-vi-thuong-hieu-noi-that-viet/" target="_blank" rel="nofollow" onclick="javascript:window.open(this.href, &#39;&#39;, &#39;menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600&#39;);return false;" class="facebook " data-toggle="tooltip" title="Share on Facebook">
    <img data-lazyloaded="1" src="App_Themes/house/img/icon_share.png" alt"icon_share"="" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_share.png" data-ll-status="loaded" class="entered litespeed-loaded">
  </a>
</div>
         <div class="view"><img data-lazyloaded="1" src="App_Themes/house/img/icon_view.png" alt="view" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_view.png" data-ll-status="loaded" class="entered litespeed-loaded">221</div>
      </div>
   </div>
   <h3 class="name"><a href="https://nordic.vn/tap-chi-kien-truc-kts-nguyen-phuong-chi-hanh-trinh-dinh-vi-thuong-hieu-noi-that-viet/">Tạp chí Kiến trúc –  KTS Nguyễn Phương Chi: “Hành trình định vị thương hiệu nội thất Việt”</a></h3>
   <div class="text">Tại Việt Nam, cho tới nay lĩnh vực thiết kế sản phẩm nội thất còn khá mới mẻ, rất ít các nhà thiết kế thực hiện thiết kế đồ nội thất, chưa nói đến việc...</div>
   <div class="link"><a href="https://nordic.vn/tap-chi-kien-truc-kts-nguyen-phuong-chi-hanh-trinh-dinh-vi-thuong-hieu-noi-that-viet/">Xem chi tiết <i></i></a></div>
</div>
                                        </div>
                                    </div>
                                </div><div class="owl-item active" style="width: 372.667px;">
                                    <div class="item">
                                        <div class="box">
                                            <div class="img">
                                                <a href="https://nordic.vn/bao-thanh-nien-nha-thiet-ke-ve-ghe-hoang-hau/"><img data-lazyloaded="1" src="App_Themes/house/img/293394290_2341139962701973_3401177730407643931_n.jpg" width="683" height="1024" data-src="https://nordic.vn/wp-content/uploads/2022/08/293394290_2341139962701973_3401177730407643931_n.jpg" class="attachment-large size-large wvs-archive-product-image wp-post-image entered litespeed-loaded" alt="nha-thiet-ke-ve-ghe-hoang-hau" decoding="async" loading="lazy" data-ll-status="loaded"></a>
                                            </div><div class="info"><div class="top"><div class="date">21/09/2022</div><div class="meta"><div class="share"><a href="https://facebook.com/share.php?u=https://nordic.vn/bao-thanh-nien-nha-thiet-ke-ve-ghe-hoang-hau/" target="_blank" rel="nofollow" onclick="javascript:window.open(this.href, &#39;&#39;, &#39;menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600&#39;);return false;" class="facebook " data-toggle="tooltip" title="Share on Facebook"><img data-lazyloaded="1" src="App_Themes/house/img/icon_share.png" alt"icon_share"="" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_share.png" data-ll-status="loaded" class="entered litespeed-loaded"></a></div><div class="view"><img data-lazyloaded="1" src="App_Themes/house/img/icon_view.png" alt="view" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_view.png" data-ll-status="loaded" class="entered litespeed-loaded">560</div></div></div><h3 class="name"><a href="https://nordic.vn/bao-thanh-nien-nha-thiet-ke-ve-ghe-hoang-hau/">Báo Thanh Niên – Nhà thiết kế vẽ ghế hoàng hậu</a></h3><div class="text">Chiếc ghế nhỏ màu xanh óng, có tay bịt vàng, với gối đệm lưng màu cam được đặt trên một bệ nhỏ tại phòng trưng bày thiết kế của Nordic, một thương hiệu nội thất...</div><div class="link"><a href="https://nordic.vn/bao-thanh-nien-nha-thiet-ke-ve-ghe-hoang-hau/">Xem chi tiết <i></i></a></div></div>
                                        </div>
                                    </div>
                                </div><div class="owl-item active" style="width: 372.667px;">
                                    <div class="item">
                                        <div class="box">
                                            <div class="img">
                                                <a href="https://nordic.vn/bao-bac-giang-nhung-dac-trung-noi-bat-cua-phong-cach-noi-that-bac-au/"><img data-lazyloaded="1" src="App_Themes/house/img/anh-thumb-BST-Half-Life.png" width="590" height="323" data-src="https://nordic.vn/wp-content/uploads/2022/09/anh-thumb-BST-Half-Life.png" class="attachment-large size-large wvs-archive-product-image wp-post-image entered litespeed-loaded" alt="nha-thiet-ke-ve-ghe-hoang-hau-" decoding="async" loading="lazy" data-srcset="https://nordic.vn/wp-content/uploads/2022/09/anh-thumb-BST-Half-Life.png 590w, https://nordic.vn/wp-content/uploads/2022/09/anh-thumb-BST-Half-Life-300x164.png 300w" data-sizes="(max-width: 590px) 100vw, 590px" data-ll-status="loaded" sizes="(max-width: 590px) 100vw, 590px" srcset="https://nordic.vn/wp-content/uploads/2022/09/anh-thumb-BST-Half-Life.png 590w, https://nordic.vn/wp-content/uploads/2022/09/anh-thumb-BST-Half-Life-300x164.png 300w"></a>
                                            </div><div class="info"><div class="top"><div class="date">21/09/2022</div><div class="meta"><div class="share"><a href="https://facebook.com/share.php?u=https://nordic.vn/bao-bac-giang-nhung-dac-trung-noi-bat-cua-phong-cach-noi-that-bac-au/" target="_blank" rel="nofollow" onclick="javascript:window.open(this.href, &#39;&#39;, &#39;menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600&#39;);return false;" class="facebook " data-toggle="tooltip" title="Share on Facebook"><img data-lazyloaded="1" src="App_Themes/house/img/icon_share.png" alt"icon_share"="" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_share.png" data-ll-status="loaded" class="entered litespeed-loaded"></a></div><div class="view"><img data-lazyloaded="1" src="App_Themes/house/img/icon_view.png" alt="view" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_view.png" data-ll-status="loaded" class="entered litespeed-loaded">527</div></div></div><h3 class="name"><a href="https://nordic.vn/bao-bac-giang-nhung-dac-trung-noi-bat-cua-phong-cach-noi-that-bac-au/">Báo Bắc Giang – Những đặc trưng nổi bật của phong cách nội thất Bắc Âu</a></h3><div class="text">Thiết kế nội thất Bắc Âu là một trong những phong cách được rất nhiều người lựa chọn cho căn hộ của mình bởi chúng cân bằng được các yếu tố đơn giản - tiện...</div><div class="link"><a href="https://nordic.vn/bao-bac-giang-nhung-dac-trung-noi-bat-cua-phong-cach-noi-that-bac-au/">Xem chi tiết <i></i></a></div></div>
                                        </div>
                                    </div>
                                </div><div class="owl-item" style="width: 372.667px;">
                                    <div class="item">
                                        <div class="box">
                                            <div class="img">
                                                <a href="https://nordic.vn/tinphongcach-sema-nordic-thuong-hieu-noi-that-phong-cach-bac-au-thiet-ke-uy-tin-boi-nguoi-viet/"><img data-lazyloaded="1" src="App_Themes/house/img/b1-1024x1024.jpg" width="1024" height="1024" data-src="https://nordic.vn/wp-content/uploads/2022/09/b1-1024x1024.jpg" class="attachment-large size-large wvs-archive-product-image wp-post-image entered litespeed-loaded" alt="nha-thiet-ke-ve-ghe-hoang-hau-1" decoding="async" loading="lazy" data-srcset="https://nordic.vn/wp-content/uploads/2022/09/b1-1024x1024.jpg 1024w, https://nordic.vn/wp-content/uploads/2022/09/b1-300x300.jpg 300w, https://nordic.vn/wp-content/uploads/2022/09/b1-150x150.jpg 150w, https://nordic.vn/wp-content/uploads/2022/09/b1-768x768.jpg 768w, https://nordic.vn/wp-content/uploads/2022/09/b1-600x600.jpg 600w, https://nordic.vn/wp-content/uploads/2022/09/b1-400x400.jpg 400w, https://nordic.vn/wp-content/uploads/2022/09/b1-50x50.jpg 50w, https://nordic.vn/wp-content/uploads/2022/09/b1-100x100.jpg 100w, https://nordic.vn/wp-content/uploads/2022/09/b1.jpg 1242w" data-sizes="(max-width: 1024px) 100vw, 1024px" data-ll-status="loaded" sizes="(max-width: 1024px) 100vw, 1024px" srcset="https://nordic.vn/wp-content/uploads/2022/09/b1-1024x1024.jpg 1024w, https://nordic.vn/wp-content/uploads/2022/09/b1-300x300.jpg 300w, https://nordic.vn/wp-content/uploads/2022/09/b1-150x150.jpg 150w, https://nordic.vn/wp-content/uploads/2022/09/b1-768x768.jpg 768w, https://nordic.vn/wp-content/uploads/2022/09/b1-600x600.jpg 600w, https://nordic.vn/wp-content/uploads/2022/09/b1-400x400.jpg 400w, https://nordic.vn/wp-content/uploads/2022/09/b1-50x50.jpg 50w, https://nordic.vn/wp-content/uploads/2022/09/b1-100x100.jpg 100w, https://nordic.vn/wp-content/uploads/2022/09/b1.jpg 1242w"></a>
                                            </div><div class="info"><div class="top"><div class="date">21/09/2022</div><div class="meta"><div class="share"><a href="https://facebook.com/share.php?u=https://nordic.vn/tinphongcach-sema-nordic-thuong-hieu-noi-that-phong-cach-bac-au-thiet-ke-uy-tin-boi-nguoi-viet/" target="_blank" rel="nofollow" onclick="javascript:window.open(this.href, &#39;&#39;, &#39;menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600&#39;);return false;" class="facebook " data-toggle="tooltip" title="Share on Facebook"><img data-lazyloaded="1" src="data:image/gif;base64,R0lGODdhAQABAPAAAMPDwwAAACwAAAAAAQABAAACAkQBADs=" alt"icon_share"="" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_share.png"></a></div><div class="view"><img data-lazyloaded="1" src="data:image/gif;base64,R0lGODdhAQABAPAAAMPDwwAAACwAAAAAAQABAAACAkQBADs=" alt="view" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_view.png">577</div></div></div><h3 class="name"><a href="https://nordic.vn/tinphongcach-sema-nordic-thuong-hieu-noi-that-phong-cach-bac-au-thiet-ke-uy-tin-boi-nguoi-viet/">Tinphongcach – “SEMA Nordic – Thương hiệu nội thất phong cách Bắc Âu thiết kế uy tín bởi người Việt”</a></h3><div class="text">Sema&nbsp;NORDIC® ra đời với khao khát phụng sự cho ngôi nhà Việt các sản phẩm nội thất phong cách Bắc Âu chất lượng, bền đẹp, tiện ích và đầy đủ công năng. Trong suốt hơn...</div><div class="link"><a href="https://nordic.vn/tinphongcach-sema-nordic-thuong-hieu-noi-that-phong-cach-bac-au-thiet-ke-uy-tin-boi-nguoi-viet/">Xem chi tiết <i></i></a></div></div>
                                        </div>
                                    </div>
                                </div><div class="owl-item" style="width: 372.667px;">
                                    <div class="item">
                                        <div class="box">
                                            <div class="img">
                                                <a href="https://nordic.vn/happynest-kts-nguyen-phuong-chi-kien-tao-thuong-hieu-noi-that-made-in-viet-nam-mong-muon-nang-tam-chat-luong-song-cho-nguoi-viet/"><img data-lazyloaded="1" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDI0IiBoZWlnaHQ9IjY4NSIgdmlld0JveD0iMCAwIDEwMjQgNjg1Ij48cmVjdCB3aWR0aD0iMTAwJSIgaGVpZ2h0PSIxMDAlIiBzdHlsZT0iZmlsbDojY2ZkNGRiO2ZpbGwtb3BhY2l0eTogMC4xOyIvPjwvc3ZnPg==" width="1024" height="685" data-src="https://nordic.vn/wp-content/uploads/2022/09/5511d96267086b762ff4846e633b8f8e-1-1024x685.jpeg" class="attachment-large size-large wvs-archive-product-image wp-post-image" alt="nha-thiet-ke-ve-ghe-hoang-hau-2" decoding="async" loading="lazy" data-srcset="https://nordic.vn/wp-content/uploads/2022/09/5511d96267086b762ff4846e633b8f8e-1-1024x685.jpeg 1024w, https://nordic.vn/wp-content/uploads/2022/09/5511d96267086b762ff4846e633b8f8e-1-600x401.jpeg 600w, https://nordic.vn/wp-content/uploads/2022/09/5511d96267086b762ff4846e633b8f8e-1-300x201.jpeg 300w, https://nordic.vn/wp-content/uploads/2022/09/5511d96267086b762ff4846e633b8f8e-1-768x514.jpeg 768w, https://nordic.vn/wp-content/uploads/2022/09/5511d96267086b762ff4846e633b8f8e-1-1536x1028.jpeg 1536w, https://nordic.vn/wp-content/uploads/2022/09/5511d96267086b762ff4846e633b8f8e-1.jpeg 1877w" data-sizes="(max-width: 1024px) 100vw, 1024px"></a>
                                            </div><div class="info"><div class="top"><div class="date">06/09/2022</div><div class="meta"><div class="share"><a href="https://facebook.com/share.php?u=https://nordic.vn/happynest-kts-nguyen-phuong-chi-kien-tao-thuong-hieu-noi-that-made-in-viet-nam-mong-muon-nang-tam-chat-luong-song-cho-nguoi-viet/" target="_blank" rel="nofollow" onclick="javascript:window.open(this.href, &#39;&#39;, &#39;menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600&#39;);return false;" class="facebook " data-toggle="tooltip" title="Share on Facebook"><img data-lazyloaded="1" src="data:image/gif;base64,R0lGODdhAQABAPAAAMPDwwAAACwAAAAAAQABAAACAkQBADs=" alt"icon_share"="" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_share.png"></a></div><div class="view"><img data-lazyloaded="1" src="data:image/gif;base64,R0lGODdhAQABAPAAAMPDwwAAACwAAAAAAQABAAACAkQBADs=" alt="view" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_view.png">579</div></div></div><h3 class="name"><a href="https://nordic.vn/happynest-kts-nguyen-phuong-chi-kien-tao-thuong-hieu-noi-that-made-in-viet-nam-mong-muon-nang-tam-chat-luong-song-cho-nguoi-viet/">Happynest – “KTS Nguyễn Phương Chi: Kiến tạo thương hiệu nội thất Made in Việt Nam mong muốn nâng tầm chất lượng sống cho người Việt”</a></h3><div class="text">Trải qua 11 năm thăng trầm, từ con số 0 đến việc đặt dấu mốc đầu tiên trong lĩnh vực phát triển thương hiệu thiết kế đồ nội thất Made in Việt Nam, KTS Nguyễn...</div><div class="link"><a href="https://nordic.vn/happynest-kts-nguyen-phuong-chi-kien-tao-thuong-hieu-noi-that-made-in-viet-nam-mong-muon-nang-tam-chat-luong-song-cho-nguoi-viet/">Xem chi tiết <i></i></a></div></div>
                                        </div>
                                    </div>
                                </div><div class="owl-item" style="width: 372.667px;">
                                    <div class="item">
                                        <div class="box">
                                            <div class="img">
                                                <a href="https://nordic.vn/cafebiz-hanh-trinh-kien-tao-va-dinh-vi-thuong-hieu-thiet-ke-noi-that-bac-au-tai-viet-nam/"><img data-lazyloaded="1" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI2MDAiIGhlaWdodD0iMzc1IiB2aWV3Qm94PSIwIDAgNjAwIDM3NSI+PHJlY3Qgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgc3R5bGU9ImZpbGw6I2NmZDRkYjtmaWxsLW9wYWNpdHk6IDAuMTsiLz48L3N2Zz4=" width="600" height="375" data-src="https://nordic.vn/wp-content/uploads/2022/09/photo1659670316015-16596703161181684021151-63795568364591.webp" class="attachment-large size-large wvs-archive-product-image wp-post-image" alt="nha-thiet-ke-ve-ghe-hoang-hau-23" decoding="async" loading="lazy" data-srcset="https://nordic.vn/wp-content/uploads/2022/09/photo1659670316015-16596703161181684021151-63795568364591.webp 600w, https://nordic.vn/wp-content/uploads/2022/09/photo1659670316015-16596703161181684021151-63795568364591-300x188.webp 300w" data-sizes="(max-width: 600px) 100vw, 600px"></a>
                                            </div><div class="info"><div class="top"><div class="date">01/09/2022</div><div class="meta"><div class="share"><a href="https://facebook.com/share.php?u=https://nordic.vn/cafebiz-hanh-trinh-kien-tao-va-dinh-vi-thuong-hieu-thiet-ke-noi-that-bac-au-tai-viet-nam/" target="_blank" rel="nofollow" onclick="javascript:window.open(this.href, &#39;&#39;, &#39;menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600&#39;);return false;" class="facebook " data-toggle="tooltip" title="Share on Facebook"><img data-lazyloaded="1" src="data:image/gif;base64,R0lGODdhAQABAPAAAMPDwwAAACwAAAAAAQABAAACAkQBADs=" alt"icon_share"="" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_share.png"></a></div><div class="view"><img data-lazyloaded="1" src="data:image/gif;base64,R0lGODdhAQABAPAAAMPDwwAAACwAAAAAAQABAAACAkQBADs=" alt="view" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_view.png">597</div></div></div><h3 class="name"><a href="https://nordic.vn/cafebiz-hanh-trinh-kien-tao-va-dinh-vi-thuong-hieu-thiet-ke-noi-that-bac-au-tai-viet-nam/">Cafebiz – Hành trình kiến tạo và định vị thương hiệu thiết kế Nội thất Bắc Âu tại Việt Nam</a></h3><div class="text">Khác với các hãng nội thất Việt mọc lên như nấm, 𝗡𝗢𝗥𝗗𝗜𝗖® (thương hiệu con của Sema Group) vẫn được đánh giá cao bởi định hướng "thiết kế &amp; sản xuất đồ nội thất phong...</div><div class="link"><a href="https://nordic.vn/cafebiz-hanh-trinh-kien-tao-va-dinh-vi-thuong-hieu-thiet-ke-noi-that-bac-au-tai-viet-nam/">Xem chi tiết <i></i></a></div></div>
                                        </div>
                                    </div>
                                </div><div class="owl-item" style="width: 372.667px;">
                                    <div class="item">
                                        <div class="box">
                                            <div class="img">
                                                <a href="https://nordic.vn/kien-viet-ky-niem-4-nam-thanh-lap-nordic-thuong-hieu-do-noi-that-mang-tinh-than-designed-by-vietnam/"><img data-lazyloaded="1" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDI0IiBoZWlnaHQ9IjY4MyIgdmlld0JveD0iMCAwIDEwMjQgNjgzIj48cmVjdCB3aWR0aD0iMTAwJSIgaGVpZ2h0PSIxMDAlIiBzdHlsZT0iZmlsbDojY2ZkNGRiO2ZpbGwtb3BhY2l0eTogMC4xOyIvPjwvc3ZnPg==" width="1024" height="683" data-src="https://nordic.vn/wp-content/uploads/2022/09/kienviet-ky-niem-4-nam-thanh-lap-nordic4-1440x960-1-1024x683.jpg" class="attachment-large size-large wvs-archive-product-image wp-post-image" alt="nha-thiet-ke-ve-ghe-hoang-hau-24" decoding="async" loading="lazy" data-srcset="https://nordic.vn/wp-content/uploads/2022/09/kienviet-ky-niem-4-nam-thanh-lap-nordic4-1440x960-1-1024x683.jpg 1024w, https://nordic.vn/wp-content/uploads/2022/09/kienviet-ky-niem-4-nam-thanh-lap-nordic4-1440x960-1-600x400.jpg 600w, https://nordic.vn/wp-content/uploads/2022/09/kienviet-ky-niem-4-nam-thanh-lap-nordic4-1440x960-1-300x200.jpg 300w, https://nordic.vn/wp-content/uploads/2022/09/kienviet-ky-niem-4-nam-thanh-lap-nordic4-1440x960-1-768x512.jpg 768w, https://nordic.vn/wp-content/uploads/2022/09/kienviet-ky-niem-4-nam-thanh-lap-nordic4-1440x960-1.jpg 1440w" data-sizes="(max-width: 1024px) 100vw, 1024px"></a>
                                            </div><div class="info"><div class="top"><div class="date">01/09/2022</div><div class="meta"><div class="share"><a href="https://facebook.com/share.php?u=https://nordic.vn/kien-viet-ky-niem-4-nam-thanh-lap-nordic-thuong-hieu-do-noi-that-mang-tinh-than-designed-by-vietnam/" target="_blank" rel="nofollow" onclick="javascript:window.open(this.href, &#39;&#39;, &#39;menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600&#39;);return false;" class="facebook " data-toggle="tooltip" title="Share on Facebook"><img data-lazyloaded="1" src="data:image/gif;base64,R0lGODdhAQABAPAAAMPDwwAAACwAAAAAAQABAAACAkQBADs=" alt"icon_share"="" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_share.png"></a></div><div class="view"><img data-lazyloaded="1" src="data:image/gif;base64,R0lGODdhAQABAPAAAMPDwwAAACwAAAAAAQABAAACAkQBADs=" alt="view" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_view.png">574</div></div></div><h3 class="name"><a href="https://nordic.vn/kien-viet-ky-niem-4-nam-thanh-lap-nordic-thuong-hieu-do-noi-that-mang-tinh-than-designed-by-vietnam/">Kiến Việt – Kỷ niệm 4 năm thành lập NORDIC – thương hiệu đồ nội thất mang tinh thần “Designed by Vietnam”</a></h3><div class="text">Vừa qua, thương hiệu đồ nội thất Bắc Âu NORDIC đã kỷ niệm 4 năm thành lập. Chính thức ra mắt ngày 08/08/2018, sau những nỗ lực xây dựng và phát triển trong suốt 4...</div><div class="link"><a href="https://nordic.vn/kien-viet-ky-niem-4-nam-thanh-lap-nordic-thuong-hieu-do-noi-that-mang-tinh-than-designed-by-vietnam/">Xem chi tiết <i></i></a></div></div>
                                        </div>
                                    </div>
                                </div><div class="owl-item" style="width: 372.667px;">
                                    <div class="item">
                                        <div class="box">
                                            <div class="img">
                                                <a href="https://nordic.vn/kien-viet-tien-phong-sang-tao-va-cam-hung-thiet-ke-doc-ban-nordic-cho-ra-mat-bst-moi-mang-hoi-tho-duong-dai-va-y-nghia-nhan-van-sau-sac/"><img data-lazyloaded="1" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDI0IiBoZWlnaHQ9IjY0MCIgdmlld0JveD0iMCAwIDEwMjQgNjQwIj48cmVjdCB3aWR0aD0iMTAwJSIgaGVpZ2h0PSIxMDAlIiBzdHlsZT0iZmlsbDojY2ZkNGRiO2ZpbGwtb3BhY2l0eTogMC4xOyIvPjwvc3ZnPg==" width="1024" height="640" data-src="https://nordic.vn/wp-content/uploads/2022/09/kienviet-nordic-cho-ra-mat-bts-moi-4-1440x900-1-1024x640.jpg" class="attachment-large size-large wvs-archive-product-image wp-post-image" alt="" decoding="async" loading="lazy" data-srcset="https://nordic.vn/wp-content/uploads/2022/09/kienviet-nordic-cho-ra-mat-bts-moi-4-1440x900-1-1024x640.jpg 1024w, https://nordic.vn/wp-content/uploads/2022/09/kienviet-nordic-cho-ra-mat-bts-moi-4-1440x900-1-600x375.jpg 600w, https://nordic.vn/wp-content/uploads/2022/09/kienviet-nordic-cho-ra-mat-bts-moi-4-1440x900-1-300x188.jpg 300w, https://nordic.vn/wp-content/uploads/2022/09/kienviet-nordic-cho-ra-mat-bts-moi-4-1440x900-1-768x480.jpg 768w, https://nordic.vn/wp-content/uploads/2022/09/kienviet-nordic-cho-ra-mat-bts-moi-4-1440x900-1.jpg 1440w" data-sizes="(max-width: 1024px) 100vw, 1024px"></a>
                                            </div><div class="info"><div class="top"><div class="date">01/09/2022</div><div class="meta"><div class="share"><a href="https://facebook.com/share.php?u=https://nordic.vn/kien-viet-tien-phong-sang-tao-va-cam-hung-thiet-ke-doc-ban-nordic-cho-ra-mat-bst-moi-mang-hoi-tho-duong-dai-va-y-nghia-nhan-van-sau-sac/" target="_blank" rel="nofollow" onclick="javascript:window.open(this.href, &#39;&#39;, &#39;menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600&#39;);return false;" class="facebook " data-toggle="tooltip" title="Share on Facebook"><img data-lazyloaded="1" src="data:image/gif;base64,R0lGODdhAQABAPAAAMPDwwAAACwAAAAAAQABAAACAkQBADs=" alt"icon_share"="" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_share.png"></a></div><div class="view"><img data-lazyloaded="1" src="data:image/gif;base64,R0lGODdhAQABAPAAAMPDwwAAACwAAAAAAQABAAACAkQBADs=" alt="view" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_view.png">534</div></div></div><h3 class="name"><a href="https://nordic.vn/kien-viet-tien-phong-sang-tao-va-cam-hung-thiet-ke-doc-ban-nordic-cho-ra-mat-bst-moi-mang-hoi-tho-duong-dai-va-y-nghia-nhan-van-sau-sac/">Kiến Việt – “Tiên phong sáng tạo và cảm hứng thiết kế độc bản, Nordic cho ra mắt BST mới mang hơi thở đương đại và ý nghĩa nhân văn sâu sắc”</a></h3><div class="text">Đi đầu trong xu hướng đưa những sản phẩm nội thất chất lượng cao Made in Vietnam – Made by Vietnam vào trong tổ ấm của mỗi gia đình Việt,&nbsp;Nordic&nbsp;tiếp tục cho “trình làng” BST...</div><div class="link"><a href="https://nordic.vn/kien-viet-tien-phong-sang-tao-va-cam-hung-thiet-ke-doc-ban-nordic-cho-ra-mat-bst-moi-mang-hoi-tho-duong-dai-va-y-nghia-nhan-van-sau-sac/">Xem chi tiết <i></i></a></div></div>
                                        </div>
                                    </div>
                                </div><div class="owl-item" style="width: 372.667px;">
                                    <div class="item">
                                        <div class="box">
                                            <div class="img">
                                                <a href="https://nordic.vn/kien-viet-tinh-than-designed-by-vietnam-trong-noi-that-phong-cach-bac-au-tu-sma-nordic/"><img data-lazyloaded="1" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDI0IiBoZWlnaHQ9IjU3NiIgdmlld0JveD0iMCAwIDEwMjQgNTc2Ij48cmVjdCB3aWR0aD0iMTAwJSIgaGVpZ2h0PSIxMDAlIiBzdHlsZT0iZmlsbDojY2ZkNGRiO2ZpbGwtb3BhY2l0eTogMC4xOyIvPjwvc3ZnPg==" width="1024" height="576" data-src="https://nordic.vn/wp-content/uploads/2022/09/kienviet-tinh-than-Designed-by-Vietnam-trong-noi-that-phong-cach-bac-au-tu-sma-nordic-1-1440x810-1-1-1024x576.png" class="attachment-large size-large wvs-archive-product-image wp-post-image" alt="" decoding="async" loading="lazy" data-srcset="https://nordic.vn/wp-content/uploads/2022/09/kienviet-tinh-than-Designed-by-Vietnam-trong-noi-that-phong-cach-bac-au-tu-sma-nordic-1-1440x810-1-1-1024x576.png 1024w, https://nordic.vn/wp-content/uploads/2022/09/kienviet-tinh-than-Designed-by-Vietnam-trong-noi-that-phong-cach-bac-au-tu-sma-nordic-1-1440x810-1-1-600x338.png 600w, https://nordic.vn/wp-content/uploads/2022/09/kienviet-tinh-than-Designed-by-Vietnam-trong-noi-that-phong-cach-bac-au-tu-sma-nordic-1-1440x810-1-1-300x169.png 300w, https://nordic.vn/wp-content/uploads/2022/09/kienviet-tinh-than-Designed-by-Vietnam-trong-noi-that-phong-cach-bac-au-tu-sma-nordic-1-1440x810-1-1-768x432.png 768w, https://nordic.vn/wp-content/uploads/2022/09/kienviet-tinh-than-Designed-by-Vietnam-trong-noi-that-phong-cach-bac-au-tu-sma-nordic-1-1440x810-1-1.png 1440w" data-sizes="(max-width: 1024px) 100vw, 1024px"></a>
                                            </div><div class="info"><div class="top"><div class="date">01/09/2020</div><div class="meta"><div class="share"><a href="https://facebook.com/share.php?u=https://nordic.vn/kien-viet-tinh-than-designed-by-vietnam-trong-noi-that-phong-cach-bac-au-tu-sma-nordic/" target="_blank" rel="nofollow" onclick="javascript:window.open(this.href, &#39;&#39;, &#39;menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600&#39;);return false;" class="facebook " data-toggle="tooltip" title="Share on Facebook"><img data-lazyloaded="1" src="data:image/gif;base64,R0lGODdhAQABAPAAAMPDwwAAACwAAAAAAQABAAACAkQBADs=" alt"icon_share"="" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_share.png"></a></div><div class="view"><img data-lazyloaded="1" src="data:image/gif;base64,R0lGODdhAQABAPAAAMPDwwAAACwAAAAAAQABAAACAkQBADs=" alt="view" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_view.png">324</div></div></div><h3 class="name"><a href="https://nordic.vn/kien-viet-tinh-than-designed-by-vietnam-trong-noi-that-phong-cach-bac-au-tu-sma-nordic/">Kiến Việt – “Tinh thần “Designed by Vietnam” trong nội thất phong cách Bắc Âu từ SMA Nordic”</a></h3><div class="text">Tại Việt Nam, nội thất Bắc Âu chủ yếu là những sản phẩm nhập khẩu. SMA Nordic là một trong số ít thương hiệu Việt đã đem hơi hướng Scandinavian vào các thiết kế “Designed...</div><div class="link"><a href="https://nordic.vn/kien-viet-tinh-than-designed-by-vietnam-trong-noi-that-phong-cach-bac-au-tu-sma-nordic/">Xem chi tiết <i></i></a></div></div>
                                        </div>
                                    </div>
                                </div><div class="owl-item" style="width: 372.667px;">
                                    <div class="item">
                                        <div class="box">
                                            <div class="img">
                                                <a href="https://nordic.vn/kien-viet-sma-nordic-gay-an-tuong-voi-bst-2021-vua-duoc-cong-bo/"><img data-lazyloaded="1" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDI0IiBoZWlnaHQ9IjY4MiIgdmlld0JveD0iMCAwIDEwMjQgNjgyIj48cmVjdCB3aWR0aD0iMTAwJSIgaGVpZ2h0PSIxMDAlIiBzdHlsZT0iZmlsbDojY2ZkNGRiO2ZpbGwtb3BhY2l0eTogMC4xOyIvPjwvc3ZnPg==" width="1024" height="682" data-src="https://nordic.vn/wp-content/uploads/2022/09/sma-nordic-gay-an-tuong-voi-bst-2021-vua-duoc-cong-bo-1-1-1024x682.jpg" class="attachment-large size-large wvs-archive-product-image wp-post-image" alt="" decoding="async" loading="lazy" data-srcset="https://nordic.vn/wp-content/uploads/2022/09/sma-nordic-gay-an-tuong-voi-bst-2021-vua-duoc-cong-bo-1-1-1024x682.jpg 1024w, https://nordic.vn/wp-content/uploads/2022/09/sma-nordic-gay-an-tuong-voi-bst-2021-vua-duoc-cong-bo-1-1-600x400.jpg 600w, https://nordic.vn/wp-content/uploads/2022/09/sma-nordic-gay-an-tuong-voi-bst-2021-vua-duoc-cong-bo-1-1-300x200.jpg 300w, https://nordic.vn/wp-content/uploads/2022/09/sma-nordic-gay-an-tuong-voi-bst-2021-vua-duoc-cong-bo-1-1-768x511.jpg 768w, https://nordic.vn/wp-content/uploads/2022/09/sma-nordic-gay-an-tuong-voi-bst-2021-vua-duoc-cong-bo-1-1.jpg 1200w" data-sizes="(max-width: 1024px) 100vw, 1024px"></a>
                                            </div><div class="info"><div class="top"><div class="date">01/09/2021</div><div class="meta"><div class="share"><a href="https://facebook.com/share.php?u=https://nordic.vn/kien-viet-sma-nordic-gay-an-tuong-voi-bst-2021-vua-duoc-cong-bo/" target="_blank" rel="nofollow" onclick="javascript:window.open(this.href, &#39;&#39;, &#39;menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600&#39;);return false;" class="facebook " data-toggle="tooltip" title="Share on Facebook"><img data-lazyloaded="1" src="data:image/gif;base64,R0lGODdhAQABAPAAAMPDwwAAACwAAAAAAQABAAACAkQBADs=" alt"icon_share"="" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_share.png"></a></div><div class="view"><img data-lazyloaded="1" src="data:image/gif;base64,R0lGODdhAQABAPAAAMPDwwAAACwAAAAAAQABAAACAkQBADs=" alt="view" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_view.png">290</div></div></div><h3 class="name"><a href="https://nordic.vn/kien-viet-sma-nordic-gay-an-tuong-voi-bst-2021-vua-duoc-cong-bo/">Kiến Việt – “SMA Nordic gây ấn tượng với BST 2021 vừa được công bố”</a></h3><div class="text">Cuộc sống ngày càng phát triển, nhu cầu của con người về tiện nghi và thẩm mỹ lại càng được chú trọng hơn. Một tổ ấm đầy đủ tiện nghi, đẹp, ấm áp, phù hợp...</div><div class="link"><a href="https://nordic.vn/kien-viet-sma-nordic-gay-an-tuong-voi-bst-2021-vua-duoc-cong-bo/">Xem chi tiết <i></i></a></div></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><div class="owl-nav"><button type="button" role="presentation" class="owl-prev disabled"><span aria-label="Previous">‹</span></button><button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button></div><div class="owl-dots disabled"></div>
                    </div>
                </div>
            </div>
        </div>--%>
<uc1:projectTop ID="ProjectTop1" runat="server" />
<!-- END DU AN TOP
    <!-- CAC PHONG CACH -->
<uc2:styleTop ID="StyleTop1" runat="server" />
   <%-- <div class="collection_home">
            <div class="background bg_section" style="background-image: url(https://nordic.vn/wp-content/uploads/2023/04/Untitled-8.jpg);"></div><div class="container-fluid">
                <div class="title_home2 white">
                    <h2 class="title">CÁC PHONG CÁCH</h2>
                    <a href="https://nordic.vn/san-pham/" class="link">Xem tất cả</a>
                </div><div class="slider">
                    <div class="owl-carousel owl-loaded owl-drag">
                        <div class="owl-stage-outer">
                            <div class="owl-stage" style="transform: translate3d(-1148px, 0px, 0px); transition: all 0s ease 0s; width: 3827px;">
                                <div class="owl-item cloned" style="width: 382.667px;">
                                    <div class="item">
                                        <div class="img">
                                            <a href="https://nordic.vn/pige/">
                                                <img data-lazyloaded="1" src="App_Themes/house/img/anh-thumb-BST-Pige.png" data-src="https://nordic.vn/wp-content/uploads/2022/09/anh-thumb-BST-Pige.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                                <span class="status">Hot</span>
                                            </a>
                                        </div><div class="info"><h3 class="name"><a href="https://nordic.vn/pige/">Pige Collection</a></h3><div class="text">Bộ sưu tập PIGE của NORDIC tập trung khai thác chủ đề “tính nữ trong tình yêu”, mang đến những thiết kế mềm mại và bao bọc, cách điệu mà tối giản.</div></div>
                                    </div>
                                </div><div class="owl-item cloned" style="width: 382.667px;">
                                    <div class="item">
                                        <div class="img">
                                            <a href="https://nordic.vn/mand/">
                                                <img data-lazyloaded="1" src="App_Themes/house/img/anh-thumb-BST-Mand-ver2.png" data-src="https://nordic.vn/wp-content/uploads/2022/09/anh-thumb-BST-Mand-ver2.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                                <span class="status">New</span>
                                            </a>
                                        </div><div class="info"><h3 class="name"><a href="https://nordic.vn/mand/">Mand Collection</a></h3><div class="text">Lấy ý tưởng từ vẻ mạnh mẽ, phóng khoáng của nam giới, Sofa AESIR mang đến một không gian ấn tượng và cá tính. Phù hợp với những người nội tâm mạnh mẽ, luôn chăm chút cẩn thận cho góc riêng trong cuộc sống của mình.</div></div>
                                    </div>
                                </div><div class="owl-item cloned" style="width: 382.667px;">
                                    <div class="item">
                                        <div class="img">
                                            <a href="https://nordic.vn/">
                                                <img data-lazyloaded="1" src="App_Themes/house/img/Untitled-1-1.jpg" data-src="https://nordic.vn/wp-content/uploads/2022/11/Untitled-1-1.jpg" alt="" data-ll-status="loading" class="entered litespeed-loading">
                                                <span class="status">New</span>
                                            </a>
                                        </div><div class="info"><h3 class="name"><a href="https://nordic.vn/">The Nest </a></h3><div class="text">Lấy ý tưởng từ những chiếc tổ, gợi cảm giác của sự gần gũi, sự bao bọc và yêu thương. Đây cũng là ý niệm NORDIC mong muốn mang đến cho một không gian sống chất lượng.</div></div>
                                    </div>
                                </div><div class="owl-item active" style="width: 382.667px;">
                                    <div class="item">
                                        <div class="img">
                                            <a href="https://nordic.vn/bst-2020/">
                                                <img data-lazyloaded="1" src="App_Themes/house/img/Untitled-1.jpg" data-src="https://nordic.vn/wp-content/uploads/2022/11/Untitled-1.jpg" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                                <span class="status">New</span>
                                            </a>
                                        </div><div class="info"><h3 class="name"><a href="https://nordic.vn/bst-2020/">Half Life</a></h3><div class="text">“HALF LIFE” mong muốn mang đến những không gian thực sự đáng sống cho mỗi cá nhân và gia đình thông qua việc biến những món đồ nội thất trở thành “một nửa” đắc lực cho cuộc sống chất lượng.</div></div>
                                    </div>
                                </div><div class="owl-item active" style="width: 382.667px;">
                                    <div class="item">
                                        <div class="img">
                                            <a href="https://nordic.vn/pige/">
                                                <img data-lazyloaded="1" src="App_Themes/house/img/anh-thumb-BST-Pige.png" data-src="https://nordic.vn/wp-content/uploads/2022/09/anh-thumb-BST-Pige.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                                <span class="status">Hot</span>
                                            </a>
                                        </div><div class="info"><h3 class="name"><a href="https://nordic.vn/pige/">Pige Collection</a></h3><div class="text">Bộ sưu tập PIGE của NORDIC tập trung khai thác chủ đề “tính nữ trong tình yêu”, mang đến những thiết kế mềm mại và bao bọc, cách điệu mà tối giản.</div></div>
                                    </div>
                                </div><div class="owl-item active" style="width: 382.667px;">
                                    <div class="item">
                                        <div class="img">
                                            <a href="https://nordic.vn/mand/">
                                                <img data-lazyloaded="1" src="App_Themes/house/img/anh-thumb-BST-Mand-ver2.png" data-src="https://nordic.vn/wp-content/uploads/2022/09/anh-thumb-BST-Mand-ver2.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                                <span class="status">New</span>
                                            </a>
                                        </div><div class="info"><h3 class="name"><a href="https://nordic.vn/mand/">Mand Collection</a></h3><div class="text">Lấy ý tưởng từ vẻ mạnh mẽ, phóng khoáng của nam giới, Sofa AESIR mang đến một không gian ấn tượng và cá tính. Phù hợp với những người nội tâm mạnh mẽ, luôn chăm chút cẩn thận cho góc riêng trong cuộc sống của mình.</div></div>
                                    </div>
                                </div><div class="owl-item" style="width: 382.667px;">
                                    <div class="item">
                                        <div class="img">
                                            <a href="https://nordic.vn/">
                                                <img data-lazyloaded="1" src="App_Themes/house/img/Untitled-1-1.jpg" data-src="https://nordic.vn/wp-content/uploads/2022/11/Untitled-1-1.jpg" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                                <span class="status">New</span>
                                            </a>
                                        </div><div class="info"><h3 class="name"><a href="https://nordic.vn/">The Nest </a></h3><div class="text">Lấy ý tưởng từ những chiếc tổ, gợi cảm giác của sự gần gũi, sự bao bọc và yêu thương. Đây cũng là ý niệm NORDIC mong muốn mang đến cho một không gian sống chất lượng.</div></div>
                                    </div>
                                </div><div class="owl-item cloned" style="width: 382.667px;">
                                    <div class="item">
                                        <div class="img">
                                            <a href="https://nordic.vn/bst-2020/">
                                                <img data-lazyloaded="1" src="App_Themes/house/img/Untitled-1.jpg" data-src="https://nordic.vn/wp-content/uploads/2022/11/Untitled-1.jpg" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                                <span class="status">New</span>
                                            </a>
                                        </div><div class="info"><h3 class="name"><a href="https://nordic.vn/bst-2020/">Half Life</a></h3><div class="text">“HALF LIFE” mong muốn mang đến những không gian thực sự đáng sống cho mỗi cá nhân và gia đình thông qua việc biến những món đồ nội thất trở thành “một nửa” đắc lực cho cuộc sống chất lượng.</div></div>
                                    </div>
                                </div><div class="owl-item cloned" style="width: 382.667px;">
                                    <div class="item">
                                        <div class="img">
                                            <a href="https://nordic.vn/pige/">
                                                <img data-lazyloaded="1" src="App_Themes/house/img/anh-thumb-BST-Pige.png" data-src="https://nordic.vn/wp-content/uploads/2022/09/anh-thumb-BST-Pige.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                                <span class="status">Hot</span>
                                            </a>
                                        </div><div class="info"><h3 class="name"><a href="https://nordic.vn/pige/">Pige Collection</a></h3><div class="text">Bộ sưu tập PIGE của NORDIC tập trung khai thác chủ đề “tính nữ trong tình yêu”, mang đến những thiết kế mềm mại và bao bọc, cách điệu mà tối giản.</div></div>
                                    </div>
                                </div><div class="owl-item cloned" style="width: 382.667px;">
                                    <div class="item">
                                        <div class="img">
                                            <a href="https://nordic.vn/mand/">
                                                <img data-lazyloaded="1" src="App_Themes/house/img/anh-thumb-BST-Mand-ver2.png" data-src="https://nordic.vn/wp-content/uploads/2022/09/anh-thumb-BST-Mand-ver2.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                                <span class="status">New</span>
                                            </a>
                                        </div><div class="info"><h3 class="name"><a href="https://nordic.vn/mand/">Mand Collection</a></h3><div class="text">Lấy ý tưởng từ vẻ mạnh mẽ, phóng khoáng của nam giới, Sofa AESIR mang đến một không gian ấn tượng và cá tính. Phù hợp với những người nội tâm mạnh mẽ, luôn chăm chút cẩn thận cho góc riêng trong cuộc sống của mình.</div></div>
                                    </div>
                                </div>
                            </div>
                        </div><div class="owl-nav"><button type="button" role="presentation" class="owl-prev"><span aria-label="Previous">‹</span></button><button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button></div><div class="owl-dots disabled"></div>
                    </div>
                </div>
            </div>
        </div>--%>
    <!-- END CAC PHONG CACH -->

    <!-- QUY TRINH LAM VIEC -->
    <section id="reason">
    <div class="reason-header">
                    <h2 class="mbr-section-title align-center mbr-fonts-style mbr-bold display-2">Lý do lựa chọn Housedesign</h2>
            </div>

    <div class="container">
        <div class="reason-content-desktop">
                                        <img src="https://housedesign.vn/wp-content/uploads/2020/12/Frame-1.png" width="75%"  alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2020/12/Frame-1.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="https://housedesign.vn/wp-content/uploads/2020/12/Frame-1.png" width="75%"  alt=""></noscript>
                    </div>
        <div class="reason-content-mobile">
            <div class="reason-mobile-slide">
                <div class="owl-carousel owl-theme reason-carousel owl-loaded owl-drag" id="reason-carousel">
                                    <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-3248px, 0px, 0px); transition: all 0.25s ease 0s; width: 5104px;"><div class="owl-item cloned" style="width: 444px; margin-right: 20px;"><div class="item">
                                <div class="reason-item">
                                    <div class="item-box">
                                        <p class="number">03</p>
                                        <img src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2065%2050'%3E%3C/svg%3E" width="65" height="50" data-lazy-src="https://housedesign.vn/images/xuong-san-xuat-rieng.png"><noscript><img src="https://housedesign.vn/images/xuong-san-xuat-rieng.png" width="65" height="50"></noscript>
                                        <p class="description">
                                            Xưởng sản xuất riêng                                        </p>
                                    </div>
                                </div>
                            </div></div><div class="owl-item cloned" style="width: 444px; margin-right: 20px;"><div class="item">
                                <div class="reason-item">
                                    <div class="item-box">
                                        <p class="number">04</p>
                                        <img src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2065%2050'%3E%3C/svg%3E" width="65" height="50" data-lazy-src="https://housedesign.vn/images/chi-phi-hop-ly.png"><noscript><img src="https://housedesign.vn/images/chi-phi-hop-ly.png" width="65" height="50"></noscript>
                                        <p class="description">
                                            Chi phí hợp lý                                        </p>
                                    </div>
                                </div>
                            </div></div><div class="owl-item cloned" style="width: 444px; margin-right: 20px;"><div class="item">
                                <div class="reason-item">
                                    <div class="item-box">
                                        <p class="number">05</p>
                                        <img src="https://housedesign.vn/images/dung-tien-do.png" width="65" height="50" data-lazy-src="https://housedesign.vn/images/dung-tien-do.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="https://housedesign.vn/images/dung-tien-do.png" width="65" height="50"></noscript>
                                        <p class="description">
                                            Đúng tiến độ                                        </p>
                                    </div>
                                </div>
                            </div></div><div class="owl-item" style="width: 444px; margin-right: 20px;"><div class="item">
                                <div class="reason-item">
                                    <div class="item-box">
                                        <p class="number">01</p>
                                        <img src="https://housedesign.vn/images/dich-vu-khach-hang-tan-tam.png" width="65" height="50" data-lazy-src="https://housedesign.vn/images/dich-vu-khach-hang-tan-tam.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="https://housedesign.vn/images/dich-vu-khach-hang-tan-tam.png" width="65" height="50"></noscript>
                                        <p class="description">
                                            Dịch vụ khách hàng tận tâm                                        </p>
                                    </div>
                                </div>
                            </div></div><div class="owl-item" style="width: 444px; margin-right: 20px;"><div class="item">
                                <div class="reason-item">
                                    <div class="item-box">
                                        <p class="number">02</p>
                                        <img src="https://housedesign.vn/images/thiet-ke-sang-tao.png" width="65" height="50" data-lazy-src="https://housedesign.vn/images/thiet-ke-sang-tao.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="https://housedesign.vn/images/thiet-ke-sang-tao.png" width="65" height="50"></noscript>
                                        <p class="description">
                                            Thiết kế sáng tạo, thi công chất lượng                                        </p>
                                    </div>
                                </div>
                            </div></div><div class="owl-item" style="width: 444px; margin-right: 20px;"><div class="item">
                                <div class="reason-item">
                                    <div class="item-box">
                                        <p class="number">03</p>
                                        <img src="https://housedesign.vn/images/xuong-san-xuat-rieng.png" width="65" height="50" data-lazy-src="https://housedesign.vn/images/xuong-san-xuat-rieng.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="https://housedesign.vn/images/xuong-san-xuat-rieng.png" width="65" height="50"></noscript>
                                        <p class="description">
                                            Xưởng sản xuất riêng                                        </p>
                                    </div>
                                </div>
                            </div></div><div class="owl-item" style="width: 444px; margin-right: 20px;"><div class="item">
                                <div class="reason-item">
                                    <div class="item-box">
                                        <p class="number">04</p>
                                        <img src="https://housedesign.vn/images/chi-phi-hop-ly.png" width="65" height="50" data-lazy-src="https://housedesign.vn/images/chi-phi-hop-ly.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="https://housedesign.vn/images/chi-phi-hop-ly.png" width="65" height="50"></noscript>
                                        <p class="description">
                                            Chi phí hợp lý                                        </p>
                                    </div>
                                </div>
                            </div></div><div class="owl-item active" style="width: 444px; margin-right: 20px;"><div class="item">
                                <div class="reason-item">
                                    <div class="item-box">
                                        <p class="number">05</p>
                                        <img src="https://housedesign.vn/images/dung-tien-do.png" width="65" height="50" data-lazy-src="https://housedesign.vn/images/dung-tien-do.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="https://housedesign.vn/images/dung-tien-do.png" width="65" height="50"></noscript>
                                        <p class="description">
                                            Đúng tiến độ                                        </p>
                                    </div>
                                </div>
                            </div></div><div class="owl-item cloned" style="width: 444px; margin-right: 20px;"><div class="item">
                                <div class="reason-item">
                                    <div class="item-box">
                                        <p class="number">01</p>
                                        <img src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2065%2050'%3E%3C/svg%3E" width="65" height="50" data-lazy-src="https://housedesign.vn/images/dich-vu-khach-hang-tan-tam.png"><noscript><img src="https://housedesign.vn/images/dich-vu-khach-hang-tan-tam.png" width="65" height="50"></noscript>
                                        <p class="description">
                                            Dịch vụ khách hàng tận tâm                                        </p>
                                    </div>
                                </div>
                            </div></div><div class="owl-item cloned" style="width: 444px; margin-right: 20px;"><div class="item">
                                <div class="reason-item">
                                    <div class="item-box">
                                        <p class="number">02</p>
                                        <img src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2065%2050'%3E%3C/svg%3E" width="65" height="50" data-lazy-src="https://housedesign.vn/images/thiet-ke-sang-tao.png"><noscript><img src="https://housedesign.vn/images/thiet-ke-sang-tao.png" width="65" height="50"></noscript>
                                        <p class="description">
                                            Thiết kế sáng tạo, thi công chất lượng                                        </p>
                                    </div>
                                </div>
                            </div></div><div class="owl-item cloned" style="width: 444px; margin-right: 20px;"><div class="item">
                                <div class="reason-item">
                                    <div class="item-box">
                                        <p class="number">03</p>
                                        <img src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2065%2050'%3E%3C/svg%3E" width="65" height="50" data-lazy-src="https://housedesign.vn/images/xuong-san-xuat-rieng.png"><noscript><img src="https://housedesign.vn/images/xuong-san-xuat-rieng.png" width="65" height="50"></noscript>
                                        <p class="description">
                                            Xưởng sản xuất riêng                                        </p>
                                    </div>
                                </div>
                            </div></div></div></div><div class="owl-nav disabled"><button type="button" role="presentation" class="owl-prev"><span aria-label="Previous">‹</span></button><button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button></div><div class="owl-dots"><button role="button" class="owl-dot"><span></span></button><button role="button" class="owl-dot"><span></span></button><button role="button" class="owl-dot"><span></span></button><button role="button" class="owl-dot"><span></span></button><button role="button" class="owl-dot active"><span></span></button></div></div>
            </div>
        </div>
    </div>
</section>
    <!-- END QUY TRINH LAM VIEC -->

    <!-- DOI NGU NHAN SU -->
    <div class="expert_home">
            <div class="background bg_section" style="background-image: url(https://nordic.vn/wp-content/uploads/2023/04/Untitled-20.jpg);"></div><div class="container-fluid">
                <div class="title_home2 white"><h2 class="title">Đội ngũ nhân sự</h2></div><div class="owl-carousel owl-loaded owl-drag">
                    <div class="owl-stage-outer owl-height" style="height: 440px;">
                        <div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1398px;">
                            <div class="owl-item active" style="width: 279.5px;">
                                <div class="item">
                                    <div class="box">
                                        <div class="top">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/vhc2-2-scaled-1.jpg" alt="avata-1" data-src="https://nordic.vn/wp-content/uploads/2022/08/vhc2-2-scaled-1.jpg" class="avata entered litespeed-loaded" data-ll-status="loaded"><div class="info"><div class="sub">PGS.KTS.</div><div class="name">Vũ Hồng Cương</div><div class="regency">Trưởng khoa MTCN ĐHKTHN</div></div>
                                        </div><div class="content">Thiết kế &amp; Sản xuất đồ nội thất là một mảnh đất rộng lớn nhưng đang rất hoang hóa ở Việt Nam. SEMA NORDIC là một trong số ít đơn vị đi đầu trong lĩnh vực này. Tôi thực sự đánh giá cao cách làm việc của  NORDIC. Các ý tưởng thiết kế được tái hiện rất xuất sắc.</div>
                                    </div>
                                </div>
                            </div><div class="owl-item active" style="width: 279.5px;">
                                <div class="item">
                                    <div class="box">
                                        <div class="top">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/nhm-1-scaled-1.jpg" alt="avata-2" data-src="https://nordic.vn/wp-content/uploads/2022/08/nhm-1-scaled-1.jpg" class="avata entered litespeed-loaded" data-ll-status="loaded"><div class="info"><div class="sub">KTS.</div><div class="name">Nguyễn Hoàng Mạnh</div><div class="regency">MIA Design Studio</div></div>
                                        </div><div class="content">Các sản phẩm mới của  NORDIC hiện đại thích ứng rộng rãi cho lối sống trẻ trung cá tính và rất phù hợp với mọi không gian sống,nhất là giải quyết cho những không gian ở nhỏ! Chúc mừng các tác giả! Hy vọng  NORDIC sẽ ngày càng phát triển lớn mạnh hơn!</div>
                                    </div>
                                </div>
                            </div><div class="owl-item active" style="width: 279.5px;">
                                <div class="item">
                                    <div class="box">
                                        <div class="top">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/hd-1-scaled-1.jpg" alt="avata-3" data-src="https://nordic.vn/wp-content/uploads/2022/08/hd-1-scaled-1.jpg" class="avata entered litespeed-loaded" data-ll-status="loaded"><div class="info"><div class="sub">KTS.</div><div class="name">Hưng Đào</div><div class="regency">AHL Architects</div></div>
                                        </div><div class="content">Tôi thích cách đi của tập thể SEMA đang thực hiện bởi nó được bắt đầu từ những thứ rất cơ bản, kỹ càng trên phác thảo và sản phẩm được hiện thực hóa một cách chỉn chu, bài bản. Các sản phẩm của  NORDIC thực sự cho tôi cách nhìn mới mẻ về nội thất Việt Nam.</div>
                                    </div>
                                </div>
                            </div><div class="owl-item active" style="width: 279.5px;">
                                <div class="item">
                                    <div class="box">
                                        <div class="top">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/vdh-2-scaled-1.jpg" alt="avata-4" data-src="https://nordic.vn/wp-content/uploads/2022/08/vdh-2-scaled-1.jpg" class="avata entered litespeed-loaded" data-ll-status="loaded"><div class="info"><div class="sub">KTS.</div><div class="name">Vương Đạo Hoàng</div><div class="regency">Tạp chí Kiến Việt</div></div>
                                        </div><div class="content">The Lover là BST mang phong cách Bắc Âu vào thiết kế, nhưng lại có những chi tiết tỉ mỉ, dụng ý thiết kế mang màu sắc Á Đông. Sự kết hợp này đem lại khả năng ứng dụng vô cùng linh hoạt và độc đáo trong bối cảnh nội thất ở Việt Nam hiện nay.</div>
                                    </div>
                                </div>
                            </div><div class="owl-item" style="width: 279.5px;">
                                <div class="item">
                                    <div class="box">
                                        <div class="top">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/chuyen-gia-nu.jpg" alt="avata-5" data-src="https://nordic.vn/wp-content/uploads/2022/10/chuyen-gia-nu.jpg" class="avata entered litespeed-loaded" data-ll-status="loaded"><div class="info"><div class="sub">MC</div><div class="name">Xuân Quỳnh</div><div class="regency"> VTV3</div></div>
                                        </div><div class="content">Biết đến Queen Chair sau lần đọc Heritage rồi trở thành khách hàng của  NORDIC, Xuân Quỳnh thật sự bị ấn tượng bởi cách mà NORDIC  làm việc. Các sản phẩm được thiết kế tỉ mỉ trong từng đường nét, sự có tâm trong tư vấn khiến Quỳnh cảm thấy hài lòng.</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><div class="owl-nav"><button type="button" role="presentation" class="owl-prev disabled"><span aria-label="Previous">‹</span></button><button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button></div><div class="owl-dots disabled"></div>
                </div>
            </div>
        </div>
    <!-- END DOI NGU NHAN SU -->
     <!-- PHONG CACH SONG -->
   <%-- <div class="style_home">
            <div class="container">
                <div class="inner">
                    <div class="inner_left">
                        <div class="title">
                            <div class="title_main"><h2>Phong cách<span class="sub">sống</span></h2></div><div class="img">
                                <img data-lazyloaded="1" src="App_Themes/house/img/Untitled-19.png" data-src="https://nordic.vn/wp-content/uploads/2022/08/Untitled-19.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                            </div>
                        </div><div class="text">Để đứng vững trong thị trường, NORDIC nhận thức được giá trị thực của một thương hiệu nội thất cao cấp phải đến từ tầm nhìn cốt lõi trong mục đích sản xuất cũng như những chuẩn mực riêng biệt trong thiết kế của đội ngũ sáng tạo. Chính vì thế, những tiêu chí thiết kế được sinh ra như những kim chỉ nam, hướng chất lượng sản phẩm của NORDIC đến sự hữu dụng, phù hợp với đối tượng phục vụ.</div>
                        <a href="https://nordic.vn/nordic-24h/" class="link">Xem thêm</a>
                    </div><div class="inner_right">
                        <div class="img img1">
                            <img data-lazyloaded="1" src="App_Themes/house/img/Untitled-19.png" data-src="https://nordic.vn/wp-content/uploads/2022/08/Untitled-19.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                        </div><div class="img">
                            <img data-lazyloaded="1" src="App_Themes/house/img/Untitled-17.png" data-src="https://nordic.vn/wp-content/uploads/2022/08/Untitled-17.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                        </div><div class="img">
                            <img data-lazyloaded="1" src="App_Themes/house/img/Untitled-16.png" data-src="https://nordic.vn/wp-content/uploads/2022/08/Untitled-16.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
    <!-- END PHONG CACH SONG -->
    <div class="partner_home">
            <div class="container-fluid">
                <div class="title_home2 white"><h2 class="title">Đối tác</h2></div><div class="block_slider">
                    <div class="owl-carousel owl-loaded owl-drag">
                        <div class="owl-stage-outer">
                            <div class="owl-stage" style="transform: translate3d(-1148px, 0px, 0px); transition: all 0s ease 0s; width: 3444px;">
                                <div class="owl-item cloned" style="width: 164px;">
                                    <div class="item_slider">
                                        <div class="item">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/Logo-HD-Mon.png" data-src="https://nordic.vn/wp-content/uploads/2022/08/Logo-HD-Mon.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                        </div>
                                    </div>
                                </div><div class="owl-item cloned" style="width: 164px;">
                                    <div class="item_slider">
                                        <div class="item">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/Logo-Kien-Viet.png" data-src="https://nordic.vn/wp-content/uploads/2022/08/Logo-Kien-Viet.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                        </div>
                                    </div>
                                </div><div class="owl-item cloned" style="width: 164px;">
                                    <div class="item_slider">
                                        <div class="item">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/Logo-Minh-Long.png" data-src="https://nordic.vn/wp-content/uploads/2022/08/Logo-Minh-Long.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                        </div>
                                    </div>
                                </div><div class="owl-item cloned" style="width: 164px;">
                                    <div class="item_slider">
                                        <div class="item">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/logo-Luxxy-VN-01.png" data-src="https://nordic.vn/wp-content/uploads/2022/09/logo-Luxxy-VN-01.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                        </div>
                                    </div>
                                </div><div class="owl-item cloned" style="width: 164px;">
                                    <div class="item_slider">
                                        <div class="item">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/logo-khoa-noi-that.png" data-src="https://nordic.vn/wp-content/uploads/2023/03/logo-khoa-noi-that.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                        </div>
                                    </div>
                                </div><div class="owl-item cloned" style="width: 164px;">
                                    <div class="item_slider">
                                        <div class="item">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/logo-chi-hoi-kien-truc-1.png" data-src="https://nordic.vn/wp-content/uploads/2023/03/logo-chi-hoi-kien-truc-1.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                        </div>
                                    </div>
                                </div><div class="owl-item cloned" style="width: 164px;">
                                    <div class="item_slider">
                                        <div class="item">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/logo-vietcg-den-1.png" data-src="https://nordic.vn/wp-content/uploads/2023/03/logo-vietcg-den-1.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                        </div>
                                    </div>
                                </div><div class="owl-item active" style="width: 164px;">
                                    <div class="item_slider">
                                        <div class="item">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/Logo-HD-Mon.png" data-src="https://nordic.vn/wp-content/uploads/2022/08/Logo-HD-Mon.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                        </div>
                                    </div>
                                </div><div class="owl-item active" style="width: 164px;">
                                    <div class="item_slider">
                                        <div class="item">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/Logo-Kien-Viet.png" data-src="https://nordic.vn/wp-content/uploads/2022/08/Logo-Kien-Viet.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                        </div>
                                    </div>
                                </div><div class="owl-item active" style="width: 164px;">
                                    <div class="item_slider">
                                        <div class="item">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/Logo-Minh-Long.png" data-src="https://nordic.vn/wp-content/uploads/2022/08/Logo-Minh-Long.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                        </div>
                                    </div>
                                </div><div class="owl-item active" style="width: 164px;">
                                    <div class="item_slider">
                                        <div class="item">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/logo-Luxxy-VN-01.png" data-src="https://nordic.vn/wp-content/uploads/2022/09/logo-Luxxy-VN-01.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                        </div>
                                    </div>
                                </div><div class="owl-item active" style="width: 164px;">
                                    <div class="item_slider">
                                        <div class="item">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/logo-khoa-noi-that.png" data-src="https://nordic.vn/wp-content/uploads/2023/03/logo-khoa-noi-that.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                        </div>
                                    </div>
                                </div><div class="owl-item active" style="width: 164px;">
                                    <div class="item_slider">
                                        <div class="item">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/logo-chi-hoi-kien-truc-1.png" data-src="https://nordic.vn/wp-content/uploads/2023/03/logo-chi-hoi-kien-truc-1.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                        </div>
                                    </div>
                                </div><div class="owl-item active" style="width: 164px;">
                                    <div class="item_slider">
                                        <div class="item">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/logo-vietcg-den-1.png" data-src="https://nordic.vn/wp-content/uploads/2023/03/logo-vietcg-den-1.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                        </div>
                                    </div>
                                </div><div class="owl-item cloned" style="width: 164px;">
                                    <div class="item_slider">
                                        <div class="item">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/Logo-HD-Mon.png" data-src="https://nordic.vn/wp-content/uploads/2022/08/Logo-HD-Mon.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                        </div>
                                    </div>
                                </div><div class="owl-item cloned" style="width: 164px;">
                                    <div class="item_slider">
                                        <div class="item">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/Logo-Kien-Viet.png" data-src="https://nordic.vn/wp-content/uploads/2022/08/Logo-Kien-Viet.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                        </div>
                                    </div>
                                </div><div class="owl-item cloned" style="width: 164px;">
                                    <div class="item_slider">
                                        <div class="item">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/Logo-Minh-Long.png" data-src="https://nordic.vn/wp-content/uploads/2022/08/Logo-Minh-Long.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                        </div>
                                    </div>
                                </div><div class="owl-item cloned" style="width: 164px;">
                                    <div class="item_slider">
                                        <div class="item">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/logo-Luxxy-VN-01.png" data-src="https://nordic.vn/wp-content/uploads/2022/09/logo-Luxxy-VN-01.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                        </div>
                                    </div>
                                </div><div class="owl-item cloned" style="width: 164px;">
                                    <div class="item_slider">
                                        <div class="item">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/logo-khoa-noi-that.png" data-src="https://nordic.vn/wp-content/uploads/2023/03/logo-khoa-noi-that.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                        </div>
                                    </div>
                                </div><div class="owl-item cloned" style="width: 164px;">
                                    <div class="item_slider">
                                        <div class="item">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/logo-chi-hoi-kien-truc-1.png" data-src="https://nordic.vn/wp-content/uploads/2023/03/logo-chi-hoi-kien-truc-1.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                        </div>
                                    </div>
                                </div><div class="owl-item cloned" style="width: 164px;">
                                    <div class="item_slider">
                                        <div class="item">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/logo-vietcg-den-1.png" data-src="https://nordic.vn/wp-content/uploads/2023/03/logo-vietcg-den-1.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><div class="owl-nav disabled"><button type="button" role="presentation" class="owl-prev"><span aria-label="Previous">‹</span></button><button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button></div><div class="owl-dots disabled"></div>
                    </div>
                </div>
            </div>
        </div>
    
    <div class="contact_home">
            <div class="container-fluid">
                <div class="inner">
                     <div class="maps">
                        <%--<iframe data-lazyloaded="1" src="App_Themes/house/img/embed.html" data-src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d477025.01140348776!2d105.03252617422083!3d20.922057694872876!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab2e2881d2b7%3A0x827a4e784e5a3430!2zTuG7mWkgdGjhuqV0IELhuq9jIMOCdSAtIE5PUkRJQw!5e0!3m2!1svi!2s!4v1660706734086!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" data-ll-status="loaded" class="entered litespeed-loaded"></iframe>--%>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.7373199253925!2d105.81335937587882!3d20.963061490030565!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ad1d40403a31%3A0xa24dec434c68bced!2zMTQgTmfDtSA4MTYgxJDGsOG7nW5nIEtpbSBHaWFuZywgVGhhbmggTGnhu4d0LCBUaGFuaCBUcsOsLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1682053104686!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                    <div class="form">
                        <div class="wpcf7 js" id="wpcf7-f5-o1" lang="vi" dir="ltr">
                            <div class="screen-reader-response"><p role="status" aria-live="polite" aria-atomic="true"></p><ul></ul></div><form action="https://nordic.vn/#wpcf7-f5-o1" method="post" class="wpcf7-form init" aria-label="Form liên hệ" novalidate="novalidate" data-status="init">
                                <div style="display: none;">
                                    <input type="hidden" name="_wpcf7" value="5">
                                    <input type="hidden" name="_wpcf7_version" value="5.7.5.1">
                                    <input type="hidden" name="_wpcf7_locale" value="vi">
                                    <input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f5-o1">
                                    <input type="hidden" name="_wpcf7_container_post" value="0">
                                    <input type="hidden" name="_wpcf7_posted_data_hash" value="">
                                </div><div class="form-title">
                                    Liên hệ với chúng tôi
                                </div><div class="form-group">
                                    <span class="wpcf7-form-control-wrap" data-name="text-948"><input size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required input" aria-required="true" aria-invalid="false" placeholder="Họ và tên" value="" type="text" name="text-948"></span>
                                </div><div class="form-group">
                                    <span class="wpcf7-form-control-wrap" data-name="email-460"><input size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email input" aria-required="true" aria-invalid="false" placeholder="Email" value="" type="email" name="email-460"></span>
                                </div><div class="form-group">
                                    <span class="wpcf7-form-control-wrap" data-name="number-647"><input class="wpcf7-form-control wpcf7-number wpcf7-validates-as-required wpcf7-validates-as-number input" aria-required="true" aria-invalid="false" placeholder="Số điện thoại" value="" type="number" name="number-647"></span>
                                </div><div class="form-group">
                                    <span class="wpcf7-form-control-wrap" data-name="textarea-413"><textarea cols="40" rows="4" class="wpcf7-form-control wpcf7-textarea input" aria-invalid="false" placeholder="Lời nhắn" name="textarea-413"></textarea></span>
                                </div><div class="form-button">
                                    <input class="wpcf7-form-control has-spinner wpcf7-submit input" type="submit" value="Đăng ký ngay"><span class="wpcf7-spinner"></span>
                                </div><div class="wpcf7-response-output" aria-hidden="true"></div>
                            </form>
                        </div>
                    </div>
                   
                    
                </div>
            </div>
        </div>
    <%--</main>--%>
<!-- PAGEBODY -->
