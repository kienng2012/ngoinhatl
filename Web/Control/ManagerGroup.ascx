<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ManagerGroup.ascx.cs" Inherits="Web.Control.ManagerGroup" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGridView.v10.2" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v10.2" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v10.2" namespace="DevExpress.Web.ASPxCallbackPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v10.2" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v10.2" namespace="DevExpress.Web.ASPxHiddenField" tagprefix="dx" %>
<script language="javascript" type="text/javascript">
    function OnUpdate(element, keyValue) {
        ASPxClientEdit.ClearEditorsInContainerById("updateUser");
        popup.ShowAtElement(element);
        cbp.PerformCallback(keyValue);
    }

    function OnInsert(element, keyValue) {
        ASPxClientEdit.ClearEditorsInContainerById("updateUser");
        popup.ShowAtElement(element);
        cbp.PerformCallback(keyValue);
    }
</script>
<div class="title-manager">
    <div class="bg-right">
    </div>
    <div class="bg-left">
    </div>
    <div class="bg-main">
        <div class="titleFunc">
            Quản lý nhóm người dùng</div>
    </div>
</div>
<div class="main-content_2">
    <div class="main_gridview">
        <asp:Label ID="lblError" runat="server"></asp:Label><br />
        <a href="javascript:void(0)" onclick="OnInsert(this,'0')">Tạo Nhóm Mới</a>
        <dx:ASPxGridView ID="grvGroup" runat="server" AutoGenerateColumns="False" 
            ClientIDMode="AutoID" CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" 
            CssPostfix="PlasticBlue" Width="100%" KeyFieldName="G_ID" 
            onrowdeleting="grvCardType_RowDeleting">
            <Columns>
                <dx:GridViewDataTextColumn Caption="STT" VisibleIndex="0">
                    <HeaderStyle HorizontalAlign="Center" />
                    <cellstyle horizontalalign="Center">
                    </cellstyle>
                    <DataItemTemplate>
                        <%#Container.ItemIndex + 1 %>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Tên Nhóm" FieldName="G_Name" 
                    VisibleIndex="0">
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Mô Tả" FieldName="G_Description" 
                    VisibleIndex="1">
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Thao Tác" VisibleIndex="2">
                    <HeaderStyle HorizontalAlign="Center" />
                    <DataItemTemplate>
                        <a href="javascript:void(0)" onclick="OnUpdate(this,<%# Container.KeyValue %>)">Sửa</a>
                        <a href="javascript:void(0)" onclick="OnInsert(this,'0')">Thêm mới</a>
                    </DataItemTemplate>
                    <cellstyle horizontalalign="Center">
                    </cellstyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewCommandColumn Caption="Xóa" VisibleIndex="3">
                    <deletebutton text="Xóa" visible="True">
                    </deletebutton>
                    <clearfilterbutton visible="True">
                    </clearfilterbutton>
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewCommandColumn>
            </Columns>
            <settingsbehavior confirmdelete="True" />

<SettingsBehavior ConfirmDelete="True"></SettingsBehavior>

            <settingspager showdefaultimages="False" pagesize="50">
                <allbutton text="All">
                </allbutton>
                <nextpagebutton text="Next &gt;">
                </nextpagebutton>
                <prevpagebutton text="&lt; Prev">
                </prevpagebutton>
            </settingspager>
            <settings showfilterrow="True" />

<Settings ShowFilterRow="True"></Settings>

            <settingstext confirmdelete="Bạn có muốn xóa nhóm này không?" />

<SettingsText ConfirmDelete="Bạn c&#243; muốn x&#243;a nh&#243;m n&#224;y kh&#244;ng?"></SettingsText>

            <images spritecssfilepath="~/App_Themes/PlasticBlue/{0}/sprite.css">
                <loadingpanelonstatusbar url="~/App_Themes/PlasticBlue/GridView/gvLoadingOnStatusBar.gif">
                </loadingpanelonstatusbar>
                <loadingpanel url="~/App_Themes/PlasticBlue/GridView/Loading.gif">
                </loadingpanel>
            </images>
            <imagesfiltercontrol>
                <loadingpanel url="~/App_Themes/PlasticBlue/Editors/Loading.gif">
                </loadingpanel>
            </imagesfiltercontrol>
            <styles cssfilepath="~/App_Themes/PlasticBlue/{0}/styles.css" 
                csspostfix="PlasticBlue">
                <header imagespacing="10px" sortingimagespacing="10px">
                </header>
            </styles>
            <styleseditors>
                <calendarheader spacing="11px">
                </calendarheader>
                <progressbar height="25px">
                </progressbar>
            </styleseditors>
        </dx:ASPxGridView>    
    </div>
