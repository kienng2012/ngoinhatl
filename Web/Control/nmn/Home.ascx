<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Home.ascx.cs" Inherits="Web.Control.nmn.Home" %>
<%@ Import Namespace="Core.Utils" %>
<%--<%@ Register Src="~/Control/nmn/SlideShowHome.ascx" TagName="slideShowHome" TagPrefix="uc2" %>--%>
<%@ Register Src="~/Control/nmn/ProjectTop.ascx" TagName="projectTop" TagPrefix="uc1" %>
<%@ Register Src="~/Control/nmn/StyleTop.ascx" TagName="styleTop" TagPrefix="uc2" %>

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
        <div class="container">
            <div class="flex">
                <div class="inner_left center">
                    <h2 class="title">
                        <span class="main">Nội thất</span>
                        <span class="tit">Bắc Âu</span>
                        <span class="sub">cao cấp cho người Việt</span>
                    </h2>
                    <div class="text">Chúng tôi cam kết, tất cả sản phẩm của NORDIC được độc quyền thiết kế kiểu dáng bởi những Designer tài năng và được đăng ký sở hữu trí tuệ tại cục SHTT Việt Nam. NORDIC mang tới chính sách hậu mãi vượt trội. Tỉ mỉ trong từng chi tiết nhỏ nhất, tất cả sản phẩm của NORDIC được hoàn thiện với chất lượng cao, tương đương với tiêu chuẩn Châu Âu, mang lại cho khách hàng những sản phẩm vượt trội.</div>
                </div>
                <div class="inner_right">
                    <div class="video">
                        <iframe data-lazyloaded="1" width="560" height="315" src="https://www.youtube.com/embed/l6QwtZsFuew?autoplay=1&amp;mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen name="youtube embed" data-ll-status="loaded" class="entered litespeed-loaded"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="criteria_home">
        <div class="background" style="background-image: url(https://nordic.vn/wp-content/uploads/2022/08/Untitled-11.png);"></div>
        <div class="container-fluid">
            <h2 class="title"><span></span>LÝ DO LỰA CHỌN</h2>
            <div class="list">
                <div class="item">
                    <div class="inner">
                        <div class="number">
                            <span class="num">1</span>
                            <span class="text">Thói
                            <br>
                                quen</span>
                            <span class="bgitem"><span class="num2">1</span></span>
                        </div>
                        <div class="box">
                            <div class="text">Các thiết kế được Team R&amp;D nghiên cứu một cách tỉ mẩn, kỹ lưỡng dựa trên thói quen sống của người Việt nhằm mang đến trải nghiệm phù hợp nhất.</div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="inner">
                        <div class="number">
                            <span class="num">2</span>
                            <span class="text">Lối
                            <br>
                                sống</span>
                            <span class="bgitem"><span class="num2">2</span></span>
                        </div>
                        <div class="box">
                            <div class="text">Trước khi một sản phẩm được hoàn thiện, Team R&amp;D đã có khoảng thời gian tìm hiểu về lối sống và văn hóa bao đời của người Việt. Từ những chi tiết nhỏ như khoang để đồ để không gian gọn gàng hơn, nâng cao chất lượng sống lên tầm cao mới.</div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="inner">
                        <div class="number">
                            <span class="num">3</span>
                            <span class="text">Sở
                            <br>
                                thích</span>
                            <span class="bgitem"><span class="num2">3</span></span>
                        </div>
                        <div class="box">
                            <div class="text">Mỗi sản phẩm đều được cá nhân hóa theo sở thích của từng cá nhân, về chất liệu, màu sắc,... phù hợp với mọi nhu cầu của khách hàng và thị hiếu của người Việt.</div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="inner">
                        <div class="number">
                            <span class="num">4</span>
                            <span class="text">Khí
                            <br>
                                hậu</span>
                            <span class="bgitem"><span class="num2">4</span></span>
                        </div>
                        <div class="box">
                            <div class="text">Các chất liệu được nghiên cứu và chọn lọc kỹ lưỡng để sản phẩm thích nghi với mọi vùng khí hậu. Chất liệu vải &amp; da được chọn lựa dễ lau chùi, khó bám bẩn, đặc biệt thích nghi tốt với khí hậu nhiệt đới gió mùa ẩm ở Việt Nam.</div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="inner">
                        <div class="number">
                            <span class="num">5</span>
                            <span class="text">Nhân
                            <br>
                                trắc</span>
                            <span class="bgitem"><span class="num2">5</span></span>
                        </div>
                        <div class="box">
                            <div class="text">Mọi sản phẩm nội thất của NORDIC được nghiên cứu dựa trên form người của người Việt. Kích thước phù hợp mang đến trải nghiệm thoải mái, an toàn và tiện dụng cho khách hàng.</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--  DU AN TOP -->
    <uc1:projectTop ID="ProjectTop1" runat="server" />
    <!-- END DU AN TOP -->
    <!-- CAC PHONG CACH -->
    <uc2:styleTop ID="StyleTop1" runat="server" />
    <!-- END CAC PHONG CACH -->

    <!-- QUY TRINH LAM VIEC -->
    <section id="reason">
        <div class="reason-header">
            <h2 class="mbr-section-title align-center mbr-fonts-style mbr-bold display-2">Lý do lựa chọn Housedesign</h2>
        </div>

        <div class="container">
            <div class="reason-content-desktop">
                <img src="https://housedesign.vn/wp-content/uploads/2020/12/Frame-1.png" width="75%" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2020/12/Frame-1.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="https://housedesign.vn/wp-content/uploads/2020/12/Frame-1.png" width="75%" alt=""></noscript>
            </div>
            <div class="reason-content-mobile">
                <div class="reason-mobile-slide">
                    <div class="owl-carousel owl-theme reason-carousel owl-loaded owl-drag" id="reason-carousel">
                        <div class="owl-stage-outer">
                            <div class="owl-stage" style="transform: translate3d(-3248px, 0px, 0px); transition: all 0.25s ease 0s; width: 5104px;">
                                <div class="owl-item cloned" style="width: 444px; margin-right: 20px;">
                                    <div class="item">
                                        <div class="reason-item">
                                            <div class="item-box">
                                                <p class="number">03</p>
                                                <img src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2065%2050'%3E%3C/svg%3E" width="65" height="50" data-lazy-src="https://housedesign.vn/images/xuong-san-xuat-rieng.png"><noscript><img src="https://housedesign.vn/images/xuong-san-xuat-rieng.png" width="65" height="50"></noscript>
                                                <p class="description">
                                                    Xưởng sản xuất riêng                                       
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="owl-item cloned" style="width: 444px; margin-right: 20px;">
                                    <div class="item">
                                        <div class="reason-item">
                                            <div class="item-box">
                                                <p class="number">04</p>
                                                <img src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2065%2050'%3E%3C/svg%3E" width="65" height="50" data-lazy-src="https://housedesign.vn/images/chi-phi-hop-ly.png"><noscript><img src="https://housedesign.vn/images/chi-phi-hop-ly.png" width="65" height="50"></noscript>
                                                <p class="description">
                                                    Chi phí hợp lý                                       
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="owl-item cloned" style="width: 444px; margin-right: 20px;">
                                    <div class="item">
                                        <div class="reason-item">
                                            <div class="item-box">
                                                <p class="number">05</p>
                                                <img src="https://housedesign.vn/images/dung-tien-do.png" width="65" height="50" data-lazy-src="https://housedesign.vn/images/dung-tien-do.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="https://housedesign.vn/images/dung-tien-do.png" width="65" height="50"></noscript>
                                                <p class="description">
                                                    Đúng tiến độ                                       
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="owl-item" style="width: 444px; margin-right: 20px;">
                                    <div class="item">
                                        <div class="reason-item">
                                            <div class="item-box">
                                                <p class="number">01</p>
                                                <img src="https://housedesign.vn/images/dich-vu-khach-hang-tan-tam.png" width="65" height="50" data-lazy-src="https://housedesign.vn/images/dich-vu-khach-hang-tan-tam.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="https://housedesign.vn/images/dich-vu-khach-hang-tan-tam.png" width="65" height="50"></noscript>
                                                <p class="description">
                                                    Dịch vụ khách hàng tận tâm                                       
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="owl-item" style="width: 444px; margin-right: 20px;">
                                    <div class="item">
                                        <div class="reason-item">
                                            <div class="item-box">
                                                <p class="number">02</p>
                                                <img src="https://housedesign.vn/images/thiet-ke-sang-tao.png" width="65" height="50" data-lazy-src="https://housedesign.vn/images/thiet-ke-sang-tao.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="https://housedesign.vn/images/thiet-ke-sang-tao.png" width="65" height="50"></noscript>
                                                <p class="description">
                                                    Thiết kế sáng tạo, thi công chất lượng                                       
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="owl-item" style="width: 444px; margin-right: 20px;">
                                    <div class="item">
                                        <div class="reason-item">
                                            <div class="item-box">
                                                <p class="number">03</p>
                                                <img src="https://housedesign.vn/images/xuong-san-xuat-rieng.png" width="65" height="50" data-lazy-src="https://housedesign.vn/images/xuong-san-xuat-rieng.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="https://housedesign.vn/images/xuong-san-xuat-rieng.png" width="65" height="50"></noscript>
                                                <p class="description">
                                                    Xưởng sản xuất riêng                                       
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="owl-item" style="width: 444px; margin-right: 20px;">
                                    <div class="item">
                                        <div class="reason-item">
                                            <div class="item-box">
                                                <p class="number">04</p>
                                                <img src="https://housedesign.vn/images/chi-phi-hop-ly.png" width="65" height="50" data-lazy-src="https://housedesign.vn/images/chi-phi-hop-ly.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="https://housedesign.vn/images/chi-phi-hop-ly.png" width="65" height="50"></noscript>
                                                <p class="description">
                                                    Chi phí hợp lý                                       
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="owl-item active" style="width: 444px; margin-right: 20px;">
                                    <div class="item">
                                        <div class="reason-item">
                                            <div class="item-box">
                                                <p class="number">05</p>
                                                <img src="https://housedesign.vn/images/dung-tien-do.png" width="65" height="50" data-lazy-src="https://housedesign.vn/images/dung-tien-do.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="https://housedesign.vn/images/dung-tien-do.png" width="65" height="50"></noscript>
                                                <p class="description">
                                                    Đúng tiến độ                                       
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="owl-item cloned" style="width: 444px; margin-right: 20px;">
                                    <div class="item">
                                        <div class="reason-item">
                                            <div class="item-box">
                                                <p class="number">01</p>
                                                <img src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2065%2050'%3E%3C/svg%3E" width="65" height="50" data-lazy-src="https://housedesign.vn/images/dich-vu-khach-hang-tan-tam.png"><noscript><img src="https://housedesign.vn/images/dich-vu-khach-hang-tan-tam.png" width="65" height="50"></noscript>
                                                <p class="description">
                                                    Dịch vụ khách hàng tận tâm                                       
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="owl-item cloned" style="width: 444px; margin-right: 20px;">
                                    <div class="item">
                                        <div class="reason-item">
                                            <div class="item-box">
                                                <p class="number">02</p>
                                                <img src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2065%2050'%3E%3C/svg%3E" width="65" height="50" data-lazy-src="https://housedesign.vn/images/thiet-ke-sang-tao.png"><noscript><img src="https://housedesign.vn/images/thiet-ke-sang-tao.png" width="65" height="50"></noscript>
                                                <p class="description">
                                                    Thiết kế sáng tạo, thi công chất lượng                                       
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="owl-item cloned" style="width: 444px; margin-right: 20px;">
                                    <div class="item">
                                        <div class="reason-item">
                                            <div class="item-box">
                                                <p class="number">03</p>
                                                <img src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2065%2050'%3E%3C/svg%3E" width="65" height="50" data-lazy-src="https://housedesign.vn/images/xuong-san-xuat-rieng.png"><noscript><img src="https://housedesign.vn/images/xuong-san-xuat-rieng.png" width="65" height="50"></noscript>
                                                <p class="description">
                                                    Xưởng sản xuất riêng                                       
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="owl-nav disabled">
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
            <div class="title_home2 white">
                <h2 class="title">Đội ngũ nhân sự</h2>
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
                                    <div class="content">Thiết kế &amp; Sản xuất đồ nội thất là một mảnh đất rộng lớn nhưng đang rất hoang hóa ở Việt Nam. SEMA NORDIC là một trong số ít đơn vị đi đầu trong lĩnh vực này. Tôi thực sự đánh giá cao cách làm việc của  NORDIC. Các ý tưởng thiết kế được tái hiện rất xuất sắc.</div>
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
                                    <div class="content">Các sản phẩm mới của  NORDIC hiện đại thích ứng rộng rãi cho lối sống trẻ trung cá tính và rất phù hợp với mọi không gian sống,nhất là giải quyết cho những không gian ở nhỏ! Chúc mừng các tác giả! Hy vọng  NORDIC sẽ ngày càng phát triển lớn mạnh hơn!</div>
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
                                    <div class="content">Tôi thích cách đi của tập thể SEMA đang thực hiện bởi nó được bắt đầu từ những thứ rất cơ bản, kỹ càng trên phác thảo và sản phẩm được hiện thực hóa một cách chỉn chu, bài bản. Các sản phẩm của  NORDIC thực sự cho tôi cách nhìn mới mẻ về nội thất Việt Nam.</div>
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
                                    <div class="content">Biết đến Queen Chair sau lần đọc Heritage rồi trở thành khách hàng của  NORDIC, Xuân Quỳnh thật sự bị ấn tượng bởi cách mà NORDIC  làm việc. Các sản phẩm được thiết kế tỉ mỉ trong từng đường nét, sự có tâm trong tư vấn khiến Quỳnh cảm thấy hài lòng.</div>
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
            <div class="title_home2 white">
                <h2 class="title">Đối tác</h2>
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

    <div class="contact_home">
        <div>
            <div class="inner">
                <div class="maps">
                    <%--<iframe data-lazyloaded="1" src="App_Themes/house/img/embed.html" data-src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d477025.01140348776!2d105.03252617422083!3d20.922057694872876!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab2e2881d2b7%3A0x827a4e784e5a3430!2zTuG7mWkgdGjhuqV0IELhuq9jIMOCdSAtIE5PUkRJQw!5e0!3m2!1svi!2s!4v1660706734086!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" data-ll-status="loaded" class="entered litespeed-loaded"></iframe>--%>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.7373199253925!2d105.81335937587882!3d20.963061490030565!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ad1d40403a31%3A0xa24dec434c68bced!2zMTQgTmfDtSA4MTYgxJDGsOG7nW5nIEtpbSBHaWFuZywgVGhhbmggTGnhu4d0LCBUaGFuaCBUcsOsLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1682053104686!5m2!1svi!2s" width="600" height="450" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
                <div class="form">
                    <div class="wpcf7 js" id="wpcf7-f5-o1" lang="vi" dir="ltr">
                        <div class="screen-reader-response">
                            <p role="status" aria-live="polite" aria-atomic="true"></p>
                            <ul></ul>
                        </div>
                        <form action="https://nordic.vn/#wpcf7-f5-o1" method="post" class="wpcf7-form init" aria-label="Form liên hệ" novalidate="novalidate" data-status="init">
                            <div style="display: none;">
                                <input type="hidden" name="_wpcf7" value="5">
                                <input type="hidden" name="_wpcf7_version" value="5.7.5.1">
                                <input type="hidden" name="_wpcf7_locale" value="vi">
                                <input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f5-o1">
                                <input type="hidden" name="_wpcf7_container_post" value="0">
                                <input type="hidden" name="_wpcf7_posted_data_hash" value="">
                            </div>
                            <div class="form-title">
                                Liên hệ với chúng tôi
                            </div>
                            <div class="form-group">
                                <span class="wpcf7-form-control-wrap" data-name="text-948">
                                    <input size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required input" aria-required="true" aria-invalid="false" placeholder="Họ và tên" value="" type="text" name="text-948"></span>
                            </div>
                            <div class="form-group">
                                <span class="wpcf7-form-control-wrap" data-name="email-460">
                                    <input size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email input" aria-required="true" aria-invalid="false" placeholder="Email" value="" type="email" name="email-460"></span>
                            </div>
                            <div class="form-group">
                                <span class="wpcf7-form-control-wrap" data-name="number-647">
                                    <input class="wpcf7-form-control wpcf7-number wpcf7-validates-as-required wpcf7-validates-as-number input" aria-required="true" aria-invalid="false" placeholder="Số điện thoại" value="" type="number" name="number-647"></span>
                            </div>
                            <div class="form-group">
                                <span class="wpcf7-form-control-wrap" data-name="textarea-413">
                                    <textarea cols="40" rows="4" class="wpcf7-form-control wpcf7-textarea input" aria-invalid="false" placeholder="Lời nhắn" name="textarea-413"></textarea></span>
                            </div>
                            <div class="form-button">
                                <input class="wpcf7-form-control has-spinner wpcf7-submit input" type="submit" value="Đăng ký ngay"><span class="wpcf7-spinner"></span>
                            </div>
                            <div class="wpcf7-response-output" aria-hidden="true"></div>
                        </form>
                    </div>
                </div>


            </div>
        </div>
    </div>

<%--</main>--%>
<!-- PAGEBODY -->
