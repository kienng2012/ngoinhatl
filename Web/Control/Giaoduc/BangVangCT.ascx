<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BangVangCT.ascx.cs" Inherits="Web.Control.Giaoduc.BangVangCT" %>

<%@ Import Namespace="Core.Utils" %>
<%@ Register Src="MenuLeft.ascx" TagName="MenuLeft" TagPrefix="uc1" %>
<%@ Register Src="MenuRight.ascx" TagName="MenuRight" TagPrefix="uc3" %>
<!-- Menu Left -->
<uc1:MenuLeft ID="MenuLeft1" runat="server" />
<!-- End Menu Left -->
<div class="content_center">
    <div class="center_view mh">
        <div class="breadcum">
            <a href="/Trangchu.htm">Trang chủ </a>›<a href="/Bangvang.htm"> Bảng vàng</a>
        </div>
        <div class="monhoc">
            <%--<div class="tuan">
                <span class="title_mh"><a href="">Tuần 1 (01/10 - 07/10)</a></span>
                <div class="cuphap">
                    Số điện thoại<span class="cp">841869075xxx</span> Số điểm<span class="cp">644600</span>
                </div>
            </div>--%>
         
                    <div class="tuan">
                        <span class="title_mh"><a href="#">
                            <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label></a></span>
                        <div class="cuphap">
                            Số điện thoại<span class="cp"><asp:Label ID="lblMobile" runat="server" Text=""></asp:Label></span> Số điểm<span class="cp"><asp:Label ID="lblPoint" runat="server" Text=""></asp:Label></span>
                        </div>
                    </div>
               
        </div>
    </div>
</div>
<!-- Menu Right -->
<uc3:MenuRight ID="MenuRight1" runat="server" />
<!-- Eng MenuRight -->
