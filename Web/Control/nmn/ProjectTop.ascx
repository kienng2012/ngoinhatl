<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProjectTop.ascx.cs" Inherits="Web.Control.nmn.ProjectTop" %>
<%@ Register Assembly="DevExpress.Web.v10.2" Namespace="DevExpress.Web.ASPxPager" TagPrefix="dx" %>
<%@ Import Namespace="Core.Utils" %>
<!-- Menu Start -->

<div class="news_home2">
    <div class="container-fluid">
        <div class="title_home2">
            <h2 class="title">CÁC DỰ ÁN</h2>
            <a href="/Du-an.htm" class="link">Xem tất cả</a>
        </div>
        <div class="slider">
            <div class="owl-carousel owl-loaded owl-drag">
                <div class="owl-stage-outer owl-height" style="height: 483px;">
                    <div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 3727px;">
                        <asp:Repeater ID="rptProjectTop" runat="server">
                            <ItemTemplate>
                                <div class="owl-item active" style="width: 372.667px;">
                                    <div class="item">
                                        <div class="box">
                                            <div class="img">
                                                <a href="/du-an/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm">
                                                    <img data-lazyloaded="1" src="<%#Eval("CS_ImageURL") %>" width="768" height="432" data-src="<%#Eval("CS_ImageURL") %>" class="attachment-large size-large wvs-archive-product-image wp-post-image entered litespeed-loaded" alt="" decoding="async" loading="lazy" data-srcset="<%#Eval("CS_ImageURL") %> 768w, <%#Eval("CS_ImageURL") %> 300w, <%#Eval("CS_ImageURL") %> 600w" data-sizes="(max-width: 768px) 100vw, 768px" data-ll-status="loaded" sizes="(max-width: 768px) 100vw, 768px" srcset="<%#Eval("CS_ImageURL") %> 768w, <%#Eval("CS_ImageURL") %> 300w, <%#Eval("CS_ImageURL") %> 600w"></a>
                                            </div>
                                            <div class="info">
                                                <div class="top">
                                                    <div class="date">04/03/2023</div>
                                                    <div class="meta">
                                                        <div class="share">
                                                            <a href="https://facebook.com/share.php?u=https://ngoinhatuonglai.vn/du-an/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm" target="_blank" rel="nofollow" onclick="javascript:window.open(this.href, &#39;&#39;, &#39;menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600&#39;);return false;" class="facebook " data-toggle="tooltip" title="Share on Facebook">
                                                                <img data-lazyloaded="1" src="App_Themes/house/img/icon_share.png" alt="" icon_share="" data-src="App_Themes/house/img/icon_share.png" data-ll-status="loaded" class="entered litespeed-loaded">
                                                            </a>
                                                        </div>
                                                        <%--<div class="view">
                                                            <img data-lazyloaded="1" src="App_Themes/house/img/icon_view.png" alt="view" data-src="App_Themes/house/img/icon_view.png" data-ll-status="loaded" class="entered litespeed-loaded">221
                                                        </div>--%>
                                                    </div>
                                                </div>
                                                <h3 class="name"><a href="/du-an/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm"><%#Eval("CS_Name")%></a></h3>
                                                <div class="text"><%#Eval("CS_Description") %></div>
                                                <div class="link"><a href="/du-an/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm">Xem chi tiết <i></i></a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <%--<div class="owl-item active" style="width: 372.667px;">
                            <div class="item">
                                <div class="box">
                                    <div class="img">
                                        <a href="https://nordic.vn/bao-thanh-nien-nha-thiet-ke-ve-ghe-hoang-hau/">
                                            <img data-lazyloaded="1" src="App_Themes/house/img/293394290_2341139962701973_3401177730407643931_n.jpg" width="683" height="1024" data-src="https://nordic.vn/wp-content/uploads/2022/08/293394290_2341139962701973_3401177730407643931_n.jpg" class="attachment-large size-large wvs-archive-product-image wp-post-image entered litespeed-loaded" alt="nha-thiet-ke-ve-ghe-hoang-hau" decoding="async" loading="lazy" data-ll-status="loaded"></a>
                                    </div>
                                    <div class="info">
                                        <div class="top">
                                            <div class="date">21/09/2022</div>
                                            <div class="meta">
                                                <div class="share">
                                                    <a href="https://facebook.com/share.php?u=https://nordic.vn/bao-thanh-nien-nha-thiet-ke-ve-ghe-hoang-hau/" target="_blank" rel="nofollow" onclick="javascript:window.open(this.href, &#39;&#39;, &#39;menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600&#39;);return false;" class="facebook " data-toggle="tooltip" title="Share on Facebook">
                                                        <img data-lazyloaded="1" src="App_Themes/house/img/icon_share.png" alt="" icon_share="" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_share.png" data-ll-status="loaded" class="entered litespeed-loaded"></a>
                                                </div>
                                                <div class="view">
                                                    <img data-lazyloaded="1" src="App_Themes/house/img/icon_view.png" alt="view" data-src="https://nordic.vn/wp-content/themes/nordic2/images/icon_view.png" data-ll-status="loaded" class="entered litespeed-loaded">560
                                                </div>
                                            </div>
                                        </div>
                                        <h3 class="name"><a href="https://nordic.vn/bao-thanh-nien-nha-thiet-ke-ve-ghe-hoang-hau/">Báo Thanh Niên – Nhà thiết kế vẽ ghế hoàng hậu</a></h3>
                                        <div class="text">Chiếc ghế nhỏ màu xanh óng, có tay bịt vàng, với gối đệm lưng màu cam được đặt trên một bệ nhỏ tại phòng trưng bày thiết kế của Nordic, một thương hiệu nội thất...</div>
                                        <div class="link"><a href="https://nordic.vn/bao-thanh-nien-nha-thiet-ke-ve-ghe-hoang-hau/">Xem chi tiết <i></i></a></div>
                                    </div>
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
            </div>
        </div>
    </div>
</div>
<!-- Menu End -->
