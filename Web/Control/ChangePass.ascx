<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChangePass.ascx.cs"
    Inherits="Web.Control.ChangePass" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v10.2" Namespace="DevExpress.Web.ASPxEditors"
    TagPrefix="dx" %>
<style type="text/css">
   
</style>
<div class="title-manager">
    <div class="bg-right">
    </div>
    <div class="bg-left">
    </div>
    <div class="bg-main">
        <div class="titleFunc">
            Thay đổi mật khẩu</div>
    </div>
</div>
<div class="main-content_2">
    <div class="main_gridview">
        <table style="width: 700px">
            <tr>
                <td style ="width:200px;">
                    Mật khẩu cũ</td>
                <td >
                    <dx:ASPxTextBox ID="txtOldPassword" runat="server" Width="170px" 
                        Password="True">
                    </dx:ASPxTextBox>
                </td>
            </tr>
            <tr>
                <td style ="width:200px;">
                    Mật khẩu mới
                </td>
                <td >
                    <dx:ASPxTextBox ID="txtNewPassword" runat="server" Width="170px" Password="True">
                    </dx:ASPxTextBox>
                </td>
            </tr>
            <tr>
                <td style ="width:200px;">
                    Nhập lại mật khẩu mới
                </td>
                <td >
                    <dx:ASPxTextBox ID="txtConfirmNewPassword" runat="server" Width="170px" 
                        Password="True">
                    </dx:ASPxTextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td >
                    <dx:ASPxLabel ID="lblMessage" runat="server">
                    </dx:ASPxLabel>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    <table>
                        <tr>
                            <td style ="width:50px;">
                                <dx:ASPxButton ID="btnOK" runat="server" Text="OK" onclick="btnOK_Click" 
                                    ClientIDMode="AutoID" CssFilePath="~/App_Themes/SoftOrange/{0}/styles.css" 
                                    CssPostfix="SoftOrange" 
                                    SpriteCssFilePath="~/App_Themes/SoftOrange/{0}/sprite.css">
                                </dx:ASPxButton>
                            </td>
                            <td style ="width:200px;">
                                <dx:ASPxButton ID="btnCancel" runat="server" Text="Cancel" 
                                    onclick="btnCancel_Click" ClientIDMode="AutoID" 
                                    CssFilePath="~/App_Themes/SoftOrange/{0}/styles.css" CssPostfix="SoftOrange" 
                                    SpriteCssFilePath="~/App_Themes/SoftOrange/{0}/sprite.css">
                                </dx:ASPxButton>
                            </td>
                        </tr>
                    </table>
                </td>                
            </tr>
        </table>
    </div>
</div>
