<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuTop.ascx.cs" Inherits="Web.Control.nmn.MenuTop" %>

<!-- Navbar Start -->
<div class="container-fluid p-0 nav-bar">
    <nav class="navbar navbar-expand-lg bg-none navbar-dark py-3">
        <a href="http://nmnchinhhang.vn/" class="navbar-brand px-lg-4 m-0">
            <!--<h1 class="m-0 display-4 text-uppercase text-white">NMN25600+</h1>-->
            <img src="../../App_Themes/nmn/img/logo-nmn.png" alt="" class="logo-nmn" />
        </a>
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
            <div class="navbar-nav ml-auto p-4">
                <%--<a href="Trang-chu.htm" class="nav-item nav-link active">Trang chủ</a>--%>
                <a href="http://nmnchinhhang.vn" class="nav-item nav-link">Trang chủ</a>
                <a href="San-pham.htm" class="nav-item nav-link">Sản phẩm</a>
                <a href="Tin-tuc.htm" class="nav-item nav-link">Tin tức & Bài viết</a>
                <a href="Lien-he.htm" class="nav-item nav-link">Liên hệ & Đặt lịch</a>
            </div>
        </div>
    </nav>
</div>
<!-- Navbar End -->
