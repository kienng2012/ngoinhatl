<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GioiThieuSP1.ascx.cs" Inherits="Web.Control.nmn.GioiThieuSP1" %>
<%@ Register Assembly="DevExpress.Web.v10.2" Namespace="DevExpress.Web.ASPxPager" TagPrefix="dx" %>
<%@ Import Namespace="Core.Utils" %>
<!-- Menu Start -->
<div class="container-fluid pt-5">
    <div class="container">
        <div class="section-title">
            <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">TIN TỨC & BÀI VIẾT</h4>
            <h1 class="display-4">Competitive Pricing</h1>
        </div>
        <div class="row">
            <asp:Repeater ID="rptListCate" runat="server">
                <ItemTemplate>
                    <div class="col-lg-6 mb-5">
                        <div class="row align-items-center">
                            <div class="col-sm-5">
                                <a href="/Index.aspx?page=NewsDetails&serviceID=<%#Eval("CS_ID") %>">
                                    <%--<a href="/Chi-tiet-<%#Eval("CS_ID") %>.htm">--%>
                                    <img class="w-100 rounded-circle mb-3 mb-sm-0" src="<%#Eval("CS_ImageURL") %>" alt="" />
                                </a>
                            </div>
                            <div class="col-sm-7">
                                <h5>
                                    <%--<a href="/<%# RewriteUrl.ConvertToUnSign(Eval("C_Name").ToString()) %>/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm">--%>
                                    <%#Eval("CS_Name")%>
                                    <%--</a>--%>
                                </h5>
                                <p class="m-0">
                                    <%#Eval("CS_Description") %>
                                </p>
                                <%--<a href="/Chi-tiet-<%#Eval("CS_ID") %>.htm" class="btn btn-primary font-weight-bold py-2 px-4 mt-2">Chi tiết</a>--%>
                                <a href="/Index.aspx?page=NewsDetails&serviceID=<%#Eval("CS_ID") %>" class="btn btn-primary font-weight-bold py-2 px-4 mt-2">Chi tiết</a>
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


            <%--<div class="row align-items-center mb-5">
                <div class="col-4 col-sm-3">
                    <img class="w-100 rounded-circle mb-3 mb-sm-0" src="App_Themes/nmn/img/menu-1.jpg" alt="">
                    <h5 class="menu-price">$5</h5>
                </div>
                <div class="col-8 col-sm-9">
                    <h4>Bài viết 1</h4>
                    <p class="m-0">Sit lorem ipsum et diam elitr est dolor sed duo guberg sea et et lorem dolor</p>
                    <a href="" class="btn btn-primary font-weight-bold py-2 px-4 mt-2">Learn More</a>
                </div>
            </div>--%>
        </div>
        <!--<div class="col-lg-6">
               <h1 class="mb-5">&nbsp;</h1>
                <div class="row align-items-center mb-5">
                    <div class="col-4 col-sm-3">
                        <img class="w-100 rounded-circle mb-3 mb-sm-0" src="App_Themes/nmn/img/menu-1.jpg" alt="">
                        <h5 class="menu-price">$5</h5>
                    </div>
                    <div class="col-8 col-sm-9">
                        <h4>Bài viết 1</h4>
                        <p class="m-0">Sit lorem ipsum et diam elitr est dolor sed duo guberg sea et et lorem dolor</p>
                        <a href="" class="btn btn-primary font-weight-bold py-2 px-4 mt-2">Learn More</a>

                    </div>
                </div>
                <div class="row align-items-center mb-5">
                    <div class="col-4 col-sm-3">
                        <img class="w-100 rounded-circle mb-3 mb-sm-0" src="App_Themes/nmn/img/menu-2.jpg" alt="">
                        <h5 class="menu-price">$7</h5>
                    </div>
                    <div class="col-8 col-sm-9">
                        <h4>Bài viết 2</h4>
                        <p class="m-0">Sit lorem ipsum et diam elitr est dolor sed duo guberg sea et et lorem dolor</p>
                        <a href="" class="btn btn-primary font-weight-bold py-2 px-4 mt-2">Learn More</a>
                    </div>
                </div>
                <div class="row align-items-center mb-5">
                    <div class="col-4 col-sm-3">
                        <img class="w-100 rounded-circle mb-3 mb-sm-0" src="App_Themes/nmn/img/menu-3.jpg" alt="">
                        <h5 class="menu-price">$9</h5>
                    </div>
                    <div class="col-8 col-sm-9">
                        <h4>Bài viết 3</h4>
                        <p class="m-0">Sit lorem ipsum et diam elitr est dolor sed duo guberg sea et et lorem dolor</p>
                        <a href="" class="btn btn-primary font-weight-bold py-2 px-4 mt-2">Learn More</a>
                    </div>
                </div>
            </div>-->
    </div>
</div>
</div>
<!-- Menu End -->
