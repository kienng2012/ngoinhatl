<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuFooterVzone.ascx.cs"
    Inherits="Web.Control.MenuFooterVzone" %>
    <%@ Import Namespace="Core.Utils" %>
<div class="MenuFooter">
    <a href="/Trang-chu.htm">Trang chủ</a><span></span>
    <asp:Repeater ID="rptMenuFooter" runat="server">
        <ItemTemplate>
            <a href="/<%# RewriteUrl.ConvertToUnSign(Eval("C_Name").ToString()) %>-<%#Eval("C_ID") %>">
                <%#Eval("C_Name") %></a><span></span>
        </ItemTemplate>
    </asp:Repeater>
    <a href="#">Liên hệ</a>
</div>
<div class="Footer">
    <input type="hidden" name="hid_ListCheckAll" id="hid_ListCheckAll" value="" />
    Dịch vụ của Vietnamoblie
    <br />
    Support by HTS
</div>
