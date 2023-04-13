<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ArticleList.ascx.cs" Inherits="Web.Control.nmn.ArticleList" %>
<%@ Register Assembly="DevExpress.Web.v10.2" Namespace="DevExpress.Web.ASPxPager" TagPrefix="dx" %>
<%@ Register Src="~/Control/nmn/SlideShowHome.ascx" TagName="slideShowHome" TagPrefix="uc1" %>
<%@ Register Src="~/Control/nmn/Offer.ascx" TagName="offer" TagPrefix="uc5" %>
<%@ Import Namespace="Core.Utils" %>

<!-- Menu Start -->
<uc1:slideShowHome ID="SlideShowHome1" runat="server" />
<!-- Page Header Start -->
<%--<div class="container-fluid page-header mb-5 position-relative overlay-bottom">
    <div class="d-flex flex-column align-items-center justify-content-center pt-0 pt-lg-5" style="min-height: 400px">
        <h1 class="display-4 mb-3 mt-0 mt-lg-5 text-white text-uppercase"><asp:Label ID="lblCategory" runat="server" /></h1>
        <div class="d-inline-flex mb-lg-5">
            <p class="m-0 text-white"><a class="text-white" href="http://nmnchinhhang.vn">Trang chủ</a></p>
            <p class="m-0 text-white px-2">/</p>
            <p class="m-0 text-white"><asp:Literal id="ltrSubLink" runat=server /></p>
        </div>
    </div>
</div>--%>
<!-- Page Header End -->
<div class="container-fluid pt-5">
    <div class="container">
        <div class="section-title">
            <h1 class="text-primary text-uppercase" style="letter-spacing: 5px;">
                <asp:Label ID="lblCategory" runat="server" /></h1>
            <div class="d-inline-flex mb-lg-1">
                <%-- <p class="m-0 text-black"><a class="text-black" href="http://nmnchinhhang.vn">Trang chủ</a></p>
            <p class="m-0 text-black px-2">></p>--%>
                <p class="m-0 text-black">
                    <asp:Literal ID="ltrSubLink" runat="server" />
                </p>
            </div>
        </div>

        <asp:Literal ID="ltrImgProduct" runat="server" />
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
            <asp:Literal ID="lblPaging" runat="server" />
        </div>


        <%-- <div class="row">
            <div class="col-sm-6 pagination-right">
                <div class="pagination pagination-centered">
                    <ul>
                        <li>
                            <a href="/Tin-tuc.htm" class="btn btn-primary"><span>Trang đầu</span></a>
                        </li>
                        <li disbale="true">
                            <a href="#" class="btn btn-primary"><span>« Trang trước</span></a>
                        </li>
                        <li>
                            <a href="#" class="btn btn-primary"><span>» Trang sau</span></a>
                        </li>
                        <li>
                            <a href="#" class="btn btn-primary"><span>Trang cuối</span></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>--%>
    </div>
</div>
<!-- Offer Start -->
<uc5:offer ID="Offer1" runat="server" />
<!-- Offer End -->


