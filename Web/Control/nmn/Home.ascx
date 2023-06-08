<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HomeHT.ascx.cs" Inherits="Web.Control.nmn.HomeHT" %>
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
        <div>
            <!--container-video -->
            <div class="flex">
                <div class="inner_left center">
                    <h2 class="title">
                        <span class="main">NỘI THẤT</span>
                        <span class="tit">Tương Lai</span>
                        <span class="sub">cho ngôi nhà của bạn</span>
                    </h2>
                    <div class="text">&nbsp;&nbsp;&nbsp;&nbsp;Bằng sự thấu hiểu, chúng tôi cam kết mang đến cho bạn những trải nghiệm hoàn hảo về nội thất trong chính ngôi nhà của mình. Tỉ mỉ trong từng chi tiết nhỏ nhất, luôn đặt mình vào vị trí của người sử dụng & đồng hành cùng bạn trong suốt cả quá trình sử dụng, đó là phương châm của chúng tôi. Tất cả sản phẩm của ARBARO được hoàn thiện với chất lượng cao, đội ngũ KTS dày năm kinh nghiệm, mang lại cho khách hàng những trải nghiệm vượt trội về không gian và tối ưu công năng sử dụng.</div>
                </div>
                <div class="inner_right">
                    <div class="video">
                        <%--<iframe data-lazyloaded="1" width="560" height="315" src="https://www.youtube.com/embed/l6QwtZsFuew?autoplay=1&amp;mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen name="youtube embed" data-ll-status="loaded" class="entered litespeed-loaded"></iframe>--%>
                        <video width="320" height="240" autoplay muted controls loop playsinline>
                            <source src="/App_Themes/house/video/Arbaro.mp4" type="video/mp4">
                        </video>

                        <div class="text-video">
                            <span class="main-text">KHƠI GỢI TINH THẦN KINH DOANH – TIÊN PHONG PHÁT TRIỂN</span>
                            <span class="second-text"><span class="hover-underline-animation .bg-color-coffee">ARBARO</span> được vinh danh là đơn vị khởi nghiệp tiêu biểu trong thời kì kinh tế khó khăn COVID 19 </span>
                            <span class="third-text">Nguồn: Chuyên mục Thời sự - Đài truyền hình Việt Nam</span>
                        </div>
                    </div>
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
    <div class="background" style="background-image: url(App_Themes/house/img/bg-lido.png);"></div>
    <div class="container-fluid">
        <!--class="container-fluid"-->
        <h2 class="title color-coffee"><span></span>LÝ DO LỰA CHỌN</h2>
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
        <%--<h2 class="mbr-section-title align-center mbr-fonts-style mbr-bold display-2 color-coffee">QUY TRÌNH LÀM VIỆC ARBARO</h2>--%>
        <h2 class="title color-coffee"><span></span>QUY TRÌNH LÀM VIỆC ARBARO</h2>
    </div>

    <div class="container">
        <div class="reason-content-desktop">
            <div class="pannel-img">
                <img src="/App_Themes/house/img/QuyTrinhArbaro.png" width="700" height="220" alt="" data-lazy-src="/App_Themes/house/img/QuyTrinhArbaro.png" data-ll-status="loaded" class="entered lazyloaded">
            </div>
        </div>
        <div class="reason-content-mobile">
            <div class="reason-mobile-slide">
                <div class="slider_home owl-carousel owl-loaded owl-drag">
                    <div class="owl-stage-outer">
                        <div class="owl-stage" style="transform: translate3d(-3654px, 0px, 0px); transition: all 0s ease 0s; width: 7308px;">
                            <div class="owl-item active">
                                <div class="item">
                                    <div class="reason-item">
                                        <div class="item-box">
                                            <%-- <p class="number">01</p>--%>
                                            <img src="/App_Themes/house/img/qt-1.png" data-lazy-src="/App_Themes/house/img/qt-1.png" data-ll-status="loaded" class="entered lazyloaded">
                                            <%-- <p class="description">
                                                Khảo sát và tư vấn tại công trình                                       
                                            </p>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-item">
                                <div class="item">
                                    <div class="reason-item">
                                        <div class="item-box">
                                            <%-- <p class="number">02</p>--%>
                                            <img src="/App_Themes/house/img/qt-2.png" data-lazy-src="/App_Themes/house/img/qt-2.png" data-ll-status="loaded" class="entered lazyloaded">
                                            <%--<p class="description">
                                                Lên phương án thiết kế chỉ từ 3 ngày                                       
                                            </p>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-item">
                                <div class="item">
                                    <div class="reason-item">
                                        <div class="item-box">
                                            <%-- <p class="number">03</p>--%>
                                            <img src="/App_Themes/house/img/qt-3.png" data-lazy-src="/App_Themes/house/img/qt-3.png" data-ll-status="loaded" class="entered lazyloaded">
                                            <%-- <p class="description">
                                                Lên dự toán và tối ưu chi phí                                       
                                            </p>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="owl-item">
                                <div class="item">
                                    <div class="reason-item">
                                        <div class="item-box">
                                            <%-- <p class="number">04</p>--%>
                                            <img src="/App_Themes/house/img/qt-4.png" data-lazy-src="/App_Themes/house/img/qt-4.png" data-ll-status="loaded" class="entered lazyloaded">
                                            <%--  <p class="description">
                                                Thi công chỉ từ 7 ngày                                       
                                            </p>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-item">

                                <div class="item">
                                    <div class="reason-item">
                                        <div class="item-box">
                                            <%--  <p class="number">05</p>--%>
                                            <img src="/App_Themes/house/img/qt-5.png" data-lazy-src="/App_Themes/house/img/qt-5.png" data-ll-status="loaded" class="entered lazyloaded">
                                            <%-- <p class="description">
                                                Bảo hành 1 đổi 1 và bảo trì trọn đời                                       
                                            </p>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--<div class="owl-dots"><button role="button" class="owl-dot"><span></span></button><button role="button" class="owl-dot active"><span></span></button><button role="button" class="owl-dot"><span></span></button><button role="button" class="owl-dot"><span></span></button><button role="button" class="owl-dot"><span></span></button></div>--%>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- END QUY TRINH LAM VIEC -->

