<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Home.ascx.cs" Inherits="Web.Control.nmn.Home" %>
<%@ Import Namespace="Core.Utils" %>
<%--<%@ Register Src="~/Control/nmn/SlideShowHome.ascx" TagName="slideShowHome" TagPrefix="uc2" %>--%>
<%@ Register Src="~/Control/nmn/ProjectTop.ascx" TagName="projectTop" TagPrefix="uc1" %>
<%@ Register Src="~/Control/nmn/StyleTop.ascx" TagName="styleTop" TagPrefix="uc2" %>
<%@ Register Src="~/Control/nmn/ReservationForm.ascx" TagName="reservationForm" TagPrefix="uc3" %>

<!-- PAGEBODY -->
<%--<main id="main">--%>
<%--<div id="page-body" class="">--%>
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
                </div>
                <div class="owl-item" style="width: 1218px;">
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
                </div>
                <div class="owl-item" style="width: 1218px;">
                    <div class="item img">

                        <img width="2048" height="1365" src="App_Themes/house/img/slide3.jpg" alt="" data-lazy-src="App_Themes/house/img/slide3.jpg" data-ll-status="loaded" class="entered lazyloaded">
                        <%--<div class="carousel-status">
                                    <div class="container">
                                        <div class="flex"><i class="fa fa-angle-left"></i><div class="carousel-current-slide">01</div><div class="slash">|</div><div class="carousel-total-slides">02</div><i class="fa fa-angle-right"></i></div></div></div>--%>
                    </div>
                </div>
            </div>
        </div>
        <div class="owl-nav">
            <button type="button" role="presentation" class="owl-prev"><span aria-label="Previous">‹</span></button>
            <button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button>
        </div>
        <div class="owl-dots">
            <button role="button" class="owl-dot"><span></span></button>
            <button role="button" class="owl-dot active"><span></span></button>
        </div>
    </div>
</div>
<div class="about_home" style="background-color: #f2efe9;">
    <div class="container-fluid">
        <!-- class="container"-->
        <div class="flex">
            <div class="inner_left center">
                <h2 class="title">
                    <span class="main">Nội thất</span>
                    <span class="tit">Bắc Âu</span>
                    <span class="sub">cao cấp cho người Việt</span>
                </h2>
                <div class="text">Chúng tôi cam kết, tất cả sản phẩm của ARBARO được độc quyền thiết kế kiểu dáng bởi những Designer tài năng và được đăng ký sở hữu trí tuệ tại cục SHTT Việt Nam. ARBARO mang tới chính sách hậu mãi vượt trội. Tỉ mỉ trong từng chi tiết nhỏ nhất, tất cả sản phẩm của ARBARO được hoàn thiện với chất lượng cao, tương đương với tiêu chuẩn Châu Âu, mang lại cho khách hàng những sản phẩm vượt trội.</div>
            </div>
            <div class="inner_right">
                <div class="video">
                    <%--<iframe data-lazyloaded="1" width="560" height="315" src="https://www.youtube.com/embed/l6QwtZsFuew?autoplay=1&amp;mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen name="youtube embed" data-ll-status="loaded" class="entered litespeed-loaded"></iframe>--%>
                    <video width="320" height="240" autoplay muted controls loop>
                        <source src="../../App_Themes/house/video/Arbaro.mp4" type="video/mp4">
                    </video>
                </div>
            </div>
        </div>
    </div>
</div>


