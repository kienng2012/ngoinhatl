<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.ascx.cs" Inherits="Web.Control.UserProfile" %>
<%@ Register assembly="DevExpress.Web.ASPxGridView.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<div class="title-manager">
    <div class="bg-right">
    </div>
    <div class="bg-left">
    </div>
    <div class="bg-main">
        <div class="titleFunc">
            Cập nhật thông tin tài khoản</div>
    </div>
</div>
<div class="main-content_2">
    <table style="width: 100%;">
        <tr>
            <td>
                Tên đăng nhập</td>
            <td >
               
                <dx:ASPxTextBox ID="txtUsername" runat="server" Width="170px" ReadOnly="True">
                </dx:ASPxTextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td >                
                <div style="float:left;"><a href ="Default.aspx?page=ChangePass&id=<%=id %>" >Đổi mật khẩu</a></div>
            </td>
        </tr>
        <tr>
            <td>
                Tên đầy đủ</td>
            <td>
                <dx:ASPxTextBox ID="txtFullName" runat="server"  Width="170px">
                </dx:ASPxTextBox>
            </td>
        </tr>
        <tr>
            <td>
                Địa chỉ đăng ký</td>
            <td>
                <dx:ASPxTextBox ID="txtAddress" runat="server" Width="170px">
                </dx:ASPxTextBox>
            </td>
        </tr>
        <tr>
            <td>
                Số điện thoại
            </td>
            <td>
                <dx:ASPxTextBox ID="txtPhone" runat="server" Width="170px">
                </dx:ASPxTextBox>
            </td>
        </tr>
        <tr>
            <td>
                Email</td>
            <td>
                <dx:ASPxTextBox ID="txtEmail" runat="server" Width="170px" >
                </dx:ASPxTextBox>
            </td>
        </tr>
        <tr>
            <td >
              </td>
            <td >
                <dx:ASPxLabel ID="lblMessage" runat="server">
                </dx:ASPxLabel>
             </td>
        </tr>
        <tr>
            <td align="right">
                <dx:ASPxButton ID="btnUpdate" runat="server" Text="Cập nhật" 
                    onclick="btnUpdate_Click" ClientIDMode="AutoID" 
                    CssFilePath="~/App_Themes/SoftOrange/{0}/styles.css" CssPostfix="SoftOrange" 
                    SpriteCssFilePath="~/App_Themes/SoftOrange/{0}/sprite.css" >
                </dx:ASPxButton>
            </td>
            <td >
                <dx:ASPxButton ID="btnCancel" runat="server" Text="Hủy bỏ" 
                    onclick="btnCancel_Click" ClientIDMode="AutoID" 
                    CssFilePath="~/App_Themes/SoftOrange/{0}/styles.css" CssPostfix="SoftOrange" 
                    SpriteCssFilePath="~/App_Themes/SoftOrange/{0}/sprite.css" >
                </dx:ASPxButton>
            </td>
        </tr>
        <tr>
            <td >
                &nbsp;</td>
            <td >
                &nbsp;</td>
        </tr>
    </table>
</div>
