<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SubjectDetails.ascx.cs"
    Inherits="Web.Control.Giaoduc.SubjectDetails" %>
<%@ Register Src="MenuLeft.ascx" TagName="MenuLeft" TagPrefix="uc1" %>
<%@ Register Src="MenuRight.ascx" TagName="MenuRight" TagPrefix="uc3" %>
<!-- Menu Left -->
<uc1:MenuLeft ID="MenuLeft1" runat="server" />
<!-- End Menu Left -->
<!-- Chi tiet mon hoc -->
<div class="content_center">
    <div class="center_view mh">
        <div class="breadcum">
            <a href="/Trangchu.htm">Trang chủ </a>›
            <a href="/Monhoc.htm"><asp:Label ID="lblCateName" runat="server" Text=""></asp:Label></a>
        </div>

        <div class="monhoc">
            <span class="title_mh"><a href=""><%= _nameSubject %></a></span>
            <div class="cuphap">
                Để Đăng ký tham gia kiến thức <%= _nameSubject %> soạn: <span class="cp">
                    <asp:Label ID="lblCmd" runat="server" Text="DK"></asp:Label> gửi 777</span>
                Khi đang tham gia môn khác muốn chuyển sang tham gia kiến thức <%= _nameSubject %> soạn: <span
                    class="cp"><asp:Label ID="lblNhanh" runat="server" Text="DK"></asp:Label> gửi 777</span>
            </div>
            <div class="chitietmon">
                <p class="title_ct">
                    Chi tiết môn <%= _nameSubject %></p>
                <center>
                    <%--<img src="App_Themes/Giaoduc/img/tonghop.jpg" alt="" />--%>
                  
                    <asp:Image ID="imgService" runat="server" />
                    </center>
                    <asp:Literal ID="lblContent" runat="server"></asp:Literal>
            </div>
        </div>

        <%--<div class="monhoc">
            <span class="title_mh"><a href="">Tổng hợp</a></span>
            <div class="cuphap">
                Để Đăng ký tham gia kiến thức Tổng hợp soạn: <span class="cp">DK gửi 777</span>
                Khi đang tham gia môn khác muốn chuyển sang tham gia kiến thức Tổng hợp soạn: <span
                    class="cp">NT gửi 777</span>
            </div>
            <div class="chitietmon">
                <p class="title_ct">
                    Chi tiết môn Tổng hợp</p>
                <center>
                    <img src="App_Themes/Giaoduc/img/tonghop.jpg" alt="" /></center>
            </div>
        </div>--%>
    </div>
</div>
<!--End Chi tiet mon hoc -->
<!-- Menu Right -->
<uc3:MenuRight ID="MenuRight1" runat="server" />
<!-- Eng MenuRight -->