<!--  DU AN TOP -->
<uc1:projectTop ID="ProjectTop1" runat="server" />
<!-- END DU AN TOP -->
<!-- LY DO LUA CHON -->
<div class="criteria_home">
    <div class="background" style="background-image: url(https://nordic.vn/wp-content/uploads/2022/08/Untitled-11.png);"></div>
    <div class="container-fluid">
        <!--class="container-fluid"-->
        <h2 class="title"><span></span>LÝ DO LỰA CHỌN</h2>
        <div class="list">
            <div class="item">
                <div class="inner">
                    <div class="number">
                        <span class="num">1</span>
                        <span class="text">Tư vấn
                            <br>
                            tận tâm</span>
                        <span class="bgitem"><span class="num2">1</span></span>
                    </div>
                    <div class="box">
                        <div class="text">Với đội ngũ kiến trúc sư kinh nghiệm, nhiệt huyết sẵn sàng giải đáp mọi thắc mắc của khách hàng về công năng thẩm mỹ, hay phong thủy cũng như đưa ra những ý kiến tư vấn tận tâm, bất kể ngày đêm, hỗ trợ 24/7</div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="inner">
                    <div class="number">
                        <span class="num">2</span>
                        <span class="text">Thiết kế
                            <br>
                            Giá trị</span>
                        <span class="bgitem"><span class="num2">2</span></span>
                    </div>
                    <div class="box">
                        <div class="text">Với phương châm bản thiết kế không chỉ đơn giản là đẹp về mặt hình ảnh mà còn mang lại giá trị thực sự cho khách hàng, đem lại trải nghiệm tốt nhất về không gian, thỏa mãn sở thích, thói quen, lối sống của gia chủ, đem đến một không gian nội thất trong mơ đích thực.</div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="inner">
                    <div class="number">
                        <span class="num">3</span>
                        <span class="text">Tối ưu
                            <br>
                            chi phí</span>
                        <span class="bgitem"><span class="num2">3</span></span>
                    </div>
                    <div class="box">
                        <div class="text">Một không gian nội thất đẹp không nhất thiết phải toàn vật liệu đắt tiền, mà nó phải hài hòa với sở thích, gu thẩm mỹ của gia chủ, biết chọn những vật liệu cao cấp nên làm điểm nhấn chứ không nên lạm dụng, yếu tố đó sẽ tạo nên một không gian đẹp, có chiều sâu mà vẫn tiết kiệm chi phí cho gia chủ.</div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="inner">
                    <div class="number">
                        <span class="num">4</span>
                        <span class="text">Thi công
                            <br>
                            Thần tốc</span>
                        <span class="bgitem"><span class="num2">4</span></span>
                    </div>
                    <div class="box">
                        <div class="text">Sở hữu cho mình xưởng sản xuất 1000m2 với máy móc công nghệ CNC hiện đại, và đội ngũ thợ lành nghề chuyên nghiệp, chúng tôi cam kết chất lượng sản phẩm khi thi công với độ chính xác từng mm, thỏa mãn những khách hàng khó tính nhất. Đặc biệt với tiêu chí thời gian thi công đảm bảo nhanh nhất thị trường chỉ từ 7 ngày từ lúc kí hợp đồng thi công</div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="inner">
                    <div class="number">
                        <span class="num">5</span>
                        <span class="text">Hỗ trợ
                            <br>
                            trọn đời</span>
                        <span class="bgitem"><span class="num2">5</span></span>
                    </div>
                    <div class="box">
                        <div class="text">Đối với chúng tôi, mỗi khách hàng như một người bạn tri kỉ. Arbaro sẽ luôn đồng hành cùng bạn trong quá trình kiến tạo và hoàn thiện không gian sống cho ngôi nhà của bạn trong hiện tại và tương lai.</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END LY DO LUA CHON -- >
<!-- CAC PHONG CACH -->
<uc2:styleTop ID="StyleTop1" runat="server" />
<!-- END CAC PHONG CACH -->

