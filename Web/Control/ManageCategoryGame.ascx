<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ManageCategoryGame.ascx.cs"
    Inherits="Web.Control.ManageCategoryGame" %>
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
    .style1
    {
        height: 23px;
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
            Quản lý Danh Mục Game</div>
    </div>
</div>
<div class="main-content_2">
    <div class="main_gridview">
        <div style="text-align:right">
            <a href="javascript:void(0)" onclick="OnInsert(this,'0')">Thêm mới</a>
        </div>
        
        <div style="text-align:left">
            <asp:Label ID="lblMessage" runat="server" Text="" Font-Bold="true"></asp:Label>
        </div>
        <dx:ASPxGridView ID="grvCateGame" runat="server" AutoGenerateColumns="False" Width="100%"
            KeyFieldName="CG_ID" ClientIDMode="AutoID" OnRowDeleting="grvCateGame_RowDeleting"
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
                <dx:GridViewDataTextColumn Caption="ID" FieldName="CG_ID" VisibleIndex="1">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Tên Danh Mục Game" FieldName="CG_Name" VisibleIndex="1">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Mô tả" FieldName="CG_Description" VisibleIndex="2">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Thao Tác" ShowInCustomizationForm="True" VisibleIndex="5">
                    <DataItemTemplate>
                        <a href="javascript:void(0)" onclick="OnUpdate(this,<%# Container.KeyValue %>)">Sửa</a><br />
                        <a href="javascript:void(0)" onclick="OnInsert(this,'0')">Thêm mới</a>
                    </DataItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewCommandColumn Caption="Xóa" VisibleIndex="6">
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
            <SettingsText ConfirmDelete="Bạn có chắc chắn xóa danh mục game này?" />
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
            runat="server" Height="250px" Width="100%" Style="margin-right: 0px" CssFilePath="~/App_Themes/Aqua/{0}/styles.css"
            CssPostfix="Aqua" LoadingPanelImagePosition="Top" SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css"
            HeaderText="Quản lý danh mục Game">
            <ContentStyle VerticalAlign="Top">
            </ContentStyle>
            <LoadingPanelImage Url="~/App_Themes/Aqua/Web/Loading.gif">
            </LoadingPanelImage>
            <ContentCollection>
                <dx:PopupControlContentControl ID="PopupControlContentControl1" runat="server">
                    <dx:ASPxCallbackPanel ID="cbo" runat="server" Width="100%" ClientInstanceName="cbo"
                        ClientIDMode="AutoID" OnCallback="cbo_Callback" CssFilePath="~/App_Themes/Aqua/{0}/styles.css"
                        CssPostfix="Aqua" LoadingPanelImagePosition="Top">
                        <LoadingPanelImage Url="~/App_Themes/Aqua/Web/Loading.gif">
                        </LoadingPanelImage>
                        <PanelCollection>
                            <dx:PanelContent ID="PanelContent1" runat="server">
                                <table border="0" cellpadding="5" cellspacing="5">
                                    <tr>
                                        <td class="label_minigame">
                                            Danh mục game:
                                        </td>
                                        <td class="text_minigame">
                                            <dx:ASPxTextBox ID="txtName" runat="server" Width="250px">
                                                <ValidationSettings>
                                                    <RequiredField ErrorText=" Bạn chưa nhập tên Danh mục Game!" IsRequired="True" />
                                                </ValidationSettings>
                                            </dx:ASPxTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="label_minigame">
                                            Mô tả
                                        </td>
                                        <td class="text_minigame">
                                            <dx:ASPxTextBox ID="txtDescription" runat="server" Width="250px" Height="70px">
                                            </dx:ASPxTextBox>
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
                                        <td >
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
