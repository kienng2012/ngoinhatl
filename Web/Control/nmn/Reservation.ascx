<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Reservation.ascx.cs" Inherits="Web.Control.nmn.Reservation" %>
<%@ Register Src="~/Control/nmn/ReservationForm.ascx" TagName="reservationForm" TagPrefix="uc1" %>


<!-- Menu Start -->
<section id="page-title" class="full-height" style="background-image: url(<%= Page.ResolveClientUrl("~/App_Themes/house/img/bg_duan.jpg")%>); background-color: rgb(239, 239, 239); background-size: cover; background-position: center center; background-repeat: no-repeat; min-height: 255px;">
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
