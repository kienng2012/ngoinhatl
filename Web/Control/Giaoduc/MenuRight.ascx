<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuRight.ascx.cs" Inherits="Web.Control.Giaoduc.MenuRight" %>
<div class="content_right">
    <div class="colum">
        <div class="titlecate title_pink">
            <img alt="" src="App_Themes/Giaoduc/img/icon_bangvang.png" /><a href="/Bangvang.htm">Bảng vàng</a></div>
        <div class="content_colum">
            <ul>
                <%--<li class="title_orange"><a href="">Tuần 1 (01/10 - 07/10)</a></li>
                <li class="title_blue"><a href="">Tuần 2 (07/10 - 14/10)</a></li>
                <li class="title_pink"><a href="">Tuần 3 (14/10 - 21/10)</a></li>
                <li class="title_gray"><a href="">Tuần 4 (22/10 - 29/10)</a></li>
                <li class="title_blue1"><a href="">Tuần 5 (30/10 - 07/11)</a></li>
                 <%# Container.DataItem %>--%>
                <asp:Repeater ID="rptGold" runat="server">
                    <ItemTemplate>
                        <li class="<%# GetItemClass(Container.ItemIndex) %>"><a href="/Bang-vang-chi-tiet-<%#Eval("G_ID") %>.htm">
                            <%#Eval("G_Title") %></a> </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>
    <div class="colum">
        <div class="titlecate title_orange">
            <img alt="" src="App_Themes/Giaoduc/img/icon_tintuc.png" /><a href="/Tintuc.htm">Tin tức</a></div>
        <div class="content_colum news">
            <ul>
               <%-- <li>
                    <div class="thumb">
                        <img src="App_Themes/Giaoduc/img/thumb1.jpg" alt="" /></div>
                    <a href="">SGK sai nhiều do “đẻ” ngược</a>
                 </li>--%>
                <asp:Repeater ID="rptNews" runat="server">
                    <ItemTemplate>
                        <li>
                            <div class="thumb">
                                <img src="<%#Eval("CS_ImageURL") %>" alt="" /></div>
                            <a href="/Index.aspx?page=NewsDetails&serviceID=<%#Eval("CS_ID") %>"><%#Eval("CS_Name") %></a> </li>
                    </ItemTemplate>
                </asp:Repeater>
                  
            </ul>
            <span class="style_more"> <a href="/Tintuc.htm">
                Xem toàn bộ</a></span>
        </div>
    </div>
</div>
