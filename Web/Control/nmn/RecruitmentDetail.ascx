﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RecruitmentDetail.ascx.cs" Inherits="Web.Control.nmn.RecruitmentDetail" %>
<%@ Import Namespace="Core.Utils" %>
<%@ Register Src="~/Control/nmn/BannerContact.ascx" TagName="bannerContact" TagPrefix="uc1" %>

<section id="page-title" class="full-height"
    style="background-image: url(<%= Page.ResolveClientUrl("~/App_Themes/house/img/bg_duan.jpg")%>); background-color: rgb(239, 239, 239); background-size: cover; background-position: center center; background-repeat: no-repeat; min-height: 255px;">
    <div class="section-inner align-center">
        <div class="main-title">
            <h1 style="font-size: 28px; margin-top: 5px;"><strong>
                <asp:Literal ID="lblTitlePage" runat="server"></asp:Literal></strong></h1>
        </div>
    </div>
</section>

<!-- NAV BREADCUMBS-->
<div class="breadcrumbs" typeof="BreadcrumbList" vocab="http://schema.org/">
    <span property="itemListElement" typeof="ListItem">
        <a property="item" typeof="WebPage" title="Go to ABARO." href="http://ngoinhatuonglai.vn" class="home"><span property="name">Trang chủ</span></a>
        <meta property="position" content="1">
    </span>
    <i class="fa fa-angle-right slash" aria-hidden="true"></i>
    <span class="archive post-product-archive current-item">
        <a property="item" typeof="WebPage" title="Go to ARBARO." href="/tuyen-dung.htm" class="home"><span property="name">Tuyển dụng</span></a>
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
                                            <a class="btn-social-icon btn-facebook" href="https://www.facebook.com/sharer/sharer.php?u=http://ngoinhatuonglai.vn/tuyen-dung/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm" target="_blank">
                                                <img src="../../App_Themes/house/img/fb-share.png" width="40" height="40" alt="Facebook" data-lazy-src="../../App_Themes/house/img/fb-share.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="/images/social-share/fb-share.png" width="40" height="40" alt="Facebook" /></noscript>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="btn-social-icon btn-twitter" href="https://twitter.com/home?status=http://ngoinhatuonglai.vn/tuyen-dung/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm" target="_blank">
                                                <img src="../../App_Themes/house/img/twitter-share.png" width="40" height="40" alt="Twitter" data-lazy-src="../../App_Themes/house/img/twitter-share.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="/images/social-share/twitter-share.png" width="40" height="40" alt="Twitter" /></noscript>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="btn-social-icon btn-linkedin" href="https://www.linkedin.com/shareArticle?mini=true&amp;url=http://ngoinhatuonglai.vn/tuyen-dung/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm&amp;title=<%# Eval("CS_Name") %>&amp;source=ngoinhatuonglai.vn" target="_blank">
                                                <img src="../../App_Themes/house/img/linkedin-share.png" width="40" height="40" alt="Linkedin" data-lazy-src="../../App_Themes/house/img/linkedin-share.png" data-ll-status="loaded" class="entered lazyloaded"><noscript><img src="/images/social-share/linkedin-share.png" width="40" height="40" alt="Linkedin" /></noscript>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>


                    </div>
                </div>
            </div>
            <!-- Sidebar -->
            <div class="pure-u-1 pure-u-lg-1-3">
                <div class="int_blog_sidebar">
                    <div class="int_sidebar_box recent_blog_one">
                        <p class="title">Thông tin tuyển dụng khác</p>
                        <div class="int_blog_insta_post">
                            <ul>
                                <asp:Repeater ID="rptProjects" runat="server">
                                    <ItemTemplate>
                                        <li>
                                            <a href="/tuyen-dung/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm">
                                                <img src="<%#Eval("CS_ImageURL") %>" width="768" height="432" alt="" data-lazy-src="<%#Eval("CS_ImageURL") %>" data-ll-status="loaded" class="entered lazyloaded">
                                                <noscript>
                                                    <img
                                                        src="<%#Eval("CS_ImageURL") %>"
                                                        width="768" height="432" alt="" />
                                                </noscript>

                                            </a>
                                            <a class="project-name" href="/tuyen-dung/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm"><%#Eval("CS_Name")%></a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
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