<!-- QUY TRINH LAM VIEC -->
<section id="reason">

    <div class="reason-header">
        <h2 class="mbr-section-title align-center mbr-fonts-style mbr-bold display-2">Quy trình làm việc ARBARO</h2>
    </div>

    <div class="container">
        <div class="reason-content-desktop">
            <div style="padding-left:30px; padding-right:30px">
                <img src="../../App_Themes/house/img/QuyTrinhArbaro.png" width="700" height="220" alt="" data-lazy-src="../../App_Themes/house/img/QuyTrinhArbaro.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="../../App_Themes/house/img/QuyTrinhArbaro.png" width="700" height="220" alt=""></noscript>
            </div>
        </div>
        <div class="reason-content-mobile">
            <div class="reason-mobile-slide">
                <div class="owl-carousel owl-theme reason-carousel owl-loaded owl-drag" id="reason-carousel">
                    <div class="owl-stage-outer">
                        <div class="owl-stage" style="transform: translate3d(-2660px, 0px, 0px); transition: all 0.25s ease 0s; width: 4180px;">
                            <div class="owl-item active" style="width: 360px; margin-right: 20px;">
                                <div class="item">
                                    <div class="reason-item">
                                        <div class="item-box">
                                            <p class="number">01</p>
                                            <img src="https://housedesign.vn/images/dich-vu-khach-hang-tan-tam.png" width="65" height="50" data-lazy-src="https://housedesign.vn/images/dich-vu-khach-hang-tan-tam.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="https://housedesign.vn/images/dich-vu-khach-hang-tan-tam.png" width="65" height="50"></noscript>
                                            <p class="description">
                                                Khảo sát và tư vấn tại công trình                                       
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-item" style="width: 360px; margin-right: 20px;">
                                <div class="item">
                                    <div class="reason-item">
                                        <div class="item-box">
                                            <p class="number">02</p>
                                            <img src="https://housedesign.vn/images/thiet-ke-sang-tao.png" width="65" height="50" data-lazy-src="https://housedesign.vn/images/thiet-ke-sang-tao.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="https://housedesign.vn/images/thiet-ke-sang-tao.png" width="65" height="50"></noscript>
                                            <p class="description">
                                                Lên phương án thiết kế chỉ từ 3 ngày                                       
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-item" style="width: 360px; margin-right: 20px;">
                                <div class="item">
                                    <div class="reason-item">
                                        <div class="item-box">
                                            <p class="number">03</p>
                                            <img src="https://housedesign.vn/images/xuong-san-xuat-rieng.png" width="65" height="50" data-lazy-src="https://housedesign.vn/images/xuong-san-xuat-rieng.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="https://housedesign.vn/images/xuong-san-xuat-rieng.png" width="65" height="50"></noscript>
                                            <p class="description">
                                                Lên dự toán và tối ưu chi phí                                       
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-item cloned" style="width: 360px; margin-right: 20px;">
                                <div class="item">
                                    <div class="reason-item">
                                        <div class="item-box">
                                            <p class="number">04</p>
                                            <img src="https://housedesign.vn/images/chi-phi-hop-ly.png" width="65" height="50" data-lazy-src="https://housedesign.vn/images/chi-phi-hop-ly.png"><noscript><img src="https://housedesign.vn/images/chi-phi-hop-ly.png" width="65" height="50"></noscript>
                                            <p class="description">
                                                Thi công chỉ từ 7 ngày                                       
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-item cloned" style="width: 360px; margin-right: 20px;">
                                <div class="item">
                                    <div class="reason-item">
                                        <div class="item-box">
                                            <p class="number">05</p>
                                            <img src="https://housedesign.vn/images/dung-tien-do.png" width="65" height="50" data-lazy-src="https://housedesign.vn/images/dung-tien-do.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="https://housedesign.vn/images/dung-tien-do.png" width="65" height="50"></noscript>
                                            <p class="description">
                                                Bảo hành 1 đổi 1 và bảo trì trọn đời                                        
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="owl-item" style="width: 360px; margin-right: 20px;">
                                <div class="item">
                                    <div class="reason-item">
                                        <div class="item-box">
                                            <p class="number">01</p>
                                            <img src="https://housedesign.vn/images/dich-vu-khach-hang-tan-tam.png" width="65" height="50" data-lazy-src="https://housedesign.vn/images/dich-vu-khach-hang-tan-tam.png"><noscript><img src="https://housedesign.vn/images/dich-vu-khach-hang-tan-tam.png" width="65" height="50"></noscript>
                                            <p class="description">
                                                Khảo sát và tư vấn tại công trình                                       
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-item" style="width: 360px; margin-right: 20px;">
                                <div class="item">
                                    <div class="reason-item">
                                        <div class="item-box">
                                            <p class="number">02</p>
                                            <img src="https://housedesign.vn/images/thiet-ke-sang-tao.png" width="65" height="50" data-lazy-src="https://housedesign.vn/images/thiet-ke-sang-tao.png"><noscript><img src="https://housedesign.vn/images/thiet-ke-sang-tao.png" width="65" height="50"></noscript>
                                            <p class="description">
                                                Lên phương án thiết kế chỉ từ 3 ngày                                      
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-item" style="width: 360px; margin-right: 20px;">
                                <div class="item">
                                    <div class="reason-item">
                                        <div class="item-box">
                                            <p class="number">03</p>
                                            <img src="https://housedesign.vn/images/xuong-san-xuat-rieng.png" width="65" height="50" data-lazy-src="https://housedesign.vn/images/xuong-san-xuat-rieng.png"><noscript><img src="https://housedesign.vn/images/xuong-san-xuat-rieng.png" width="65" height="50"></noscript>
                                            <p class="description">
                                                Lên dự toán và tối ưu chi phí                                       
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-item" style="width: 360px; margin-right: 20px;">
                                <div class="item">
                                    <div class="reason-item">
                                        <div class="item-box">
                                            <p class="number">04</p>
                                            <img src="https://housedesign.vn/images/chi-phi-hop-ly.png" width="65" height="50" data-lazy-src="https://housedesign.vn/images/chi-phi-hop-ly.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="https://housedesign.vn/images/chi-phi-hop-ly.png" width="65" height="50"></noscript>
                                            <p class="description">
                                                Thi công chỉ từ 7 ngày                                       
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-item" style="width: 360px; margin-right: 20px;">
                                <div class="item">
                                    <div class="reason-item">
                                        <div class="item-box">
                                            <p class="number">05</p>
                                            <img src="https://housedesign.vn/images/dung-tien-do.png" width="65" height="50" data-lazy-src="https://housedesign.vn/images/dung-tien-do.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="https://housedesign.vn/images/dung-tien-do.png" width="65" height="50"></noscript>
                                            <p class="description">
                                                Bảo hành 1 đổi 1 và bảo trì trọn đời                                       
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="owl-nav">
                        <button type="button" role="presentation" class="owl-prev"><span aria-label="Previous">‹</span></button>
                        <button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button>
                    </div>
                    <div class="owl-dots">
                        <button role="button" class="owl-dot"><span></span></button>
                        <button role="button" class="owl-dot"><span></span></button>
                        <button role="button" class="owl-dot"><span></span></button>
                        <button role="button" class="owl-dot"><span></span></button>
                        <button role="button" class="owl-dot active"><span></span></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- END QUY TRINH LAM VIEC -->

