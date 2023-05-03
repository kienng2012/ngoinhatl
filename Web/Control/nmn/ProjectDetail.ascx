<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProjectDetail.ascx.cs" Inherits="Web.Control.nmn.ProjectDetail" %>
<%@ Import Namespace="Core.Utils" %>

<%@ Register Src="~/Control/nmn/ArticleTop.ascx" TagName="articleTop" TagPrefix="uc1" %>
<%--<%@ Register Src="MenuLeft.ascx" TagName="MenuLeft" TagPrefix="uc1" %>--%>
<!-- Menu Left -->
<%--<uc1:MenuLeft ID="MenuLeft1" runat="server" />--%>
<!-- End Menu Left -->

<!-- Page Header Start -->
<div class="container-fluid page-header mb-5 position-relative overlay-bottom">
    <div class="d-flex flex-column align-items-center justify-content-center pt-0 pt-lg-5" style="min-height: 400px">
        <h1 class="display-4 mb-3 mt-0 mt-lg-5 text-white text-uppercase">NEWS & ARTICLE</h1>
        <div class="d-inline-flex mb-lg-5">
            <p class="m-0 text-white"><a class="text-white" href="">Trang chủ</a></p>
            <p class="m-0 text-white px-2">/</p>
            <p class="m-0 text-white">Chi tiết bài viết</p>
        </div>
    </div>
</div>
<!-- Page Header End -->

<div class="container-fluid pt-5">
    <div class="container">
        <%-- <div class="section-title-article">
                <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">Our Services</h4>
                <h1 class="display-4">Fresh & Organic Beans</h1>
            </div>--%>
        <div class="row">
            <div class="">
                <div class="">
                    <div class="col-sm-7-center">
                        <h4><i class=""></i>
                            <asp:Label ID="lblTitle" runat="server" Text="" /></h4>
                        <asp:Label ID="lblDate" runat="server" Text="" />
                        <div class="col-sm-5-center">
                            <%-- <img class="img-fluid mb-3 mb-sm-0" src="App_Themes/nmn/img/service-1.jpg" alt="">--%>
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
                                    <%-- <div class="img" style="background-image: url(<%#Eval("IMG_URL_ITEM") %>"></div>--%>
                                    <%-- <li><img src="<%#Eval("IMG_URL_ITEM") %>" alt="" /></li>--%>

                                    <a href="<%#Eval("IMG_URL_ITEM") %>" data-fancybox="gallery_sc" class="openfancybox">
                                        <div class="img" style="background-image: url(<%#Eval("IMG_URL_ITEM") %>"></div>
                                    </a>

                                    <%--  <img src="<%#Eval("IMG_URL_ITEM") %>" alt="" class="img-details" />--%>
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
</div>

<!-- Service End -->
<!-- Menu Start -->
<%--<uc1:articleTop ID="ArticleTop" runat="server" />--%>
<!-- Menu Start -->
<div class="container-fluid pt-5">
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

                                <%--<a href="/Index.aspx?page=NewsDetails&serviceID=<%#Eval("CS_ID") %>" class="btn btn-primary font-weight-bold py-2 px-4 mt-2">Chi tiết</a>--%>
                                <a href="/Bai-viet-<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm" class="btn btn-primary font-weight-bold py-2 px-4 mt-2">Chi tiết</a>

                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>


            <%--<div class="page_number">
                    <dx:ASPxPager ID="pagerCateSub" runat="server" ClientIDMode="AutoID" OnPageIndexChanged="pagerCateSub_PageIndexChanged"
                        CssFilePath="~/App_Themes/SoftOrange/{0}/styles.css" CssPostfix="SoftOrange"
                        CurrentPageNumberFormat="{0}" SpriteCssFilePath="~/App_Themes/SoftOrange/{0}/sprite.css">
                    </dx:ASPxPager>
                </div>--%>
        </div>
        <%--  <div class="row">
             <a href="tin-tuc.htm" class="btn btn-primary font-weight-bold py-2 px-4 mt-2 center-align">xem thêm</a>
            <asp:Literal ID="lblPaging" runat="server" />
        </div>--%>
        <div class="row">
            <div class="alignRight"><a href="javascript:history.go(-1)" class="btn btn-primary font-weight-bold py-2 px-4 mt-2 center-align">Quay lại</a></div>
        </div>
    </div>
</div>
<!-- Menu End -->

