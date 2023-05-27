﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StyleDetail.ascx.cs" Inherits="Web.Control.nmn.StyleDetail" %>
<%@ Import Namespace="Core.Utils" %>
<%@ Register Src="~/Control/nmn/BannerContact.ascx" TagName="bannerContact" TagPrefix="uc1" %>

<section id="page-title" class="full-height"
    style="background-color: rgb(239, 239, 239); background-size: cover; background-position: center center; background-repeat: no-repeat; min-height: 255px;">

    <asp:Image ID="imgService" runat="server" class="img-banner-cover" />


    <div class="section-inner align-center">
        <div class="main-title">
            <h1 style="font-size: 28px; margin-top: 5px;"><strong>
                <asp:Literal ID="lblTitlePage" runat="server"></asp:Literal></strong></h1>
        </div>
    </div>
</section>

<!-- NAV BREADCUMBS-->
<div class="breadcrumbs" typeof="BreadcrumbList" vocab="http://schema.org/">
    <span property="itemListElement" typeof="ListItem" class="breadcrumbs-page">
        <a property="item" typeof="WebPage" title="Go to ABARO." href="http://ngoinhatuonglai.vn" class="home"><span property="name">Trang chủ</span></a>
        <meta property="position" content="1">
    </span>
    <i class="fa fa-angle-right slash" aria-hidden="true"></i>
    <span class="archive post-product-archive current-item">
        <a property="item" typeof="WebPage" title="Go to ARBARO." href="/phong-cach.htm" class="home"><span property="name">Phong cách thiết kế</span></a>
    </span>
</div>

