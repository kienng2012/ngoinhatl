<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Login.ascx.cs" Inherits="Web.Control.Login" %>
<div class="loginBox">
    <div class="title-manager">
        <div class="bg-right">
        </div>
        <div class="bg-left">
        </div>
        <div class="bg-main">
            <div class="titleFunc">
                :: Quản Lý Hệ Thống ::
            </div>
        </div>
    </div>
    <div class="mainLogin">
        <div class="msg">
            <ul>
                <li>&nbsp;</li>
            </ul>
        </div>
        <div class="logo">
            <img src="Skin/Images/admin_icon.jpg" />
        </div>
        <div class="left">
            <form action="#" method="post" name="dangnhap">
            <div class="loginField">
                <p>
                    <span>Tài khoản:</span>
                    <asp:TextBox CssClass="inputLogin" ID="txtTenDangNhap" runat="server"></asp:TextBox>
                </p>
                <p>
                    <span>Mật khẩu:</span>
                    <asp:TextBox CssClass="inputLogin" TextMode="Password" ID="txtMatkhau" runat="server"></asp:TextBox>
                </p>
                <p>
                    <asp:Button CssClass="button" Text="Đăng nhập" ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" />
                </p>
            </div>
            <div class="clear-all">
            </div>
            <div>
                <asp:Label ID="lblThong_bao" runat="server"></asp:Label>
            </div>
            </form>
        </div>
    </div>
</div>
