<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListSubject.ascx.cs" Inherits="Web.Control.Giaoduc.ListSubject" %>

<%@ Register Assembly="DevExpress.Web.v10.2" Namespace="DevExpress.Web.ASPxPager"
    TagPrefix="dx" %>
<%@ Import Namespace="Core.Utils" %>
<%@ Register src="MenuLeft.ascx" tagname="MenuLeft" tagprefix="uc1" %>
<%@ Register src="MenuRight.ascx" tagname="MenuRight" tagprefix="uc3" %>

<script type="text/javascript" language="javascript">

    $(function () {
        var url = window.location.pathname,
                                    urlRegExp = new RegExp(url.replace(/\/$/, '') + "$"); // create regexp to match current url pathname and remove trailing slash if present as it could collide with the link in navigation in case trailing slash wasn't present there
        // now grab every link from the navigation

        $('.menu li a').each(function () {
            //                            $('.menu li a').first().addClass('active');
            // and test its normalized href against the url pathname regexp
            if (urlRegExp.test(this.href.replace(/\/$/, ''))) {
                $('#monhoc').addClass('active');
            }
        });
    });

        
</script>

<!-- Menu Left -->
<uc1:MenuLeft ID="MenuLeft1" runat="server" />
 <!-- End Menu Left -->

<!-- List News -->
<div class="content_center">
    <div class="center_view mh">
    <div class="about">
        <div class="breadcum">
            <a href="/Trang-chu.htm">Trang chủ </a>›
                <asp:Label ID="lblCateName" runat="server" Text=""></asp:Label>
        </div>
        <div class="news_cate">
            <ul>
               <%-- <li>
                    <div class="thumb_news"><img src="http://edu.vietnamobile.com.vn/Skin/Images/Category/phongcach1-cc366.jpg" alt=""/></div>
                    <span class="title_news"><a href="">Dòm nhan sắc, tuyển cử nhân</a></span>
                    <span class="detail_news">Dòm nhan sắc tuyển cử nhân Ngoài những yêu cầu về chuyên môn, kỹ năng mềm, thái độ, nhà tuyển dụng còn xét vẻ ngoài của ứng viên.</span>
                    <a class="more" href="">Chi tiết</a>
                </li>--%>
                <asp:Repeater ID="rptListCate" runat="server">
                        <ItemTemplate>
                            <li>
                                <div class="thumb_news">
                                    <%--<a href="/<%=RewriteUrl.ConvertToUnSign(_cateName) %>/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm">--%>
                                    <a href="/Mon-hoc-chi-tiet-<%#Eval("CS_ID") %>.htm">
                                        <img src="<%#Eval("CS_ImageURL") %>" alt="" /></a></div>
                                <span class="title_news"><a href="/Mon-hoc-chi-tiet-<%#Eval("CS_ID") %>.htm">
                                <%--<a href="/Index.aspx?page=SubjectDetails&serviceID=<%#Eval("CS_ID") %>">--%>
                                    <%#Eval("CS_Name")%></a></span> <span class="detail_news">
                                        <%#Eval("CS_Description") %></span> <a class="more" href="/Mon-hoc-chi-tiet-<%#Eval("CS_ID") %>.htm">
                                            Chi tiết</a> </li>
                        </ItemTemplate>
                    </asp:Repeater>
               
            </ul>
            <div class="page_number">
                       <%-- <ul>
                            <li><a href="">Trang trước</a></li>
                            <li class="active"><a href="">01</a></li>
                            <li><a href="">02</a></li>
                            <li><a href="">Trang sau</a></li>
                        </ul>--%>
                         <dx:ASPxPager ID="pagerCateSub" runat="server" ClientIDMode="AutoID" OnPageIndexChanged="pagerCateSub_PageIndexChanged">
                    </dx:ASPxPager>
                    </div>
        </div>
    </div>
    </div>
</div>

<!--End List News -->


<!-- Menu Right -->
<uc3:MenuRight ID="MenuRight1" runat="server" />
<!-- Eng MenuRight -->
