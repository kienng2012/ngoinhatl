<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ServiceDetails.ascx.cs"
    Inherits="Web.Control.ServiceDetails" %>
<%@ Import Namespace="Core.Utils" %>
<div class="ColumnRight">
    <div class="TitleBarNews">
        <div class="TitleBarSub">
            <%--<a href="/Danh-sach-dich-vu/danh-muc-<%=_intCateID %>.htm">--%>
            <a href="/<%= RewriteUrl.ConvertToUnSign(_cateName) %>-<%=_intCateID %>">
                <asp:Label ID="lblCateName" runat="server" Text=""></asp:Label></a></div>
    </div>
    <div class="ServiceDetail">
        <div class="ServiceImg">
            <div style="width: 200px; height: 148px">
                <a href="#">
                    <asp:Image ID="imgService" runat="server" /></a>
            </div>
        </div>
        <div class="ServiceInfo">
            <div class="link-style">
                <%--<a href="/Chi-tiet-dich-vu/dich-vu-<%=_serviceID %>.htm">--%>
                <a href="/<%=RewriteUrl.ConvertToUnSign(_cateName) %>/<%= RewriteUrl.ConvertToUnSign(_cateSubName) %>-<%=_serviceID %>.htm"><span class="TitleService">
                    <asp:Label ID="lblName" runat="server" Text=""></asp:Label></span></a></div>
            <div>
                <img alt="" src="/App_Themes/Vzone/img/star.png" /></div>
            <div>
                <b></b>
            </div>
            <div>
                Soạn tin: <span class="ActiveText">
                    <asp:Label ID="lblCmd" runat="server" Text=""></asp:Label>
                </span>gửi <span class="ActiveText">2299</span></div>
            <div>
                <a href="javascript:void();" onclick="javascript:RegistryService(this,1,306,0);"
                    class="ButtonLink">Đăng ký</a></div>
        </div>
    </div>
    <div class="TextContent1">
        <div class="ContentService">
            <div class="ClearText">
            </div>
            <asp:Literal ID="lblContent" runat="server"></asp:Literal>
            <div class="ClearText">
            </div>
        </div>
    </div>
    <!-- ServiceDetail.htm -->
</div>
