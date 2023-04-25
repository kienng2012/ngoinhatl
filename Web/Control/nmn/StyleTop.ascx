<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StyleTop.ascx.cs" Inherits="Web.Control.nmn.StyleTop" %>
<%@ Register Assembly="DevExpress.Web.v10.2" Namespace="DevExpress.Web.ASPxPager" TagPrefix="dx" %>
<%@ Import Namespace="Core.Utils" %>
<!-- Menu Start -->

<div class="collection_home">
    <div class="background bg_section" style="background-image: url(https://nordic.vn/wp-content/uploads/2023/04/Untitled-8.jpg);"></div>
    <div class="container-fluid">
        <div class="title_home2 white">
            <h2 class="title">CÁC PHONG CÁCH</h2>
            <a href="/Phong-cach.htm" class="link">Xem tất cả</a>
        </div>
        <div class="slider">
            <div class="owl-carousel owl-loaded owl-drag">
                <div class="owl-stage-outer">
                    <div class="owl-stage" style="transform: translate3d(-1148px, 0px, 0px); transition: all 0s ease 0s; width: 3827px;">
                       <%-- <div class="owl-item cloned" style="width: 382.667px;">
                            <div class="item">
                                <div class="img">
                                    <a href="https://nordic.vn/pige/">
                                        <img data-lazyloaded="1" src="App_Themes/house/img/anh-thumb-BST-Pige.png" data-src="https://nordic.vn/wp-content/uploads/2022/09/anh-thumb-BST-Pige.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                        <span class="status">Hot</span>
                                    </a>
                                </div>
                                <div class="info">
                                    <h3 class="name"><a href="https://nordic.vn/pige/">Pige Collection</a></h3>
                                    <div class="text">Bộ sưu tập PIGE của NORDIC tập trung khai thác chủ đề “tính nữ trong tình yêu”, mang đến những thiết kế mềm mại và bao bọc, cách điệu mà tối giản.</div>
                                </div>
                            </div>
                        </div>--%>
                        <asp:Repeater ID="rptStyleTop" runat="server">
                            <ItemTemplate>
                                <div class="owl-item active" style="width: 382.667px;">
                                    <div class="item">
                                        <div class="img">
                                            <a href="/Phong-cach-<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm">
                                                <img data-lazyloaded="1" src="<%#Eval("CS_ImageURL") %>" data-src="<%#Eval("CS_ImageURL") %>" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                                <span class="status">HOT</span>
                                            </a>
                                        </div>
                                        <div class="info">
                                            <h3 class="name"><a href="/Phong-cach-<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm"><%#Eval("CS_Name") %></a></h3>
                                            <div class="text"><%#Eval("CS_Description") %></div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                       <%-- <div class="owl-item active" style="width: 382.667px;">
                            <div class="item">
                                <div class="img">
                                    <a href="https://nordic.vn/mand/">
                                        <img data-lazyloaded="1" src="App_Themes/house/img/anh-thumb-BST-Mand-ver2.png" data-src="https://nordic.vn/wp-content/uploads/2022/09/anh-thumb-BST-Mand-ver2.png" alt="" data-ll-status="loaded" class="entered litespeed-loaded">
                                        <span class="status">New</span>
                                    </a>
                                </div>
                                <div class="info">
                                    <h3 class="name"><a href="https://nordic.vn/mand/">Mand Collection</a></h3>
                                    <div class="text">Lấy ý tưởng từ vẻ mạnh mẽ, phóng khoáng của nam giới, Sofa AESIR mang đến một không gian ấn tượng và cá tính. Phù hợp với những người nội tâm mạnh mẽ, luôn chăm chút cẩn thận cho góc riêng trong cuộc sống của mình.</div>
                                </div>
                            </div>
                        </div>--%>

                    </div>
                </div>
                <div class="owl-nav">
                    <button type="button" role="presentation" class="owl-prev"><span aria-label="Previous">‹</span></button>
                    <button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button>
                </div>
                <div class="owl-dots disabled"></div>
            </div>
        </div>
    </div>
</div>
<!-- Menu End -->
