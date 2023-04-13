<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menu.ascx.cs" Inherits="Web.Control.Menu" %>
<%@ Register assembly="DevExpress.Web.v10.2" namespace="DevExpress.Web.ASPxMenu" tagprefix="dx" %>
<dx:ASPxMenu ID="ASPxMenu1" runat="server" AutoSeparators="RootOnly" 
    CssFilePath="~/App_Themes/Aqua/{0}/styles.css" CssPostfix="Aqua" 
    GutterImageSpacing="7px" ShowPopOutImages="True" 
    SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css">
    <ItemStyle DropDownButtonSpacing="12px" PopOutImageSpacing="18px" 
        ToolbarDropDownButtonSpacing="5px" ToolbarPopOutImageSpacing="5px" 
        VerticalAlign="Middle" />
    <LoadingPanelImage Url="~/App_Themes/Aqua/Web/Loading.gif">
    </LoadingPanelImage>
    <Items>
        <dx:MenuItem NavigateUrl="/Default.aspx?page=ManagerUsers" Text="Danh sách người chơi">
        </dx:MenuItem>
        <dx:MenuItem NavigateUrl="/Default.aspx?page=ManagerCard" Text="Thống kê nạp thẻ cào">
        </dx:MenuItem>
           <dx:MenuItem NavigateUrl="/Default.aspx?page=ManagerUsers" Text="Thống kê nạp sms">
        </dx:MenuItem>
    </Items>
    <RootItemSubMenuOffset FirstItemX="-1" FirstItemY="-1" X="-1" Y="-1" />
    <SubMenuStyle GutterWidth="0px" />
</dx:ASPxMenu>
