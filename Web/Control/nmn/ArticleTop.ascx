<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ArticleTop.ascx.cs" Inherits="Web.Control.nmn.ArticleTop" %>
<%@ Register Assembly="DevExpress.Web.v10.2" Namespace="DevExpress.Web.ASPxPager" TagPrefix="dx" %>
<%@ Import Namespace="Core.Utils" %>
<!-- Menu Start -->
<div class="container-fluid pt-5">
    <div class="container">
        <div class="section-title">
            <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">BÀI VIẾT</h4>
            <h1 class="display-4">BÀI VIẾT NỔI BẬT</h1>
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
        <div class="row">
            <a href="Tin-tuc.htm" class="btn btn-primary font-weight-bold py-2 px-4 mt-2 center-align">Xem thêm</a>
        </div>
    </div>
</div>
<!-- Menu End -->