<!-- DOI NGU NHAN SU -->
<div class="expert_home">
    <div class="background bg_section" style="background-image: url(App_Themes/house/img/bg-doingu.jpg);"></div>
    <div class="container-fluid">
        <!-- class="container-fluid" -->
        <div class="title_home2 white">
            <h2 class="title white">Đội ngũ nhân sự</h2>
        </div>
        <div class="owl-carousel owl-loaded owl-drag">
            <div class="owl-stage-outer owl-height" style="height: 440px;">
                <div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1398px;">
                    <%--<div class="owl-item active" style="width: 279.5px;">
                        <div class="item">
                            <div class="box">
                                <div class="top">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/vhc2-2-scaled-1.jpg" alt="avata-1" class="avata entered litespeed-loaded" data-ll-status="loaded"><div class="info">
                                        <div class="sub">PGS.KTS.</div>
                                        <div class="name">Vũ Hồng Cương</div>
                                        <div class="regency">Trưởng khoa MTCN ĐHKTHN</div>
                                    </div>
                                </div>
                                <div class="content">Thiết kế &amp; Sản xuất đồ nội thất là một mảnh đất rộng lớn nhưng đang rất hoang hóa ở Việt Nam. SEMA ARBARO là một trong số ít đơn vị đi đầu trong lĩnh vực này. Tôi thực sự đánh giá cao cách làm việc của  ARBARO. Các ý tưởng thiết kế được tái hiện rất xuất sắc.</div>
                            </div>
                        </div>
                    </div>--%>
                    <div class="owl-item active" style="width: 200px;">
                        <div class="item">
                            <div class="box">
                                <div class="top">
                                    <div class="img-center">
                                        <img data-lazyloaded="1" src="../../App_Themes/house/img/hr/1-KTS.DucPham-CEO.png" alt="avata-2" class="avata entered litespeed-loaded" data-ll-status="loaded">
                                    </div>
                                    <div class="info">
                                        <div class="name">KTS. Đức Phạm</div>
                                        <div class="regency">CEO</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="owl-item active" style="width: 200px;">
                        <div class="item">
                            <div class="box">
                                <div class="top">
                                    <div class="img-center">
                                        <img data-lazyloaded="1" src="../../App_Themes/house/img/hr/2-KTS.AnhDo-Founder.png" alt="avata-2" class="avata entered litespeed-loaded" data-ll-status="loaded">
                                    </div>
                                    <div class="info">
                                        <div class="name">KTS. Anh Đỗ</div>
                                        <div class="regency">Founder</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="owl-item active" style="width: 200px;">
                        <div class="item">
                            <div class="box">
                                <div class="top">
                                    <div class="img-center">
                                        <img data-lazyloaded="1" src="../../App_Themes/house/img/hr/3-BaoNgoc-marketing manager.png" alt="avata-2" class="avata entered litespeed-loaded" data-ll-status="loaded">
                                    </div>
                                    <div class="info">
                                        <div class="name">Bảo Ngọc</div>
                                        <div class="regency">Marketing Manager</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="owl-item active" style="width: 200px;">
                        <div class="item">
                            <div class="box">
                                <div class="top">
                                    <div class="img-center">
                                        <img data-lazyloaded="1" src="../../App_Themes/house/img/hr/4-KTS.ThanhHai-ProjectManager.png" alt="avata-2" class="avata entered litespeed-loaded" data-ll-status="loaded">
                                    </div>
                                    <div class="info">
                                        <div class="name">KTS. Thanh Hải</div>
                                        <div class="regency">Project Manager</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="owl-item active" style="width: 200px;">
                        <div class="item">
                            <div class="box">
                                <div class="top">
                                    <div class="img-center">
                                        <img data-lazyloaded="1" src="../../App_Themes/house/img/hr/5-DuongHanh-HumanResources.png" alt="avata-2" class="avata entered litespeed-loaded" data-ll-status="loaded">
                                    </div>
                                    <div class="info">
                                        <div class="name">Dương Hạnh</div>
                                        <div class="regency">Human Resources</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="owl-item active" style="width: 200px;">
                        <div class="item">
                            <div class="box">
                                <div class="top">
                                    <div class="img-center">
                                        <img data-lazyloaded="1" src="../../App_Themes/house/img/hr/7-KTS.LuongNguyen-TechnicalDesigner.png" alt="avata-2" class="avata entered litespeed-loaded" data-ll-status="loaded">
                                    </div>
                                    <div class="info">
                                        <div class="name">KTS. Lượng Nguyễn</div>
                                        <div class="regency">Technical Designer</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="owl-item active" style="width: 200px;">
                        <div class="item">
                            <div class="box">
                                <div class="top">
                                    <div class="img-center">
                                        <img data-lazyloaded="1" src="../../App_Themes/house/img/hr/6-KTS.QuocKhanh-Designer.png" alt="avata-2" class="avata entered litespeed-loaded" data-ll-status="loaded">
                                    </div>
                                    <div class="info">
                                        <div class="name">KTS. Quốc Khánh</div>
                                        <div class="regency">Designer</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="owl-item active" style="width: 200px;">
                        <div class="item">
                            <div class="box">
                                <div class="top">
                                    <div class="img-center">
                                        <img data-lazyloaded="1" src="../../App_Themes/house/img/hr/8-HoangDiep-Accountant.png" alt="avata-2" class="avata entered litespeed-loaded" data-ll-status="loaded">
                                    </div>
                                    <div class="info">
                                        <div class="name">Hoàng Diệp</div>
                                        <div class="regency">Accountant</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="owl-item active" style="width: 200px;">
                        <div class="item">
                            <div class="box">
                                <div class="top">
                                    <div class="img-center">
                                        <img data-lazyloaded="1" src="../../App_Themes/house/img/hr/9-KTS.DuyThuong-Designer.png" alt="avata-2" class="avata entered litespeed-loaded" data-ll-status="loaded">
                                    </div>
                                    <div class="info">
                                        <div class="name">KTS. Duy Thường</div>
                                        <div class="regency">Designer</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="owl-item active" style="width: 200px;">
                        <div class="item">
                            <div class="box">
                                <div class="top">
                                    <div class="img-center">
                                        <img data-lazyloaded="1" src="../../App_Themes/house/img/hr/10-ThuyDuong-Maketing.png" alt="avata-2" class="avata entered litespeed-loaded" data-ll-status="loaded">
                                    </div>
                                    <div class="info">
                                        <div class="name">Thùy Dương</div>
                                        <div class="regency">Marketing</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="owl-item active" style="width: 200px;">
                        <div class="item">
                            <div class="box">
                                <div class="top">
                                    <div class="img-center">
                                        <img data-lazyloaded="1" src="../../App_Themes/house/img/hr/11-VanAi-Technicians.png" alt="avata-2" class="avata entered litespeed-loaded" data-ll-status="loaded">
                                    </div>
                                    <div class="info">
                                        <div class="name">Văn Ái</div>
                                        <div class="regency">Technicians</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="owl-item active" style="width: 200px;">
                        <div class="item">
                            <div class="box">
                                <div class="top">
                                    <div class="img-center">
                                        <img data-lazyloaded="1" src="../../App_Themes/house/img/hr/12-VuongTran-Technicians.png" alt="avata-2" class="avata entered litespeed-loaded" data-ll-status="loaded">
                                    </div>
                                    <div class="info">
                                        <div class="name">Vượng Trần</div>
                                        <div class="regency">Technicians</div>
                                    </div>
                                </div>
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
                    <div class="owl-stage" >
                        <div class="owl-item" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/partner/ancuong.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>

                        <div class="owl-item" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/partner/blum.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/partner/cariny.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/partner/dulux.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/partner/glob.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/partner/haefele.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                       
                        <div class="owl-item" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/partner/Logo-Minh-Long.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>



                        <div class="owl-item" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/partner/logo-khoa-noi-that.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/partner/Logo-Kien-Viet.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/partner/logo-Luxxy-VN-01.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/partner/logo-vietcg-den-1.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                </div>
                            </div>
                        </div>
                        <div class="owl-item" style="width: 164px;">
                            <div class="item_slider">
                                <div class="item">
                                    <img data-lazyloaded="1" src="App_Themes/house/img/partner/logo-chi-hoi-kien-truc-1.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
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
