<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NewsDetails.ascx.cs" Inherits="Web.Control.nmn.NewsDetails" %>
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

