<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Home.ascx.cs" Inherits="Web.Control.nmn.Home" %>
<%@ Import Namespace="Core.Utils" %>
<%@ Register Src="~/Control/nmn/SlideShowHome.ascx" TagName="slideShowHome" TagPrefix="uc2" %>
<%@ Register Src="~/Control/nmn/ArticleProduct.ascx" TagName="articleProduct" TagPrefix="uc3" %>

<%@ Register Src="~/Control/nmn/Offer.ascx" TagName="offer" TagPrefix="uc5" %>
<%@ Register Src="~/Control/nmn/ArticleTop.ascx" TagName="articleTop" TagPrefix="uc6" %>
<%@ Register Src="~/Control/nmn/ReservationForm.ascx" TagName="reservationForm" TagPrefix="uc7" %>
<%@ Register Src="~/Control/nmn/Testimonial.ascx" TagName="testimonial" TagPrefix="uc8" %>

<!-- Carousel Start -->
<uc2:slideShowHome ID="SlideShowHome1" runat="server" />
<!-- Carousel End -->


<!-- About Start -->
<uc3:articleProduct ID="ArticleProduct1" runat="server" />
<!-- About End -->


<!-- Service Start -->

<!-- Service End -->


<!-- Offer Start -->
<uc5:offer ID="Offer1" runat="server" />
<!-- Offer End -->


<!-- Menu Start -->
<uc6:articleTop ID="ArticleTop" runat="server" />
<!-- Menu End -->


<!-- Reservation Start -->
<uc7:reservationForm ID="ReservationForm1" runat="server" />
<!-- Reservation End -->


<!-- Testimonial Start -->
<uc8:testimonial ID="Testimonial1" runat="server" />
<!-- Testimonial End -->
