<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProjectDetail.ascx.cs" Inherits="Web.Control.nmn.ProjectDetail" %>
<%@ Import Namespace="Core.Utils" %>

<%@ Register Src="~/Control/nmn/ArticleTop.ascx" TagName="articleTop" TagPrefix="uc1" %>
<%--<%@ Register Src="MenuLeft.ascx" TagName="MenuLeft" TagPrefix="uc1" %>--%>
<!-- Menu Left -->
<%--<uc1:MenuLeft ID="MenuLeft1" runat="server" />--%>
<!-- End Menu Left -->

<!-- Page Header Start -->
<%--<div class="container-fluid page-header mb-5 position-relative overlay-bottom">
    <div class="d-flex flex-column align-items-center justify-content-center pt-0 pt-lg-5" style="min-height: 400px">
        <h1 class="display-4 mb-3 mt-0 mt-lg-5 text-white text-uppercase">NEWS & ARTICLE</h1>
        <div class="d-inline-flex mb-lg-5">
            <p class="m-0 text-white"><a class="text-white" href="">Trang chủ</a></p>
            <p class="m-0 text-white px-2">/</p>
            <p class="m-0 text-white">Chi tiết bài viết</p>
        </div>
    </div>
</div>--%>
<!-- Page Header End -->

<%--<div class="container-fluid pt-5">
    <div class="container">

        <div class="row">
            <div class="">
                <div class="">
                    <div class="col-sm-7-center">
                        <h4><i class=""></i>
                            <asp:Label ID="lblTitle" runat="server" Text="" /></h4>
                        <asp:Label ID="lblDate" runat="server" Text="" />
                        <div class="col-sm-5-center">

                            <div class="scaleAuto">
                                <asp:Image ID="imgService" runat="server" />
                            </div>
                        </div>
                        <div class="col-sm-7-center">
                            <p class="m-0"><%#Eval("CS_Description") %></p>
                        </div>
                        <div class="col-sm-7-center">
                            <div class="scaleAuto">
                                <asp:Literal ID="lblContent" runat="server"></asp:Literal>
                            </div>
                        </div>
                    </div>
                    <div class="products-details columns-4 list_product">

                        <asp:Repeater ID="rpImages" runat="server">
                            <ItemTemplate>
                                <div class="item_pro">


                                    <img src="<%#Eval("IMG_URL_ITEM") %>" alt="" class="img-details" />
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div class="row">

                        <div class="alignRight"><a href="javascript:history.go(-1)" class="btn btn-primary font-weight-bold py-2 px-4 mt-2 center-align">Quay lại</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="borderDotOrange"></div>
    </div>
</div>--%>

<div class="container-fluid pt-5">
    <div class="container">

        <div class="row">
            <div class="">
                <div class="">
                    <div class="col-sm-7-center">
                        <h4><i class=""></i>
                            <asp:Label ID="lblTitle" runat="server" Text="" /></h4>
                        <asp:Label ID="lblDate" runat="server" Text="" />
                        <div class="col-sm-5-center">

                            <div class="scaleAuto">
                                <asp:Image ID="imgService" runat="server" />
                            </div>
                        </div>
                        <div class="col-sm-7-center">
                            <p class="m-0"><%#Eval("CS_Description") %></p>
                        </div>
                        <div class="col-sm-7-center">
                            <div class="scaleAuto">
                                <asp:Literal ID="lblContent" runat="server"></asp:Literal>
                            </div>
                        </div>
                    </div>
                    <div class="container">
                        <h2 class="heading-text">Responsive <span>image gallery</span></h2>
                        <ul class="image-gallery">

                            <asp:Repeater ID="rpImages" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <img src="<%#Eval("IMG_URL_ITEM") %>" alt="" class="img-details" />
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div class="row">

                        <div class="alignRight"><a href="javascript:history.go(-1)" class="btn btn-primary font-weight-bold py-2 px-4 mt-2 center-align">Quay lại</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="borderDotOrange"></div>
    </div>
