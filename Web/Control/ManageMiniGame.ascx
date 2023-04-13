<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ManageMiniGame.ascx.cs"
    Inherits="Web.Control.ManageMiniGame" %>
<%@ Register Assembly="DevExpress.Web.v10.2" Namespace="DevExpress.Web.ASPxCallbackPanel"
    TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v10.2" Namespace="DevExpress.Web.ASPxPopupControl"
    TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v10.2" Namespace="DevExpress.Web.ASPxGridView"
    TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v10.2" Namespace="DevExpress.Web.ASPxEditors"
    TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v10.2" Namespace="DevExpress.Web.ASPxPanel"
    TagPrefix="dx" %>
<style type="text/css">
    .icon_small_minigame img
    {
        width: 50px;
        height: 48px;
    }
    .table_popup .label_minigame
    {
        width: 200px;
    }
    .table_popup .note_form
    {
        color: Red;
        font-size: 11px;
    }
    .style1
    {
        height: 22px;
    }
</style>

<script type="text/javascript">
    function OnUpdate(element, keyValue) {
//        ASPxClientEdit.ClearEditorsInContainerById("updateUser");
        popup.ShowAtElement(element);
        cbo.PerformCallback(keyValue);
    }

    function OnInsert(element, keyValue) {
//        ASPxClientEdit.ClearEditorsInContainerById("updateUser");
        popup.ShowAtElement(element);
        cbo.PerformCallback(keyValue);
    }
</script>

<div class="title-manager">
    <div class="bg-right">
    </div>
    <div class="bg-left">
    </div>
    <div class="bg-main">
        <div class="titleFunc">
            Quản lý MiniGame</div>
    </div>