<%--<div id="page-body" class="">
    <section id="portfolio-single" class="notoppadding">
        <div class="section-inner">
            <div class="wrapper">
                <ul class="breadcrumb-custom">
                    <li><a href="https://housedesign.vn/">Trang chủ</a> </li>
                    <li><a href="https://housedesign.vn/du-an/">Dự án</a></li>
                    <li>Coffee phong cách Wabisabi Việt                        </li>
                </ul>

                <div class="spacer spacer-small"></div>
                <h4 class="title-ultraminimal align-center" data-bigletter="Coffee phong cách Wabisabi Việt">Coffee phong cách Wabisabi Việt</h4>
                <div class="spacer spacer-small"></div>
                <p>Quán Coffee trong 1 con xóm nhỏ gần gũi và bình dị ở quận Bình Thạnh, với phong cách wabisabi Việt thân thiện hướng đến cảm xúc của người sử dụng và là nơi để thưởng thức cà phê thơm ngon.</p>
                <div class="spacer spacer-small"></div>
            </div>
            <div id="gallery-grid-sc" class="masonry clearfix" data-maxitemwidth="300" style="position: relative; height: 1771.97px;">
                <div class="masonry-item" style="position: absolute; left: 0px; top: 0px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-2-1100x1375.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="525" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-2-420x525.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-2-420x525.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="525" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-2-420x525.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 255px; top: 0px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-3-1100x688.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-3-420x263.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-3-420x263.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-3-420x263.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 510px; top: 0px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-1100x1100.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-420x420.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-420x420.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-4-420x420.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 765px; top: 0px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-5-1100x1100.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-5-420x420.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-5-420x420.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-5-420x420.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 255px; top: 165.656px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-6-1100x1100.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-6-420x420.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-6-420x420.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-6-420x420.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 510px; top: 255px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-7-1100x688.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-7-420x263.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-7-420x263.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-7-420x263.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 765px; top: 255px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-8-1100x688.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-8-420x263.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-8-420x263.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-8-420x263.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 0px; top: 314.75px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-9-1100x688.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-9-420x263.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-9-420x263.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-9-420x263.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 255px; top: 420.656px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-10-1100x688.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-10-420x263.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-10-420x263.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-10-420x263.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 510px; top: 420.656px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-11-1100x688.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-11-420x263.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-11-420x263.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-11-420x263.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 765px; top: 420.656px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-12-1100x688.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-12-420x263.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-12-420x263.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-12-420x263.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 0px; top: 480.406px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-13-1100x688.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-13-420x263.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-13-420x263.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-13-420x263.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 255px; top: 586.312px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-14-1100x688.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-14-420x263.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-14-420x263.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-14-420x263.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 510px; top: 586.312px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-15-1100x1100.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-15-420x420.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-15-420x420.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-15-420x420.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 765px; top: 586.312px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-16-1100x688.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-16-420x263.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-16-420x263.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-16-420x263.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 0px; top: 646.062px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-17-1100x688.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-17-420x263.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-17-420x263.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-17-420x263.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 255px; top: 751.968px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-18-1100x688.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-18-420x263.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-18-420x263.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-18-420x263.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 765px; top: 751.968px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-19-1100x688.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-19-420x263.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-19-420x263.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-19-420x263.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 0px; top: 811.718px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-20-1100x1100.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-20-420x420.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-20-420x420.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-20-420x420.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 510px; top: 841.312px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-21-1100x1100.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-21-420x420.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-21-420x420.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-21-420x420.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 255px; top: 917.624px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-22-1100x1100.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-22-420x420.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-22-420x420.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-22-420x420.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 765px; top: 917.624px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-23-1100x1100.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-23-420x420.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-23-420x420.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-23-420x420.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 0px; top: 1066.72px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-24-1100x688.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-24-420x263.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-24-420x263.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-24-420x263.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 510px; top: 1096.31px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-25-1100x688.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-25-420x263.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-25-420x263.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-25-420x263.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 255px; top: 1172.62px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-26-1100x1100.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-26-420x420.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-26-420x420.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-26-420x420.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 765px; top: 1172.62px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-27-1100x688.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-27-420x263.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-27-420x263.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-27-420x263.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 0px; top: 1232.37px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-28-1100x688.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-28-420x263.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-28-420x263.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-28-420x263.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 510px; top: 1261.97px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-29-1100x1100.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-29-420x420.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-29-420x420.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-29-420x420.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 765px; top: 1338.28px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-30-1100x688.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-30-420x263.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-30-420x263.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-30-420x263.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 0px; top: 1398.03px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-31-1100x688.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-31-420x263.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-31-420x263.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-31-420x263.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 255px; top: 1427.62px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-32-1100x1100.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-32-420x420.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-32-420x420.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-32-420x420.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 765px; top: 1503.94px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-33-1100x1100.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-33-420x420.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-33-420x420.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-33-420x420.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 510px; top: 1516.97px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-34-1100x1100.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-34-420x420.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-34-420x420.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="420" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-34-420x420.jpg" alt="" /></noscript>
                    </a>
                </div>
                <div class="masonry-item" style="position: absolute; left: 0px; top: 1563.69px; width: 245px;">
                    <a href="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-35-1100x688.jpg" data-fancybox="gallery_sc" class="openfancybox">
                        <img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-35-420x263.jpg" alt="" data-lazy-src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-35-420x263.jpg" srcset="" data-ll-status="loaded" class="entered lazyloaded"><noscript><img width="420" height="263" src="https://housedesign.vn/wp-content/uploads/2022/12/housedesign-coffee-Binh-Thanh-35-420x263.jpg" alt="" /></noscript>
                    </a>
                </div>
            </div>
            <div class="wrapper">
                <div class="spacer spacer-small"></div>
            </div>

            <div class="wrapper mt-5">

                <hr class="my-5">

            </div>
        </div>
    </section>
</div>--%>