</div>

<!-- Service End -->
<!-- Menu Start -->
<%--<uc1:articleTop ID="ArticleTop" runat="server" />--%>
<!-- Menu Start -->
<%--<div class="container-fluid pt-5">
    <div class="container">
        <div class="section-title-detail">
            <h3>BÀI VIẾT LIÊN QUAN</h3>
        </div>
        <div class="row">
            <asp:Repeater ID="rptListCate" runat="server">
                <ItemTemplate>
                    <div class="col-lg-6 mb-5">
                        <div class="row align-items-center">
                            <div class="col-sm-5">
                                <a href="/Bai-viet-<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm">
                                    <img class="w-100 rounded-circle mb-3 mb-sm-0" src="<%#Eval("CS_ImageURL") %>" alt="" />
                                </a>
                            </div>
                            <div class="col-sm-7">
                                <h5>
                                    <a href="/Bai-viet-<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm">
                                        <%#Eval("CS_Name")%>
                                    </a>
                                </h5>
                                <p class="m-0">
                                    <%#Eval("CS_Description") %>
                                </p>


                                <a href="/Bai-viet-<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm" class="btn btn-primary font-weight-bold py-2 px-4 mt-2">Chi tiết</a>

                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

        <div class="row">
            <div class="alignRight"><a href="javascript:history.go(-1)" class="btn btn-primary font-weight-bold py-2 px-4 mt-2 center-align">Quay lại</a></div>
        </div>
    </div>
</div>--%>
<!-- Menu End -->

