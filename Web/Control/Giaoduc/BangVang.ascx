<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BangVang.ascx.cs" Inherits="Web.Control.Giaoduc.BangVang" %>
<%@ Register Assembly="DevExpress.Web.v10.2" Namespace="DevExpress.Web.ASPxPager"
    TagPrefix="dx" %>
<%@ Import Namespace="Core.Utils" %>
<%@ Register Src="MenuLeft.ascx" TagName="MenuLeft" TagPrefix="uc1" %>
<%@ Register Src="MenuRight.ascx" TagName="MenuRight" TagPrefix="uc3" %>

<script type="text/javascript" language="javascript">

    $(function () {
        var url = window.location.pathname,
                                    urlRegExp = new RegExp(url.replace(/\/$/, '') + "$"); // create regexp to match current url pathname and remove trailing slash if present as it could collide with the link in navigation in case trailing slash wasn't present there
        // now grab every link from the navigation

        $('.menu li a').each(function () {
            //                            $('.menu li a').first().addClass('active');
            // and test its normalized href against the url pathname regexp
            if (urlRegExp.test(this.href.replace(/\/$/, ''))) {
                $('#bangvang').addClass('active');
            }
        });
    });

        
</script>

<!-- Menu Left -->
<uc1:MenuLeft ID="MenuLeft1" runat="server" />
<!-- End Menu Left -->
<div class="content_center">
    <div class="center_view mh">
        <div class="breadcum">
            <a href="/Trangchu.htm">Trang chủ </a>› <a href="/Bangvang.htm"> Bảng vàng</a>
        </div>
        <div class="monhoc">
            <%--<div class="tuan">
                <span class="title_mh"><a href="">Tuần 1 (01/10 - 07/10)</a></span>
                <div class="cuphap">
                    Số điện thoại<span class="cp">841869075xxx</span> Số điểm<span class="cp">644600</span>
                </div>
            </div>--%>
            <asp:Repeater ID="rptBangVang" runat="server">
                <ItemTemplate>
                    <div class="tuan">
                        <span class="title_mh"><a href="/Bang-vang-chi-tiet-<%#Eval("G_ID") %>.htm">
                            <%#Eval("G_Title") %></a></span>
                        <div class="cuphap">
                            Số điện thoại<span class="cp"><%#Eval("G_Mobile") %></span> Số điểm<span class="cp"><%#Eval("G_Point") %></span>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
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
<!-- Menu Right -->
<uc3:MenuRight ID="MenuRight1" runat="server" />
<!-- Eng MenuRight -->
