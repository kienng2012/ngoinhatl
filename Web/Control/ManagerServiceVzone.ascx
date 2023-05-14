<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ManagerServiceVzone.ascx.cs"
    Inherits="Web.Control.ManagerServiceVzone" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
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
    .icon_small_minigame img {
        width: 50px;
        height: 48px;
    }

    .style1 {
        width: 156px;
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
            Quản lý Bài viết
        </div>
    </div>
</div>
<div class="main-content_2">
    <div class="main_gridview">
        <asp:MultiView ID="mtvMain" runat="server">
            <asp:View ID="viewTable" runat="server">
                <div style="text-align: right">
                    <asp:LinkButton ID="linkbtnAdd" runat="server" CommandArgument="0" OnClick="linkbtnAdd_Click">Thêm mới</asp:LinkButton>
                </div>
                <div style="text-align: left">
                    <asp:Label ID="lblMessage" runat="server" Text="" Font-Bold="true"></asp:Label>
                </div>
                <dx:ASPxGridView ID="grvCateGame" runat="server" AutoGenerateColumns="False" Width="100%"
                    KeyFieldName="CS_ID" ClientIDMode="AutoID" OnRowDeleting="grvCateGame_RowDeleting"
                    CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                    CssPostfix="Office2010Blue">
                    <Columns>
                        <dx:GridViewDataTextColumn Caption="STT" VisibleIndex="0">
                            <DataItemTemplate>
                                <%# (Container.ItemIndex + 1)%>
                            </DataItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" />
                            <CellStyle HorizontalAlign="Center">
                            </CellStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="ID" FieldName="CS_ID" VisibleIndex="1" Width="60px">
                            <HeaderStyle HorizontalAlign="Center" />
                            <CellStyle HorizontalAlign="Center"></CellStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Tên Bài viết" FieldName="CS_Name" VisibleIndex="1">
                            <HeaderStyle HorizontalAlign="Center" />
                            <CellStyle HorizontalAlign="Center">
                            </CellStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Tên Danh mục" FieldName="C_CateName" ShowInCustomizationForm="True"
                            VisibleIndex="2">
                            <HeaderStyle HorizontalAlign="Center" />
                            <CellStyle HorizontalAlign="Center">
                            </CellStyle>
                        </dx:GridViewDataTextColumn>
                        <%--  <dx:GridViewDataTextColumn Caption="Cú pháp" FieldName="CS_Cmd" VisibleIndex="2">
                            <HeaderStyle HorizontalAlign="Center" />
                            <CellStyle HorizontalAlign="Center">
                            </CellStyle>
                        </dx:GridViewDataTextColumn>--%>
                        <dx:GridViewDataTextColumn Caption="Thao Tác" VisibleIndex="5" ShowInCustomizationForm="True">
                            <DataItemTemplate>
                                <%-- <a href="javascript:void(0)" onclick="OnUpdate(this,<%# Container.KeyValue %>)">Sửa</a><br />
                        <a href="javascript:void(0)" onclick="OnInsert(this,'0')">Thêm mới</a>--%>
                                <%--  <asp:LinkButton ID="linkbtnAdd" runat="server" CommandArgument="0" OnClick="linkbtnAdd_Click">Thêm mới</asp:LinkButton>--%>
                                <asp:LinkButton ID="linkbtnEdit" runat="server" CommandArgument='<%# Eval("CS_ID") %>'
                                    OnClick="linkbtnEdit_Click">Sửa</asp:LinkButton>
                            </DataItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" />
                            <CellStyle HorizontalAlign="Center">
                            </CellStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewCommandColumn Caption="Xóa" VisibleIndex="6">
                            <DeleteButton Text="Xóa" Visible="True">
                            </DeleteButton>
                            <ClearFilterButton Visible="True">
                            </ClearFilterButton>
                            <HeaderStyle HorizontalAlign="Center" />
                            <CellStyle HorizontalAlign="Center">
                            </CellStyle>
                        </dx:GridViewCommandColumn>
                    </Columns>
                    <SettingsBehavior ConfirmDelete="True" />
                    <Styles CssFilePath="~/App_Themes/Office2010Blue/{0}/styles.css"
                        CssPostfix="Office2010Blue">
                        <Header ImageSpacing="5px" SortingImageSpacing="5px">
                        </Header>
                        <LoadingPanel ImageSpacing="5px">
                        </LoadingPanel>
                    </Styles>
                    <ImagesFilterControl>
                        <LoadingPanel Url="~/App_Themes/Office2010Blue/GridView/Loading.gif">
                        </LoadingPanel>
                    </ImagesFilterControl>
                    <Images SpriteCssFilePath="~/App_Themes/Office2010Blue/{0}/sprite.css">
                        <LoadingPanelOnStatusBar Url="~/App_Themes/Office2010Blue/GridView/Loading.gif">
                        </LoadingPanelOnStatusBar>
                        <LoadingPanel Url="~/App_Themes/Office2010Blue/GridView/Loading.gif">
                        </LoadingPanel>
                    </Images>
                    <SettingsPager NumericButtonCount="25" PageSize="25">
                    </SettingsPager>
                    <Settings ShowFilterRow="True" />
                    <SettingsText ConfirmDelete="Bạn có chắc chắn xóa Bài viết này?" />
                    <StylesPager>
                        <PageNumber ForeColor="#3E4846">
                        </PageNumber>
                        <Summary ForeColor="#1E395B">
                        </Summary>
                    </StylesPager>
                    <StylesEditors ButtonEditCellSpacing="0">
                        <ProgressBar Height="25px">
                        </ProgressBar>
                    </StylesEditors>
                </dx:ASPxGridView>
                <asp:HiddenField ID="hdService" runat="server" />
            </asp:View>
            <asp:View ID="viewUpdate" runat="server">
                <table border="0" cellpadding="5" cellspacing="5" width="90%">
                    <tr>
                        <td class="style1">Tên Bài viết :
                        </td>
                        <td class="text_minigame">
                            <dx:ASPxTextBox ID="txtName" runat="server" Width="900px"
                                CssFilePath="~/App_Themes/Aqua/{0}/styles.css" CssPostfix="Aqua"
                                SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css">
                                <ValidationSettings>
                                    <ErrorFrameStyle ImageSpacing="4px">
                                        <ErrorTextPaddings PaddingLeft="4px" />
                                    </ErrorFrameStyle>
                                    <RequiredField ErrorText=" Bạn chưa nhập tên Bài viết!" IsRequired="True" />
                                </ValidationSettings>
                            </dx:ASPxTextBox>
                        </td>
                    </tr>
                    <%--<tr>
                        <td class="style1">Cú pháp:
                        </td>
                        <td>
                            <dx:ASPxTextBox ID="txtCMD" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Aqua/{0}/styles.css"
                                CssPostfix="Aqua" SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css"
                                Width="250px">
                                <ValidationSettings CausesValidation="True" SetFocusOnError="True" ValidationGroup="News">
                                    <ErrorFrameStyle ImageSpacing="4px">
                                        <ErrorTextPaddings PaddingLeft="4px" />
                                        <ErrorTextPaddings PaddingLeft="4px"></ErrorTextPaddings>
                                    </ErrorFrameStyle>
                                    <RequiredField ErrorText="Không được trống" IsRequired="True" />
                                    <RequiredField IsRequired="True" ErrorText="Cú pháp không được trống"></RequiredField>
                                </ValidationSettings>
                            </dx:ASPxTextBox>
                        </td>
                    </tr>--%>
                    <tr>
                        <td valign="top" class="style1">Chọn danh mục
                        </td>
                        <td>
                            <dx:ASPxComboBox ID="cbxCategory" runat="server" ClientIDMode="AutoID" ValueType="System.String"
                                Width="250px" CssFilePath="~/App_Themes/Aqua/{0}/styles.css"
                                CssPostfix="Aqua" LoadingPanelImagePosition="Top" ShowShadow="False"
                                SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css">
                                <LoadingPanelImage Url="~/App_Themes/Aqua/Editors/Loading.gif">
                                </LoadingPanelImage>
                                <DropDownButton>
                                    <Image>
                                        <SpriteProperties HottrackedCssClass="dxEditors_edtDropDownHover_Aqua"
                                            PressedCssClass="dxEditors_edtDropDownPressed_Aqua" />
                                    </Image>
                                </DropDownButton>
                                <ValidationSettings>
                                    <ErrorFrameStyle ImageSpacing="4px">
                                        <ErrorTextPaddings PaddingLeft="4px" />
                                    </ErrorFrameStyle>
                                </ValidationSettings>
                            </dx:ASPxComboBox>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" class="style1">Chọn avatar
                            <br />
                            <span style="color: #6699FF; font-size: 8pt; font-style: italic">(Chấp nhận các kiểu
                                file: jpeg, gif, png<br />
                                Dung lượng file tối đa: 1MB)</span>
                        </td>
                        <td>
                            <div style="width: 75px; height: 75px; border: 1px solid #F39128;">
                                <dx:ASPxImage ID="imageAvatar" runat="server" Height="75px" Width="75px">
                                </dx:ASPxImage>
                            </div>
                            <br />
                            <asp:FileUpload ID="fileAvatar"  runat="server" Width="350px" />

                        </td>
                    </tr>
                    <tr>
                        <td valign="top" class="style1">Chọn hình ảnh bài viết
                            <br />
                            <span style="color: #6699FF; font-size: 8pt; font-style: italic">(Chấp nhận các kiểu
                                file: jpeg, gif, png<br />
                                Dung lượng file tối đa: 1MB)</span>
                        </td>
                        <td>
                            <div style="width: 75px; height: 75px; border: 1px solid #F39128;">
                                <dx:ASPxImage ID="imageServiceView" runat="server" Height="75px" Width="75px">
                                </dx:ASPxImage>
                            </div>
                            <br />
                            <asp:FileUpload ID="fileUpload" AllowMultiple="true" runat="server" Width="350px" />

                        </td>
                    </tr>

                    <%--<tr>
                        <td>
                            Chọn nhiều hình ảnh
                        </td>
                        <td>
                            <asp:FileUpload AllowMultiple="true"  ID="fileuploadimages" runat="server" />
<asp:Button runat="server" ID="btnUpload" CssClass="btnStyle" Text="Upload Image" />
                        </td>
                    </tr>
                    <tr>--%>
                    <tr>
                        <td class="style1">Mô tả:
                        </td>
                        <td class="text_minigame">
                            <dx:ASPxMemo ID="txtDescription1" runat="server" Height="71px" Width="900px"
                                CssFilePath="~/App_Themes/Aqua/{0}/styles.css" CssPostfix="Aqua"
                                SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css">
                                <ValidationSettings>
                                    <ErrorFrameStyle ImageSpacing="4px">
                                        <ErrorTextPaddings PaddingLeft="4px" />
                                    </ErrorFrameStyle>
                                </ValidationSettings>
                            </dx:ASPxMemo>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">Content:
                        </td>
                        <td class="text_minigame">
                            <FCKeditorV2:FCKeditor ID="fckContent" runat="server" EnableViewState="False"
                                Height="350px">
                            </FCKeditorV2:FCKeditor>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">Hiển thị ở trang chủ:
                        </td>
                        <td>
                            <dx:ASPxCheckBox ID="ckboxDisplay" runat="server"
                                CssFilePath="~/App_Themes/Aqua/{0}/styles.css" CssPostfix="Aqua"
                                SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css" TextSpacing="2px">
                            </dx:ASPxCheckBox>
                        </td>
                    </tr>

                    <tr>
                        <td align="right" class="style1">
                            <dx:ASPxButton ID="btnAdd" runat="server" Text="Cập nhật" OnClick="btnAdd_Click"
                                CssFilePath="~/App_Themes/Aqua/{0}/styles.css" CssPostfix="Aqua" SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css">
                            </dx:ASPxButton>
                        </td>
                        <td align="left">
                            <dx:ASPxButton ID="btnCancel" runat="server" Text="Từ chối"
                                OnClick="btnCancel_Click" CssFilePath="~/App_Themes/Aqua/{0}/styles.css"
                                CssPostfix="Aqua" SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css"
                                CausesValidation="False">
                            </dx:ASPxButton>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">&nbsp;
                        </td>
                        <td>
                            <dx:ASPxLabel ID="lblStatus" runat="server" Text="" Font-Bold="true">
                            </dx:ASPxLabel>
                        </td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    </div>
</div>