<!-- DOI NGU NHAN SU -->
<div class="expert_home">
    <div class="background bg_section" style="background-image: url(https://nordic.vn/wp-content/uploads/2023/04/Untitled-20.jpg);"></div>
    <div class="container-fluid">
        <!-- class="container-fluid" -->
        <div class="title_home2 white">
            <h2 class="title white">Đội ngũ nhân sự</h2>
        </div>
        <div class="owl-carousel owl-loaded owl-drag">
            <div class="owl-stage-outer owl-height" style="height: 440px;">
                <div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1398px;">
                    <div class="owl-item active" style="width: 279.5px;">
                        <div class="item">
                            <div class="box">
                                <div class="top">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/vhc2-2-scaled-1.jpg" alt="avata-1" data-src="https://nordic.vn/wp-content/uploads/2022/08/vhc2-2-scaled-1.jpg" class="avata entered litespeed-loaded" data-ll-status="loaded"><div class="info">
                                        <div class="sub">PGS.KTS.</div>
                                        <div class="name">Vũ Hồng Cương</div>
                                        <div class="regency">Trưởng khoa MTCN ĐHKTHN</div>
                                    </div>
                                </div>
                                <div class="content">Thiết kế &amp; Sản xuất đồ nội thất là một mảnh đất rộng lớn nhưng đang rất hoang hóa ở Việt Nam. SEMA ARBARO là một trong số ít đơn vị đi đầu trong lĩnh vực này. Tôi thực sự đánh giá cao cách làm việc của  ARBARO. Các ý tưởng thiết kế được tái hiện rất xuất sắc.</div>
                            </div>
                        </div>
                    </div>
                    <div class="owl-item active" style="width: 279.5px;">
                        <div class="item">
                            <div class="box">
                                <div class="top">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/nhm-1-scaled-1.jpg" alt="avata-2" data-src="https://nordic.vn/wp-content/uploads/2022/08/nhm-1-scaled-1.jpg" class="avata entered litespeed-loaded" data-ll-status="loaded"><div class="info">
                                        <div class="sub">KTS.</div>
                                        <div class="name">Nguyễn Hoàng Mạnh</div>
                                        <div class="regency">MIA Design Studio</div>
                                    </div>
                                </div>
                                <div class="content">Các sản phẩm mới của  ARBARO hiện đại thích ứng rộng rãi cho lối sống trẻ trung cá tính và rất phù hợp với mọi không gian sống,nhất là giải quyết cho những không gian ở nhỏ! Chúc mừng các tác giả! Hy vọng  ARBARO sẽ ngày càng phát triển lớn mạnh hơn!</div>
                            </div>
                        </div>
                    </div>
                    <div class="owl-item active" style="width: 279.5px;">
                        <div class="item">
                            <div class="box">
                                <div class="top">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/hd-1-scaled-1.jpg" alt="avata-3" data-src="https://nordic.vn/wp-content/uploads/2022/08/hd-1-scaled-1.jpg" class="avata entered litespeed-loaded" data-ll-status="loaded"><div class="info">
                                        <div class="sub">KTS.</div>
                                        <div class="name">Hưng Đào</div>
                                        <div class="regency">AHL Architects</div>
                                    </div>
                                </div>
                                <div class="content">Tôi thích cách đi của tập thể SEMA đang thực hiện bởi nó được bắt đầu từ những thứ rất cơ bản, kỹ càng trên phác thảo và sản phẩm được hiện thực hóa một cách chỉn chu, bài bản. Các sản phẩm của  ARBARO thực sự cho tôi cách nhìn mới mẻ về nội thất Việt Nam.</div>
                            </div>
                        </div>
                    </div>
                    <div class="owl-item active" style="width: 279.5px;">
                        <div class="item">
                            <div class="box">
                                <div class="top">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/vdh-2-scaled-1.jpg" alt="avata-4" data-src="https://nordic.vn/wp-content/uploads/2022/08/vdh-2-scaled-1.jpg" class="avata entered litespeed-loaded" data-ll-status="loaded"><div class="info">
                                        <div class="sub">KTS.</div>
                                        <div class="name">Vương Đạo Hoàng</div>
                                        <div class="regency">Tạp chí Kiến Việt</div>
                                    </div>
                                </div>
                                <div class="content">The Lover là BST mang phong cách Bắc Âu vào thiết kế, nhưng lại có những chi tiết tỉ mỉ, dụng ý thiết kế mang màu sắc Á Đông. Sự kết hợp này đem lại khả năng ứng dụng vô cùng linh hoạt và độc đáo trong bối cảnh nội thất ở Việt Nam hiện nay.</div>
                            </div>
                        </div>
                    </div>
                    <div class="owl-item" style="width: 279.5px;">
                        <div class="item">
                            <div class="box">
                                <div class="top">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/chuyen-gia-nu.jpg" alt="avata-5" data-src="https://nordic.vn/wp-content/uploads/2022/10/chuyen-gia-nu.jpg" class="avata entered litespeed-loaded" data-ll-status="loaded"><div class="info">
                                        <div class="sub">MC</div>
                                        <div class="name">Xuân Quỳnh</div>
                                        <div class="regency">VTV3</div>
                                    </div>
                                </div>
                                <div class="content">Biết đến Queen Chair sau lần đọc Heritage rồi trở thành khách hàng của  ARBARO, Xuân Quỳnh thật sự bị ấn tượng bởi cách mà ARBARO  làm việc. Các sản phẩm được thiết kế tỉ mỉ trong từng đường nét, sự có tâm trong tư vấn khiến Quỳnh cảm thấy hài lòng.</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="owl-nav">
                <button type="button" role="presentation" class="owl-prev disabled"><span aria-label="Previous">‹</span></button>
                <button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button>
            </div>
            <div class="owl-dots disabled"></div>
        </div>
    </div>
