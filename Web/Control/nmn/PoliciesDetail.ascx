<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PoliciesDetail.ascx.cs" Inherits="Web.Control.nmn.PoliciesDetail" %>
<%@ Import Namespace="Core.Utils" %>
<%@ Register Src="~/Control/nmn/BannerContact.ascx" TagName="bannerContact" TagPrefix="uc1" %>

<%--<section id="page-title" class="full-height"
    style="background-color: rgb(239, 239, 239); background-size: cover; background-position: center center; background-repeat: no-repeat; min-height: 255px;">

    <asp:Image ID="imgService" runat="server" class="img-banner-cover" />


    <div class="section-inner align-center">
        <div class="main-title">
            <h1 style="font-size: 28px; margin-top: 5px;"><strong>
                <asp:Literal ID="lblTitlePage" runat="server"></asp:Literal></strong></h1>
        </div>
    </div>
</section>--%>


<asp:Repeater ID="rpImageBanner" runat="server">
    <ItemTemplate>
        <section id="page-title" class="full-height" style="background-image: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url(<%#Eval("CS_ImageURL") %>); background-size: cover; background-position: center center; background-repeat: no-repeat; min-height: 623px;">
            <%-- background-image: url(<%#Eval("CS_ImageURL") %>); background-color: rgb(239, 239, 239); background-size: cover; background-position: center center; background-repeat: no-repeat; min-height: 255px;--%>
            <div class="section-inner align-center">
                <div class="main-title">
                    <h1 style="font-size: 28px; margin-top: 5px;"><strong><%#Eval("CS_Name") %></strong></h1>
                </div>
            </div>
        </section>
    </ItemTemplate>
</asp:Repeater>

<!-- NAV BREADCUMBS-->
<div class="breadcrumbs" typeof="BreadcrumbList" vocab="http://schema.org/">
    <span property="itemListElement" typeof="ListItem" class="breadcrumbs-page">
        <a property="item" typeof="WebPage" title="Go to ABARO." href="http://ngoinhatuonglai.vn" class="home"><span property="name">Trang chủ</span></a>
        <meta property="position" content="1">
    </span>
    <i class="fa fa-angle-right slash" aria-hidden="true"></i>
    <span class="archive post-product-archive current-item">
        <a property="item" typeof="WebPage" title="Go to ARBARO." href="/chinh-sach.htm" class="home"><span property="name">Chính sách</span></a>
    </span>
</div>

<div id="page-body" class="">
    <div class="int_blog_category">
        <div class="pure-g">
            <!-- Content -->
            <div class="pure-u-1 pure-u-lg-2-3">
                <div class="int_blog_box int_blog_single">
                    <div class="int_blog_post">
                        <asp:Repeater ID="rptDetail" runat="server">
                            <ItemTemplate>
                                <div class="section-inner">
                                    <div class="wrapper">
                                        <h4 class="title-ultraminimal align-center visible"><%#Eval("CS_Name") %> </h4>
                                        <p>
                                            <%#Eval("CS_Content") %>
                                        </p>
                                    </div>
                                    <%--<div class="img-products-details">
                                        <asp:Image ID="Image1" runat="server" CssClass="imgDetailFull" />
                                    </div>
                                    <div class="products-details columns-3 list_product">
                                        <asp:Repeater ID="rpImages" runat="server">
                                            <ItemTemplate>
                                                <div class="item_pro">
                                                    <a href="<%#Eval("IMG_URL_ITEM") %>" data-fancybox="gallery_sc" class="openfancybox">
                                                        <div class="img" style="background-image: url(<%#Eval("IMG_URL_ITEM") %>"></div>
                                                    </a>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>--%>
                                    <div class="wrapper mt-5">
                                        <hr class="my-5">
                                    </div>
                                    <div class="social-share-wrap">
                                        <p class="social-share-title">Chia sẻ</p>
                                        <ul class="social-share">
                                            <li>
                                                <a class="btn-social-icon btn-facebook" href="https://www.facebook.com/sharer/sharer.php?u=http://ngoinhatuonglai.vn/chinh-sach/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm" target="_blank">
                                                    <img src="../../App_Themes/house/img/fb-share.png" width="40" height="40" alt="Facebook" data-lazy-src="../../App_Themes/house/img/fb-share.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="/images/social-share/fb-share.png" width="40" height="40" alt="Facebook" /></noscript>
                                                </a>
                                            </li>
                                            <li>
                                                <a class="btn-social-icon btn-twitter" href="https://twitter.com/home?status=http://ngoinhatuonglai.vn/chinh-sach/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm" target="_blank">
                                                    <img src="../../App_Themes/house/img/twitter-share.png" width="40" height="40" alt="Twitter" data-lazy-src="../../App_Themes/house/img/twitter-share.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="/images/social-share/twitter-share.png" width="40" height="40" alt="Twitter" /></noscript>
                                                </a>
                                            </li>
                                            <li>
                                                <a class="btn-social-icon btn-linkedin" href="https://www.linkedin.com/shareArticle?mini=true&amp;url=http://ngoinhatuonglai.vn/chinh-sach/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm&amp;title=<%# Eval("CS_Name") %>&amp;source=ngoinhatuonglai.vn" target="_blank">
                                                    <img src="../../App_Themes/house/img/linkedin-share.png" width="40" height="40" alt="Linkedin" data-lazy-src="../../App_Themes/house/img/linkedin-share.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="/images/social-share/linkedin-share.png" width="40" height="40" alt="Linkedin" /></noscript>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div class="wrapper"></div>
                    <div class="wrapper mt-5">
                        <hr class="my-5">
                    </div>
                    <div class="int_blog_post">
                        <div class="all_box no-margin">
                            <div class="section-inner">
                                <div class="int_sidebar_box custom">
                                    <p class="title">BÀI VIẾT LIÊN QUAN</p>

                                    <div class="all_box">
                                        <div class="products columns-3 list_product">
                                            <asp:Repeater ID="rptListCate" runat="server">
                                                <ItemTemplate>
                                                    <div class="item_pro">
                                                        <div class="img" style="background-image: url(<%#Eval("CS_ImageURL") %>"></div>
                                                        <%--<div class="img"><img src="<%#Eval("CS_ImageURL") %>" alt=""/></div>--%>
                                                        <div class="info-style custom">
                                                            <div class="round-capt"><span class="capt no-text-transform"><%#Eval("CS_Name")%></span></div>
                                                        </div>
                                                        <%--  <div class="overlay"><span class="item-pro-title"><%#Eval("CS_Name")%></span></div>--%>
                                                        <a href="/chinh-sach/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm" class="link_full"></a>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="wrapper"></div>
                    <div class="wrapper mt-5">
                        <hr class="my-5">
                    </div>
                </div>
            </div>
            <!-- Sidebar -->
            <div class="pure-u-1 pure-u-lg-1-3">
                <div class="int_blog_sidebar">
                    <div class="int_sidebar_box recent_blog_one">
                        <p class="title">Dự án nổi bật</p>
                        <div class="int_blog_insta_post">
                            <div class="all_box">
                                <div class="products columns-1 list_product">
                                    <asp:Repeater ID="rptProjects" runat="server">
                                        <ItemTemplate>
                                            <div class="item_pro">
                                                <div class="img" style="background-image: url(<%#Eval("CS_ImageURL") %>"></div>
                                                <%--<div class="img"><img src="<%#Eval("CS_ImageURL") %>" alt=""/></div>--%>
                                                <div class="info-style">
                                                    <div class="round-capt"><span class="capt"><%#Eval("CS_Name")%></span></div>
                                                </div>
                                                <%--  <div class="overlay"><span class="item-pro-title"><%#Eval("CS_Name")%></span></div>--%>
                                                <a href="/du-an/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm" class="link_full"></a>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<!-- BANNER CONTACT -->
<uc1:bannerContact ID="BannerContact" runat="server" />
<!-- END BANNER CONTACT -->


