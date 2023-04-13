<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Reservation.ascx.cs" Inherits="Web.Control.nmn.Reservation" %>
<%@ Register Src="~/Control/nmn/SlideShowHome.ascx" TagName="slideShowHome" TagPrefix="uc2" %>
<%@ Register Src="~/Control/nmn/ReservationForm.ascx" TagName="reservationForm" TagPrefix="uc1" %>


<!-- Menu Start -->
<uc2:slideShowHome ID="SlideShowHome1" runat="server" />
<!-- Page Header Start -->

<!-- Page Header Start -->
<div class="container-fluid pt-5">
    <div class="container">
        <%--<div class="container-fluid page-header mb-5 position-relative overlay-bottom">
            <div class="d-flex flex-column align-items-center justify-content-center pt-0 pt-lg-5" style="min-height: 400px">
                <h1 class="display-4 mb-3 mt-0 mt-lg-5 text-white text-uppercase">Liên hệ & Đặt Lịch</h1>
                <div class="d-inline-flex mb-lg-5">
                    <p class="m-0 text-white"><a class="text-white" href="http://nmnchinhhang.vn">Trang chủ</a></p>
                    <p class="m-0 text-white px-2">/</p>
                    <p class="m-0 text-white"><a class="text-white" href="Lien-he.htm">Liên hệ & Đặt lịch</a></p>
                </div>
            </div>
        </div>--%>
        <div class="section-title">
            <h1 class="text-primary text-uppercase" style="letter-spacing: 5px;">Liên hệ & Đặt Lịch</h1>
            <div class="d-inline-flex mb-lg-1">
                <%-- <p class="m-0 text-black"><a class="text-black" href="http://nmnchinhhang.vn">Trang chủ</a></p>
            <p class="m-0 text-black px-2">></p>--%>
                <p class="m-0 text-black">
                    Nhập thông tin để kết nối với chúng tôi
                </p>
            </div>
        </div>
    </div>
</div>


<!-- Page Header End -->
<!-- Reservation Start -->
<uc1:reservationForm ID="ReservationForm1" runat="server" />
<div class="container paddingSpace">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.974220199764!2d105.81167101540748!3d20.99367048601749!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac917db83a79%3A0xb6a26b453657de50!2zMTg2IMSQLiBLaMawxqFuZyDEkMOsbmgsIEjhuqEgxJDDrG5oLCBUaGFuaCBYdcOibiwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1679632304585!5m2!1svi!2s" width="100%" height="450" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</div>
<!-- Reservation End -->