</div>
<!-- END DOI NGU NHAN SU -->

<div class="partner_home">
    <div class="container-fluid">
        <!--  class="container-fluid" -->
        <div class="title_home2 white">
            <h2 class="title white">Đối tác</h2>
        </div>
        <div class="block_slider">
            <div class="owl-carousel owl-loaded owl-drag">
                <div class="owl-stage-outer">
                    <div class="owl-stage" style="transform: translate3d(-1148px, 0px, 0px); transition: all 0s ease 0s; width: 3444px;">
                        <div class="owl-item cloned" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/Logo-HD-Mon.png" data-src="https://nordic.vn/wp-content/uploads/2022/08/Logo-HD-Mon.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item cloned" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/Logo-Kien-Viet.png" data-src="https://nordic.vn/wp-content/uploads/2022/08/Logo-Kien-Viet.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item cloned" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/Logo-Minh-Long.png" data-src="https://nordic.vn/wp-content/uploads/2022/08/Logo-Minh-Long.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item cloned" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/logo-Luxxy-VN-01.png" data-src="https://nordic.vn/wp-content/uploads/2022/09/logo-Luxxy-VN-01.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item cloned" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/logo-khoa-noi-that.png" data-src="https://nordic.vn/wp-content/uploads/2023/03/logo-khoa-noi-that.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item cloned" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/logo-chi-hoi-kien-truc-1.png" data-src="https://nordic.vn/wp-content/uploads/2023/03/logo-chi-hoi-kien-truc-1.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item cloned" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/logo-vietcg-den-1.png" data-src="https://nordic.vn/wp-content/uploads/2023/03/logo-vietcg-den-1.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item active" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/Logo-HD-Mon.png" data-src="https://nordic.vn/wp-content/uploads/2022/08/Logo-HD-Mon.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item active" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/Logo-Kien-Viet.png" data-src="https://nordic.vn/wp-content/uploads/2022/08/Logo-Kien-Viet.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item active" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/Logo-Minh-Long.png" data-src="https://nordic.vn/wp-content/uploads/2022/08/Logo-Minh-Long.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item active" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/logo-Luxxy-VN-01.png" data-src="https://nordic.vn/wp-content/uploads/2022/09/logo-Luxxy-VN-01.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item active" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/logo-khoa-noi-that.png" data-src="https://nordic.vn/wp-content/uploads/2023/03/logo-khoa-noi-that.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item active" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/logo-chi-hoi-kien-truc-1.png" data-src="https://nordic.vn/wp-content/uploads/2023/03/logo-chi-hoi-kien-truc-1.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item active" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/logo-vietcg-den-1.png" data-src="https://nordic.vn/wp-content/uploads/2023/03/logo-vietcg-den-1.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item cloned" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/Logo-HD-Mon.png" data-src="https://nordic.vn/wp-content/uploads/2022/08/Logo-HD-Mon.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item cloned" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/Logo-Kien-Viet.png" data-src="https://nordic.vn/wp-content/uploads/2022/08/Logo-Kien-Viet.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item cloned" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/Logo-Minh-Long.png" data-src="https://nordic.vn/wp-content/uploads/2022/08/Logo-Minh-Long.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item cloned" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/logo-Luxxy-VN-01.png" data-src="https://nordic.vn/wp-content/uploads/2022/09/logo-Luxxy-VN-01.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item cloned" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/logo-khoa-noi-that.png" data-src="https://nordic.vn/wp-content/uploads/2023/03/logo-khoa-noi-that.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item cloned" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/logo-chi-hoi-kien-truc-1.png" data-src="https://nordic.vn/wp-content/uploads/2023/03/logo-chi-hoi-kien-truc-1.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item cloned" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/logo-vietcg-den-1.png" data-src="https://nordic.vn/wp-content/uploads/2023/03/logo-vietcg-den-1.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="owl-nav disabled">
                    <button type="button" role="presentation" class="owl-prev"><span aria-label="Previous">‹</span></button>
                    <button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button>
                </div>
                <div class="owl-dots disabled"></div>
            </div>
        </div>
    </div>
</div>

<!--FORM LIEN HE -->
<uc3:reservationForm ID="ReservationForm1" runat="server" />
<!--END FORM LIEN HE -->

<%--</main>--%>
<!-- PAGEBODY -->