</div>
<dx:ASPxPopupControl ID="popup" runat="server" 
    HeaderText="Thao Tác" Width="450px" ClientIDMode="AutoID" 
    CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue" 
    SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css" 
    ClientInstanceName="popup" PopupHorizontalAlign="WindowCenter" 
    PopupVerticalAlign="BottomSides">
    <loadingpanelimage url="~/App_Themes/PlasticBlue/Web/dvLoading.gif">
    </loadingpanelimage>
    <closebuttonstyle>
        <paddings padding="0px" />
<Paddings Padding="0px"></Paddings>
    </closebuttonstyle>
    <contentstyle>
        <borderbottom bordercolor="#E0E0E0" borderstyle="Solid" borderwidth="1px" />
<BorderBottom BorderColor="#E0E0E0" BorderStyle="Solid" BorderWidth="1px"></BorderBottom>
    </contentstyle>
    <HeaderStyle>
    <paddings paddingbottom="4px" paddingleft="10px" paddingright="4px" 
        paddingtop="4px" />
<Paddings PaddingLeft="10px" PaddingTop="4px" PaddingRight="4px" PaddingBottom="4px"></Paddings>
    </HeaderStyle>
    <ContentCollection>
<dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
    <dx:ASPxCallbackPanel ID="cbp" runat="server" 
        ClientIDMode="AutoID" Width="100%" ClientInstanceName="cbp" 
        OnCallback="cbp_Callback" 
        CssFilePath="~/App_Themes/PlasticBlue/web/styles.css" CssPostfix="PlasticBlue">
        <loadingpanelimage url="~/App_Themes/PlasticBlue/Web/dvLoading.gif">
        </loadingpanelimage>
        <panelcollection>
            <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                <table style="width:100%;">      
                    <tr>
                        <td>
                            Tên nhóm
                        </td>
                        <td>
                            <dx:ASPxTextBox ID="txtName" runat="server" ClientIDMode="AutoID" 
                                CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue" 
                                SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css" Width="300px">
                                <validationsettings causesvalidation="True" display="Dynamic" 
                                    setfocusonerror="True" validationgroup="Group">
                                    <errorframestyle imagespacing="4px">
                                        <errortextpaddings paddingleft="4px" />
                                    </errorframestyle>
                                    <requiredfield errortext="Tên nhóm không được bỏ trống" isrequired="True" />
                                </validationsettings>
                            </dx:ASPxTextBox>
                        </td>
                    </tr>       
                    <tr>
                        <td>
                            Mô tả về nhóm
                        </td>
                        <td>
                            <dx:ASPxTextBox ID="txtDesc" runat="server" ClientIDMode="AutoID" 
                                CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue" 
                                SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css" Width="300px">
                            </dx:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <dx:ASPxValidationSummary ID="ASPxValidationSummary1" runat="server" 
                                ClientIDMode="AutoID" RenderMode="BulletedList" ShowErrorAsLink="False" 
                                ValidationGroup="Group">
                            </dx:ASPxValidationSummary>
                       </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <dx:ASPxButton ID="btnUpdate" runat="server" ClientIDMode="AutoID" 
                                CssFilePath="~/App_Themes/SoftOrange/{0}/styles.css" CssPostfix="SoftOrange" 
                                OnClick="btnUpdate_Click" 
                                SpriteCssFilePath="~/App_Themes/SoftOrange/{0}/sprite.css" Text="Cập Nhật" 
                                ValidationGroup="Group">
                            </dx:ASPxButton>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:HiddenField ID="hdGroup" runat="server" />
                        </td>
                    </tr>
                </table>
            </dx:PanelContent>
        </panelcollection>
    </dx:ASPxCallbackPanel>
        </dx:PopupControlContentControl>
</ContentCollection>
</dx:ASPxPopupControl>

