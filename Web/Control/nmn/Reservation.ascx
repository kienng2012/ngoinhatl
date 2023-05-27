<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Reservation.ascx.cs" Inherits="Web.Control.nmn.Reservation" %>
<%@ Register Src="~/Control/nmn/ReservationForm.ascx" TagName="reservationForm" TagPrefix="uc1" %>


<!-- Menu Start -->
<section id="page-title" class="full-height" style="background-image: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url(<%= Page.ResolveClientUrl("~/App_Themes/house/img/bg_lienhe.jpg")%>); background-size: cover; background-position: center center; background-repeat: no-repeat; min-height: 623px;">
    <div class="section-inner align-center">
        <div class="main-title">
            <h1 style="font-size: 28px; margin-top: 5px;"><strong>Liên hệ</strong></h1>
        </div>
    </div>
</section>
<!-- Page Header Start -->


<!-- Reservation Start -->
<uc1:reservationForm ID="ReservationForm1" runat="server" />
<!-- Reservation End -->
