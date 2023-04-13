<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuVzone.ascx.cs" Inherits="Web.Control.MenuVzone" %>
<%@ Import Namespace="Core.Utils" %>
<div class="menu">
    <ul class="menuleft">
        <li class="menutop"><a href="/Trang-chu.htm">Trang chủ</a><span></span></li>
        <asp:Repeater ID="rptMenu" runat="server">
            <ItemTemplate>
                <li class="menutop"><%--/chuyen-muc-<%# ConvertToUnSign(Eval("CT_Name").ToString()) %>-<%#Eval("CT_ID")%>.htm--%>
                <a href="/<%# RewriteUrl.ConvertToUnSign(Eval("C_Name").ToString()) %>-<%#Eval("C_ID") %>">
                    <%#Eval("C_Name") %></a><span></span></li>
            </ItemTemplate>
        </asp:Repeater>
        <li class="menutop"><a href="#">Liên hệ</a></li>
    </ul>
</div>
