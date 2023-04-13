<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListByCategory.ascx.cs"
    Inherits="Web.Control.ListByCategory" %>
<%@ Import Namespace="Core.Utils" %>
<%@ Register Assembly="DevExpress.Web.v10.2" Namespace="DevExpress.Web.ASPxPager"
    TagPrefix="dx" %>
<div class="ColumnRight">
    <div class="wrapper-cate">
        <div class="TitleBarNews">
            <div class="TitleBarSub">
                <%--<asp:Label ID="lblCateName" runat="server" Text=""></asp:Label></div>--%><%--<a href="/Danh-sach-dich-vu/danh-muc-<%=_cateID %>.htm">--%><a href="/<%=RewriteUrl.ConvertToUnSign(_cateName) %>-<%=_cateID%>"><asp:Label
                    ID="lblCateName" runat="server" Text=""></asp:Label></a>
            </div>
        </div>
        <asp:Repeater ID="rptListCate" runat="server">
            <ItemTemplate>
                <div class="TextContent">
                    <div class="FrameService">
                        <div class="FrameServiceImg">
                            <div style="width: 99px; height: 99px">
                                <a href="/<%=RewriteUrl.ConvertToUnSign(_cateName) %>/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm">
                                    <img alt="" src="<%#Eval("CS_ImageURL") %>" /></a>
                            </div>
                        </div>
                        <div class="FrameServiceInfo" title="306">
                            <div class="link-style">
                                <%--<a href="/Chi-tiet-dich-vu/dich-vu-<%#Eval("CS_ID") %>.htm">--%>
                                <a href="/<%=RewriteUrl.ConvertToUnSign(_cateName) %>/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm">
                                <span class="TitleService">
                                    <%#Eval("CS_Name") %></span></a></div>
                            <div class="StructRegistry">
                                Soạn tin: <span class="ActiveText">
                                    <%#Eval("CS_Cmd") %>
                                </span>gửi <span class="ActiveText">2299</span></div>
                            <div>
                                <a href="javascript:void();" onclick="javascript:RegistryService(this,1,306,0);"
                                    class="ButtonLink">Đăng ký</a>&nbsp;<a href="/<%=RewriteUrl.ConvertToUnSign(_cateName) %>/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm"
                                        class="ButtonLink1">Chi tiết</a></div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <div class="phantrang" style="width: 665px; float: left; background-color: #FBFBFA;
        padding-left: 15px; padding-bottom: 20px">
        <!--Phan trang-->
        <dx:ASPxPager ID="pagerCateSub" runat="server" OnPageIndexChanged="pagerCateSub_PageIndexChanged"
            ClientIDMode="AutoID" CssFilePath="~/App_Themes/SoftOrange/{0}/styles.css" CssPostfix="SoftOrange"
            CurrentPageNumberFormat="{0}" SpriteCssFilePath="~/App_Themes/SoftOrange/{0}/sprite.css">
        </dx:ASPxPager>
    </div>
</div>