<div class="container-fluid pt-5">
    <div class="container">
        <div class="container-grid">
            <%-- <div class="grid-img">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-2-1100x1375.jpg" style="width: 100%">
            </div>
            <div class="grid-img">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-3-1100x688.jpg" style="width: 100%">
            </div>
            <div class="grid-img">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-1100x1100.jpg" style="width: 100%">
            </div>
            <div class="grid-img">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-8-1100x688.jpg" style="width: 100%">
            </div>
            <div class="grid-img">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-2-1100x1375.jpg" style="width: 100%">
            </div>
            <div class="grid-img">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-3-1100x688.jpg" style="width: 100%">
            </div>
            <div class="grid-img">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-1100x1100.jpg" style="width: 100%">
            </div>
            <div class="grid-img">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-8-1100x688.jpg" style="width: 100%">
            </div>
            <div class="grid-img">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-2-1100x1375.jpg" style="width: 100%">
            </div>
            <div class="grid-img">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-3-1100x688.jpg" style="width: 100%">
            </div>
            <div class="grid-img">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-1100x1100.jpg" style="width: 100%">
            </div>
            <div class="grid-img">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-8-1100x688.jpg" style="width: 100%">
            </div>
     
        </div>--%>
            <%--<div class="grid-img">
               <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-3-1100x688.jpg" style="width: 100%">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-1100x1100.jpg" style="width: 100%">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-8-1100x688.jpg" style="width: 100%">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-2-1100x1375.jpg" style="width: 100%">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-3-1100x688.jpg" style="width: 100%">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-1100x1100.jpg" style="width: 100%">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-8-1100x688.jpg" style="width: 100%">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-2-1100x1375.jpg" style="width: 100%">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-3-1100x688.jpg" style="width: 100%">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-1100x1100.jpg" style="width: 100%">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-8-1100x688.jpg" style="width: 100%">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-2-1100x1375.jpg" style="width: 100%">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-3-1100x688.jpg" style="width: 100%">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-1100x1100.jpg" style="width: 100%">
                <img src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-8-1100x688.jpg" style="width: 100%">
            </div>--%>
        </div>
    </div>

    <div id="page-content" class="fixed-header">
        <div id="page-body" class="">
            <!-- SECTION PORTFOLIO -->
            <section id="portfolio-single" class="">
                <div class="section-inner">

                    <div class="wrapper">

                        <ul class="breadcrumb-custom">
                            <li><a href="https://housedesign.vn/">Trang chủ</a> </li>
                            <li><a href="https://housedesign.vn/du-an/">Dự án</a></li>
                            <li>Villa Sân Vườn Quận 12                        </li>
                        </ul>

                        <div class="spacer spacer-small"></div>
                        <h4 class="title-ultraminimal align-center visible" data-bigletter="Villa Sân Vườn Độc Đáo">Villa Sân Vườn Độc Đáo</h4>
                        <div class="spacer spacer-small"></div>
                        <p>Căn Biệt thự là chốt nghỉ ngơi và cũng là nơi làm việc tại nhà cho chủ nhân của nó. Được thiết kế thông thoáng hòa mình với sân vườn cây xanh, chất liệu mộc mạc nhưng trong nền phong cách hiện đại để tăng tiện nghi cho căn nhà. Từ không gian bên ngoài đến bên trong chất liệu luôn đồng nhất với phong cách toàn ngôi nhà, điều đó sẽ làm tăng thêm xúc cảm cho người ở và khách thăm quan đến đây.</p>
                        <div class="spacer spacer-small"></div>
                    </div>
                    <div id="gallery-grid-sc" class="masonry clearfix" data-maxitemwidth="300" style="position: relative; height: 1497.64px;">
                        <div class="masonry-item">
                            <a href="https://housedesign.vn/wp-content/uploads/2022/03/ngoai-that-2-1100x619.jpg" data-fancybox="gallery_sc" class="openfancybox">
                                <img src="https://housedesign.vn/wp-content/uploads/2022/03/ngoai-that-2-420x236.jpg" alt="" />
                            </a>
                        </div>
                        <div class="masonry-item">
                            <a href="https://housedesign.vn/wp-content/uploads/2022/03/ngoai-that-3-e1658424744399-1100x828.jpg" data-fancybox="gallery_sc" class="openfancybox">
                                <img src="https://housedesign.vn/wp-content/uploads/2022/03/ngoai-that-3-e1658424744399-420x316.jpg" alt="" />
                            </a>
                        </div>
                        <div class="masonry-item">
                            <a href="https://housedesign.vn/wp-content/uploads/2022/03/ngoai-that-5-1100x1375.jpg" data-fancybox="gallery_sc" class="openfancybox">
                                <img src="https://housedesign.vn/wp-content/uploads/2022/03/ngoai-that-5-420x525.jpg" alt="" />
                            </a>
                        </div>
                        <div class="masonry-item">
                            <a href="https://housedesign.vn/wp-content/uploads/2022/03/ngoai-that-6-1100x1375.jpg" data-fancybox="gallery_sc" class="openfancybox">
                                <img src="https://housedesign.vn/wp-content/uploads/2022/03/ngoai-that-6-420x525.jpg" alt="" />
                            </a>
                        </div>
                        <div class="masonry-item">
                            <a href="https://housedesign.vn/wp-content/uploads/2022/03/ngoai-that-7-1100x1375.jpg" data-fancybox="gallery_sc" class="openfancybox">
                                <img src="https://housedesign.vn/wp-content/uploads/2022/03/ngoai-that-7-420x525.jpg" alt="" />
                            </a>
                        </div>
                        <div class="masonry-item">
                            <a href="https://housedesign.vn/wp-content/uploads/2022/03/ngoai-that-1-1100x917.jpg" data-fancybox="gallery_sc" class="openfancybox">
                                <img src="https://housedesign.vn/wp-content/uploads/2022/03/ngoai-that-1-420x350.jpg" alt="" />
                            </a>
                        </div>
                        <div class="masonry-item">
                            <a href="https://housedesign.vn/wp-content/uploads/2022/03/ngoai-that-4-1100x733.jpg" data-fancybox="gallery_sc" class="openfancybox">
                                <img src="https://housedesign.vn/wp-content/uploads/2022/03/ngoai-that-4-420x280.jpg" alt="" />
                            </a>
                        </div>
                        <div class="masonry-item">
                            <a href="https://housedesign.vn/wp-content/uploads/2022/03/khach-bep-1-1100x733.jpg" data-fancybox="gallery_sc" class="openfancybox">
                                <img src="https://housedesign.vn/wp-content/uploads/2022/03/khach-bep-1-420x280.jpg" alt="" />
                            </a>
                        </div>
                        <div class="masonry-item">
                            <a href="https://housedesign.vn/wp-content/uploads/2022/03/khach-bep-7-1100x758.jpg" data-fancybox="gallery_sc" class="openfancybox">
                                <img src="https://housedesign.vn/wp-content/uploads/2022/03/khach-bep-7-420x289.jpg" alt="" />
                            </a>
                        </div>
                        <div class="masonry-item">
                            <a href="https://housedesign.vn/wp-content/uploads/2022/03/khach-bep-2-1100x733.jpg" data-fancybox="gallery_sc" class="openfancybox">
                                <img src="https://housedesign.vn/wp-content/uploads/2022/03/khach-bep-2-420x280.jpg" alt="" />
                            </a>
                        </div>
                        <div class="masonry-item">
                            <a href="https://housedesign.vn/wp-content/uploads/2022/03/khach-bep-3-1100x733.jpg" data-fancybox="gallery_sc" class="openfancybox">
                                <img src="https://housedesign.vn/wp-content/uploads/2022/03/khach-bep-3-420x280.jpg" alt="" />
                            </a>
                        </div>
                        <div class="masonry-item">
                            <a href="https://housedesign.vn/wp-content/uploads/2022/03/khach-bep-4-1100x733.jpg" data-fancybox="gallery_sc" class="openfancybox">
                                <img src="https://housedesign.vn/wp-content/uploads/2022/03/khach-bep-4-420x280.jpg" alt="" />
                            </a>
                        </div>


                    </div>
                    <div class="wrapper">
                    </div>

                    <div class="wrapper mt-5">

                        <hr class="my-5">

                        <!-- V -->
                    </div>


                    <div class="cta-container">
                        <div class="container">
                            <div class="pure-g">
                                <div class="pure-u-1 pure-u-lg-7-12">
                                    <div class="cta-wrap">
                                        <div class="cta-content">
                                            <p class="title">HOUSEDESIGN - Thiết kế thi công nội thất hiện đại</p>
                                            <p class="sub-title">Liên hệ ngay với chúng tôi để thực hiện dự án của bạn</p>
                                            <a href="https://housedesign.vn/lien-he/">Liên hệ</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="pure-u-1 pure-u-lg-5-12">
                                    <div class="cta-img">
                                        <img src="/images/banner-lien-he.png" width="482" height="211" alt="" data-lazy-src="/images/banner-lien-he.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="/images/banner-lien-he.png" width="482" height="211" alt=""></noscript>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="wrapper">
                        <ul class="single-pagination fixed-pagination">
                            <li class="next "><a href="https://housedesign.vn/du-an/nha-pho-gia-hoa-quan-9/" title="Nhà Phố Gia Hòa Quận 9" class="transition" data-name="Nhà Phố Gia Hòa Quận 9">
                                <i class="pagination-icon"></i>Next Project <i class="pagination-icon"></i></a></li>
                            <li class="prev "><a href="https://housedesign.vn/du-an/villa-vinh-phong-cach-thoi-thuong/" title="Villa Vinh-Phong cách thời thượng" class="transition" data-name="Villa Vinh-Phong cách thời thượng">
                                <i class="pagination-icon"></i>Previous Project <i class="pagination-icon"></i></a></li>
                        </ul>
                    </div>
                </div>
            </section>
            <!-- SECTION PORTFOLIO -->
        </div>
    </div>
