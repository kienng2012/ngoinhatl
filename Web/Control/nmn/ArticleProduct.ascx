<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ArticleProduct.ascx.cs" Inherits="Web.Control.nmn.ArticleProduct" %>
<%@ Register Assembly="DevExpress.Web.v10.2" Namespace="DevExpress.Web.ASPxPager" TagPrefix="dx" %>
<%@ Import Namespace="Core.Utils" %>

<!-- About Start -->
<div class="container-fluid py-5">
    <div class="container">
        <div class="section-title">
            <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">VỀ SẢN PHẨM CỦA CHÚNG TÔI</h4>
            <h1 class="display-4">NMN25600+</h1>
        </div>
        <div class="row">
            <asp:Repeater ID="rptProduct" runat="server">
                <ItemTemplate>
                    <div class="col-lg-4 py-0 py-lg-5">
                        <h1 class="mb-3">Giới thiệu</h1>
                        <h5 class="mb-3"><a href="/Bai-viet-<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm"><%#Eval("CS_Name") %></a></h5>
                        <p><%#Eval("CS_Description") %></p>
                        <a href="/Bai-viet-<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm" class="btn btn-primary font-weight-bold py-2 px-4 mt-2">Chi tiết</a>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <div class="col-lg-4 py-5 py-lg-0" style="min-height: 400px; margin-top: 20px">
                <div class="position-relative">
                    <img class="position-absolute w-100 " src="App_Themes/nmn/img/nmn25600.png" alt="NMN25600+" style="object-fit: cover;">
                </div>
            </div>

            <asp:Repeater ID="rptVision" runat="server">
                <ItemTemplate>
                    <div class="col-lg-4 py-0 py-lg-5">
                        <h1 class="mb-3">Tính năng</h1>
                        <h5 class="mb-3"><a href="/Bai-viet-<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm"><%#Eval("CS_Name") %></a></h5>
                        <p><%#Eval("CS_Description") %></p>
                        <a href="/Bai-viet-<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm" class="btn btn-primary font-weight-bold py-2 px-4 mt-2">Chi tiết</a>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</div>
<!-- About End -->
