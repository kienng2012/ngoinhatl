<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Testimonial.ascx.cs" Inherits="Web.Control.nmn.Testimonial" %>
<%@ Register Src="~/Control/nmn/BannerContact.ascx" TagName="bannerContact" TagPrefix="uc1" %>
<%@ Import Namespace="Core.Utils" %>
<section id="page-title" class="full-height" style="background-image: url(<%= Page.ResolveClientUrl("~/App_Themes/house/img/bg_duan.jpg")%>); background-color: rgb(239, 239, 239); background-size: cover; background-position: center center; background-repeat: no-repeat; min-height: 255px;">
    <div class="section-inner align-center">
        <div class="main-title">
            <h1 style="font-size: 28px; margin-top: 5px;"><strong>Trải nghiệm khách hàng</strong></h1>
        </div>
    </div>
</section>
<div class="breadcrumbs" typeof="BreadcrumbList" vocab="http://schema.org/">
    <div class="container">
        <span property="itemListElement" typeof="ListItem" class="breadcrumbs-page">
            <a property="item" typeof="WebPage" title="Go to ABARO." href="http://ngoinhatuonglai.vn" class="home"><span property="name">Trang chủ</span></a>
            <meta property="position" content="1">
        </span>
        <i class="fa fa-angle-right slash" aria-hidden="true"></i>
        <span class="archive post-product-archive current-item">
            <a property="item" typeof="WebPage" title="Go to ARBARO." href="/trai-nghiem.htm" class="home"><span property="name">Trải nghiệm khách hàng</span></a>
        </span>
        <%--<i class="fa fa-angle-right slash" aria-hidden="true"></i>
        <span class="archive post-product-archive current-item">
            <span property="name">Dự án</span>
        </span>--%>
    </div>
</div>
<div class="expert_home">
    <div class="background bg_section" style="background-image: url(https://nordic.vn/wp-content/uploads/2023/04/Untitled-20.jpg);"></div>
    <div class="container-fluid">
        <!-- class="container-fluid" -->
        <div class="title_home2 white">
            <h2 class="title white">KHÁCH HÀNG NÓI VỀ CHÚNG TÔI</h2>
        </div>
        <div class="owl-carousel owl-loaded owl-drag">
            <div class="owl-stage-outer owl-height" style="height: 383px;">
                <div class="owl-stage" style="transform: translate3d(-361px, 0px, 0px); transition: all 0.25s ease 0s; width: 1806px;">
                    <asp:Repeater ID="rptComment" runat="server">
                        <ItemTemplate>
                            <div class="owl-item" style="width: 361.1px;">
                                <div class="item">
                                    <div class="box">
                                        <div class="top">
                                            <img data-lazyloaded="1" src="<%#Eval("C_ImageURL") %>" alt="avata-1" class="avata entered litespeed-loaded" data-ll-status="loaded"><div class="info">
                                                <div class="sub"><%#Eval("C_Major") %></div>
                                                <div class="name"><%#Eval("C_Name") %></div>
                                                <div class="regency"><%#Eval("C_Company") %></div>
                                            </div>
                                        </div>
                                        <div class="content"><%#Eval("C_Description") %><</div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <%--<div class="owl-item active" style="width: 361.1px;">
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
                    </div>--%>
                </div>
            </div>
            <div class="owl-nav">
                <button type="button" role="presentation" class="owl-prev disabled"><span aria-label="Previous">‹</span></button>
                <button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button>
            </div>
            <div class="owl-dots disabled"></div>
            <div class="owl-nav">
                <button type="button" role="presentation" class="owl-prev"><span aria-label="Previous">‹</span></button>
                <button type="button" role="presentation" class="owl-next disabled"><span aria-label="Next">›</span></button>
            </div>
            <div class="owl-dots disabled"></div>
        </div>
    </div>
</div>
<div class="spacer spacer-small"></div>
<!-- BANNER CONTACT -->
<uc1:bannerContact ID="BannerContact" runat="server" />
<!-- END BANNER CONTACT -->