<div id="page-body" class="">
    <div class="int_blog_category">
        <div class="pure-g">
            <!-- Content -->
            <div class="pure-u-1 pure-u-lg-2-3">
                <div class="int_blog_box int_blog_single">
                    <div class="int_blog_post">
                        <%-- <asp:Repeater ID="rptDetail1" runat="server">
                            <ItemTemplate>
                                <ul class="breadcrumb-custom">
                                    <li><%#Eval("CS_Name") %>  </li>
                                </ul>
                                <p>
                                    <%#Eval("CS_Content") %>
                                </p>

                                <div class="social-share-wrap">
                                    <p class="social-share-title">Chia sẻ</p>
                                    <ul class="social-share">
                                        <li>
                                            <a class="btn-social-icon btn-facebook" href="https://www.facebook.com/sharer/sharer.php?u=http://ngoinhatuonglai.vn/phong-cach/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm" target="_blank">
                                                <img src="../../App_Themes/house/img/fb-share.png" width="40" height="40" alt="Facebook" data-lazy-src="../../App_Themes/house/img/fb-share.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="/images/social-share/fb-share.png" width="40" height="40" alt="Facebook" /></noscript>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="btn-social-icon btn-twitter" href="https://twitter.com/home?status=http://ngoinhatuonglai.vn/phong-cach/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm" target="_blank">
                                                <img src="../../App_Themes/house/img/twitter-share.png" width="40" height="40" alt="Twitter" data-lazy-src="../../App_Themes/house/img/twitter-share.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="/images/social-share/twitter-share.png" width="40" height="40" alt="Twitter" /></noscript>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="btn-social-icon btn-linkedin" href="https://www.linkedin.com/shareArticle?mini=true&amp;url=http://ngoinhatuonglai.vn/phong-cach/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm&amp;title=<%# Eval("CS_Name") %>&amp;source=ngoinhatuonglai.vn" target="_blank">
                                                <img src="../../App_Themes/house/img/linkedin-share.png" width="40" height="40" alt="Linkedin" data-lazy-src="../../App_Themes/house/img/linkedin-share.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="/images/social-share/linkedin-share.png" width="40" height="40" alt="Linkedin" /></noscript>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>--%>
                        <asp:Repeater ID="rptDetail" runat="server" OnItemDataBound="rptDetail_ItemDataBound">
                            <ItemTemplate>
                                <div class="section-inner">
                                    <div class="wrapper">
                                        <h4 class="title-ultraminimal align-center visible"><%#Eval("CS_Name") %> </h4>
                                        <p>
                                            <%#Eval("CS_Content") %>
                                        </p>
                                    </div>
                                    <div class="img-products-details">
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
                                    </div>


                                    <div class="wrapper mt-5">
                                        <hr class="my-5">
                                    </div>
                                    <div class="social-share-wrap">
                                        <p class="social-share-title">Chia sẻ</p>
                                        <ul class="social-share">
                                            <li>
                                                <a class="btn-social-icon btn-facebook" href="https://www.facebook.com/sharer/sharer.php?u=http://ngoinhatuonglai.vn/phong-cach/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm" target="_blank">
                                                    <img src="../../App_Themes/house/img/fb-share.png" width="40" height="40" alt="Facebook" data-lazy-src="../../App_Themes/house/img/fb-share.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="/images/social-share/fb-share.png" width="40" height="40" alt="Facebook" /></noscript>
                                                </a>
                                            </li>
                                            <li>
                                                <a class="btn-social-icon btn-twitter" href="https://twitter.com/home?status=http://ngoinhatuonglai.vn/phong-cach/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm" target="_blank">
                                                    <img src="../../App_Themes/house/img/twitter-share.png" width="40" height="40" alt="Twitter" data-lazy-src="../../App_Themes/house/img/twitter-share.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="/images/social-share/twitter-share.png" width="40" height="40" alt="Twitter" /></noscript>
                                                </a>
                                            </li>
                                            <li>
                                                <a class="btn-social-icon btn-linkedin" href="https://www.linkedin.com/shareArticle?mini=true&amp;url=http://ngoinhatuonglai.vn/phong-cach/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm&amp;title=<%# Eval("CS_Name") %>&amp;source=ngoinhatuonglai.vn" target="_blank">
                                                    <img src="../../App_Themes/house/img/linkedin-share.png" width="40" height="40" alt="Linkedin" data-lazy-src="../../App_Themes/house/img/linkedin-share.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="/images/social-share/linkedin-share.png" width="40" height="40" alt="Linkedin" /></noscript>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>

                        <%--<div class="int_auther_box">
                            <div class="int_auther_img">
                                <img src="https://housedesign.vn/wp-content/uploads/2020/05/author-quach-kim-hai.jpg" width="118" height="138" class="img-fluid entered lazyloaded" alt="Quách Kim Hải – Interior Designer" data-lazy-src="https://housedesign.vn/wp-content/uploads/2020/05/author-quach-kim-hai.jpg" data-ll-status="loaded"><noscript><img src="https://housedesign.vn/wp-content/uploads/2020/05/author-quach-kim-hai.jpg" width="118" height="138" class="img-fluid" alt="Quách Kim Hải – Interior Designer"></noscript>
                            </div>
                            <div class="int_auther_content">
                                <p class="title">Quách Kim Hải – Interior Designer</p>
                                <p>Là một kiến trúc sư trẻ nhưng với tôi kiến trúc nó không phải là giấy, không phải là hình thức mà nó là không gian và vật liệu.</p>
                                <p>“Instead of thinking outside the box, get rid of the box” – Deepak Chopra</p>
                            </div>
                        </div>--%>
                    </div>
                    <div class="wrapper"></div>
                    <div class="wrapper mt-5">
                        <hr class="my-5">
                    </div>
                    <div class="int_blog_post">
                        <div class="all_box no-margin">
                            <div class="section-inner">
                                <div class="int_sidebar_box custom">
                                    <p class="title">Bài viết liên quan</p>

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
                                                        <a href="/phong-cach/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm" class="link_full"></a>
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
                    <div class="section-inner">
                        <div class="archive-title align-center">
                            <h1>DANH MỤC PHONG CÁCH KHÁC</h1>
                            <div class="separator"><span></span></div>
                        </div>
                    </div>

                    <div class="products columns-4 list_product">
                        <asp:Repeater ID="rptAnotherCate" runat="server">
                            <ItemTemplate>
                                <div class="item_pro">
                                    <div class="img" style="background-image: url(<%#Eval("C_ImageURL") %>"></div>
                                    <div class="info-style">
                                        <div class="round-capt"><span class="capt upper"><%#Eval("C_Name")%></span></div>
                                    </div>
                                    <a href="/<%#Eval("C_BaseURL") %>.htm" class="link_full"></a>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div class="wrapper"></div>
                    <div class="wrapper mt-5">
                        <hr class="my-5">
                    </div>
                </div>

            </div>
            <!-- Sidebar -->
            <div class="pure-u-1 pure-u-lg-1-3">
                <div class="int_sidebar_box recent_blog_one">
                    <p class="title">Dự án đã thực hiện</p>
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
                <%--<div class="int_sidebar_box recent_blog_one">
                    <p class="title">Dự án đã thực hiện</p>
                    <div class="int_blog_insta_post">
                        <ul>
                            <asp:Repeater ID="rptProjects" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <a href="/du-an/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm">
                                            <div class="img-related">
                                                <img src="<%#Eval("CS_ImageURL") %>" width="768" height="432" alt="" data-lazy-src="<%#Eval("CS_ImageURL") %>" data-ll-status="loaded" class="entered lazyloaded">
                                            </div>
                                        </a>
                                        <a class="project-name" href="/du-an/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm"><%#Eval("CS_Name")%></a>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>--%>


                <%--<div class="int_sidebar_box recent_blog_one">
                        <p class="title">Bài viết liên quan</p>
                        <div class="int_blog_insta_post">
                            <ul>
                                <asp:Repeater ID="rptListCate" runat="server">
                                    <ItemTemplate>
                                        <li>
                                            <a href="/phong-cach/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm">
                                                <div class="img-related">
                                                    <img src="<%#Eval("CS_ImageURL") %>" width="768" height="576" alt="<%#Eval("CS_Name")%>" data-lazy-src="<%#Eval("CS_ImageURL") %>" data-ll-status="loaded" class="entered lazyloaded">
                                                                                                  </div>
                                            </a>

                                            <a class="project-name" href="/phong-cach/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm"><%#Eval("CS_Name")%></a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>--%>
            </div>
        </div>
    </div>
</div>
</div>
<!-- BANNER CONTACT -->
<uc1:bannerContact ID="BannerContact" runat="server" />
<!-- END BANNER CONTACT -->