</div>
<div class="main-content_2">
    <div class="main_gridview">
        <div style="text-align: right">
            <a href="javascript:void(0)" onclick="OnInsert(this,'0')">Thêm mới</a>
        </div>
        <div style="text-align: left">
            <asp:Label ID="lblMessage" runat="server" Text="" Font-Bold="true"></asp:Label>
        </div>
        <dx:ASPxGridView ID="grvMiniGame" runat="server" AutoGenerateColumns="False" Width="100%"
            KeyFieldName="MG_ID" ClientIDMode="AutoID" OnRowDeleting="grvMiniGame_RowDeleting"
            CssFilePath="~/App_Themes/Aqua/{0}/styles.css" CssPostfix="Aqua">
            <Columns>
                <dx:GridViewDataTextColumn Caption="STT" VisibleIndex="0">
                    <DataItemTemplate>
                        <%# (Container.ItemIndex + 1)%>
                    </DataItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Tên Game" FieldName="MG_Name" 
                    VisibleIndex="1">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataImageColumn Caption="Ảnh mô tả" FieldName="MG_ImageUrl" 
                    VisibleIndex="2">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle CssClass="icon_small_minigame" HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataImageColumn>
                <dx:GridViewDataTextColumn Caption="Ngày tạo" FieldName="MG_CreateDate" 
                    VisibleIndex="3">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Thao Tác" ShowInCustomizationForm="True" 
                    VisibleIndex="4">
                    <DataItemTemplate>
                        <a href="javascript:void(0)" onclick="OnUpdate(this,<%# Container.KeyValue %>)">Sửa</a><br />
                        <a href="javascript:void(0)" onclick="OnInsert(this,'0')">Thêm mới</a>
                    </DataItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewCommandColumn Caption="Xóa" VisibleIndex="5">
                    <DeleteButton Text="Xóa" Visible="True">
                    </DeleteButton>
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewCommandColumn>
            </Columns>
            <SettingsBehavior ConfirmDelete="True" />
            <Styles CssFilePath="~/App_Themes/Aqua/{0}/styles.css" CssPostfix="Aqua">
                <LoadingPanel ImageSpacing="8px">
                </LoadingPanel>
            </Styles>
            <SettingsLoadingPanel ImagePosition="Top" />
            <ImagesFilterControl>
                <LoadingPanel Url="~/App_Themes/Aqua/Editors/Loading.gif">
                </LoadingPanel>
            </ImagesFilterControl>
            <Images SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css">
                <LoadingPanelOnStatusBar Url="~/App_Themes/Aqua/GridView/gvLoadingOnStatusBar.gif">
                </LoadingPanelOnStatusBar>
                <LoadingPanel Url="~/App_Themes/Aqua/GridView/Loading.gif">
                </LoadingPanel>
            </Images>
            <SettingsText ConfirmDelete="Bạn có chắc chắn xóa game này?" />
            <StylesEditors>
                <CalendarHeader Spacing="1px">
                </CalendarHeader>
                <ProgressBar Height="25px">
                </ProgressBar>
            </StylesEditors>
            <ImagesEditors>
                <DropDownEditDropDown>
                    <SpriteProperties HottrackedCssClass="dxEditors_edtDropDownHover_Aqua" PressedCssClass="dxEditors_edtDropDownPressed_Aqua" />
                </DropDownEditDropDown>
                <SpinEditIncrement>
                    <SpriteProperties HottrackedCssClass="dxEditors_edtSpinEditIncrementImageHover_Aqua"
                        PressedCssClass="dxEditors_edtSpinEditIncrementImagePressed_Aqua" />
                </SpinEditIncrement>
                <SpinEditDecrement>
                    <SpriteProperties HottrackedCssClass="dxEditors_edtSpinEditDecrementImageHover_Aqua"
                        PressedCssClass="dxEditors_edtSpinEditDecrementImagePressed_Aqua" />
                </SpinEditDecrement>
                <SpinEditLargeIncrement>
                    <SpriteProperties HottrackedCssClass="dxEditors_edtSpinEditLargeIncImageHover_Aqua"
                        PressedCssClass="dxEditors_edtSpinEditLargeIncImagePressed_Aqua" />
                </SpinEditLargeIncrement>
                <SpinEditLargeDecrement>
                    <SpriteProperties HottrackedCssClass="dxEditors_edtSpinEditLargeDecImageHover_Aqua"
                        PressedCssClass="dxEditors_edtSpinEditLargeDecImagePressed_Aqua" />
                </SpinEditLargeDecrement>
            </ImagesEditors>
        </dx:ASPxGridView>
        <dx:ASPxPopupControl ID="popup" ClientIDMode="AutoID" ClientInstanceName="popup"
            runat="server" Height="450px" Width="757px" Style="margin-right: 0px; margin-bottom: 0px;"
            CssFilePath="~/App_Themes/Aqua/{0}/styles.css" CssPostfix="Aqua" LoadingPanelImagePosition="Top"
            SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css" HeaderText="Quản lý danh sách Game"
            PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="BottomSides">
            <ContentStyle VerticalAlign="Top">
            </ContentStyle>
            <LoadingPanelImage Url="~/App_Themes/Aqua/Web/Loading.gif">
            </LoadingPanelImage>
            <ContentCollection>
                <dx:PopupControlContentControl runat="server">
                    <dx:ASPxCallbackPanel ID="cbo" runat="server" Width="100%" ClientInstanceName="cbo"
                        Height="100%" ClientIDMode="AutoID" OnCallback="cbo_Callback" CssFilePath="~/App_Themes/Aqua/{0}/styles.css"
                        CssPostfix="Aqua" LoadingPanelImagePosition="Top">
                        <LoadingPanelImage Url="~/App_Themes/Aqua/Web/Loading.gif">
                        </LoadingPanelImage>
                        <PanelCollection>
                            <dx:PanelContent runat="server">
                                <table class="table_popup" border="0" cellspacing="5" width="100%">
                                    <tr>
                                        <td class="label_minigame" style="width: 139px">
                                            Tên Game
                                        </td>
                                        <td class="text_minigame">
                                            <dx:ASPxTextBox ID="txtName" runat="server" Width="200px">
                                                <ValidationSettings>
                                                    <RequiredField ErrorText=" Bạn chưa nhập tên Game!" IsRequired="True" />
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="label_minigame" style="width: 139px">
                                            Mô tả
                                        </td>
                                        <td class="text_minigame">
                                            <dx:ASPxTextBox ID="txtDescription" runat="server" Width="350px" Height="40px">
                                                <ValidationSettings>
                                                    <RequiredField ErrorText="Bạn phải nhập mô tả game!" IsRequired="True" />
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="label_minigame" style="width: 139px">
                                            Hướng dẫn chơi
                                        </td>
                                        <td class="text_minigame">
                                            <dx:ASPxTextBox ID="txtHelp" runat="server" Width="350px" Height="40px">
                                                <ValidationSettings>
                                                    <RequiredField ErrorText="Bạn phải nhập hướng dẫn chơi game!" IsRequired="True" />
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="label_minigame" style="width: 139px">
                                            Ảnh mô tả
                                            <br />
                                            <span class="note_form">(*.jpg, *.png, *.gif)</span>
                                        </td>
                                        <td class="text_minigame">
                                            <div style="border: 1px solid #F39128; width: 85px; height: 80px">
                                                <asp:Image ID="imageGames" runat="server" Height="80px" Width="85px" />
                                            </div>
                                            <br />
                                            <asp:FileUpload ID="fuloadImageGame" runat="server" />
                                            <br />
                                            <asp:Label ID="lblUploadImage" runat="server" Text="" Font-Size="11px" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="label_minigame" style="width: 139px">
                                            Liên kết game<br />
                                            <span class="note_form">(*.swf)</span>
                                        </td>
                                        <td class="text_minigame">
                                            <div style="border: 1px solid #F39128; width: 85px; height: 80px">
                                                <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
                                                    width="85" height="80">
                                                    <param name="movie" value="<%=swfFileName %>" />
                                                    <param name="quality" value="high" />
                                                    <embed src="<%=swfFileName %>" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer"
                                                        type="application/x-shockwave-flash" width="85" height="80"></embed>
                                                </object>
                                            </div>
                                            <br />
                                            <asp:FileUpload ID="fuploadLinkGame" runat="server" />
                                            <br />
                                            <asp:Label ID="lblUploadGame" runat="server" Text="" Font-Size="11px" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="label_minigame" style="width: 139px">
                                            Danh mục game:
                                        </td>
                                        <td class="text_minigame">
                                            <dx:ASPxComboBox ID="cbCateGame" runat="server" ValueType="System.String" Width="150px">
                                            </dx:ASPxComboBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <dx:ASPxButton ID="btnAdd" runat="server" Text="Update" OnClick="btnAdd_Click" CssFilePath="~/App_Themes/Aqua/{0}/styles.css"
                                                CssPostfix="Aqua" SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css">
                                            </dx:ASPxButton>
                                        </td>
                                        <td align="left">
                                            <dx:ASPxButton ID="btnClosePopup" runat="server" Text="Close" OnClick="btnClosePopup_Click"
                                                CausesValidation="False" CssFilePath="~/App_Themes/Aqua/{0}/styles.css" CssPostfix="Aqua"
                                                SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css">
                                            </dx:ASPxButton>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:HiddenField ID="hdCard" runat="server" />
                                        </td>
                                        <td>
                                            <dx:ASPxLabel ID="lblStatus" runat="server" Text="" Font-Bold="true">
                                            </dx:ASPxLabel>
                                        </td>
                                    </tr>
                                </table>
                            </dx:PanelContent>
                        </PanelCollection>
                    </dx:ASPxCallbackPanel>
                </dx:PopupControlContentControl>
            </ContentCollection>
        </dx:ASPxPopupControl>
    </div>
</div>
