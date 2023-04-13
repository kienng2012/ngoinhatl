<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NewsDetails.ascx.cs"
    Inherits="Web.Control.Giaoduc.NewsDetails" %>
<%@ Import Namespace="Core.Utils" %>
<%@ Register Src="MenuLeft.ascx" TagName="MenuLeft" TagPrefix="uc1" %>
<!-- Menu Left -->
<uc1:MenuLeft ID="MenuLeft1" runat="server" />
<!-- End Menu Left -->
<!-- News Details -->
<div class="content_center colum2">
    <div class="center_view">
        <div class="about">
            <div class="breadcum">
                <a href="/Trangchu.htm">Trang chủ </a>› <%--<a href="/<%= RewriteUrl.ConvertToUnSign(_cateName) %>-<%=_intCateID %>">--%>
                <a href="/<%= RewriteUrl.ConvertToUnSign(_cateName) %>-<%=_intCateID %>">
                    <asp:Label ID="lblCateName" runat="server" Text=""></asp:Label></a>
            </div>
            <div class="news_cate">
                <div class="news_title">
                    <span class="title_news"><a href="#">
                        <asp:Label ID="lblTitle" runat="server" Text="" /></a></span> <span class="date_news">
                            <asp:Label ID="lblDate" runat="server" Text="" /></span>
                </div>
                <div class="news_content">
                    <asp:Image ID="imgService" runat="server" />
                    <asp:Literal ID="lblContent" runat="server"></asp:Literal>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End News Details -->
