<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ManagerCategory.ascx.cs" Inherits="Web.Control.ManagerCategory" %>
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
            Quản lý Danh Mục Giáo Dục
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
                    KeyFieldName="C_ID" ClientIDMode="AutoID" OnRowDeleting="grvCateGame_RowDeleting"
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
                        <dx:GridViewDataTextColumn Caption="ID" FieldName="C_ID" VisibleIndex="1">
                            <HeaderStyle HorizontalAlign="Center" />
                            <CellStyle HorizontalAlign="Center">
                            </CellStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Tên Danh Mục" FieldName="C_Name"
                            VisibleIndex="1">
                            <HeaderStyle HorizontalAlign="Center" />
                            <CellStyle HorizontalAlign="Center">
                            </CellStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Tên đường dẫn" FieldName="C_BaseURL"
                            VisibleIndex="2">
                            <HeaderStyle HorizontalAlign="Center" />
                            <CellStyle HorizontalAlign="Center">
                            </CellStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Từ khóa" FieldName="C_Keyword"
                            VisibleIndex="3">
                            <HeaderStyle HorizontalAlign="Center" />
                            <CellStyle HorizontalAlign="Center">
                            </CellStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Thao Tác" ShowInCustomizationForm="True" VisibleIndex="5">
                            <DataItemTemplate>
                                <%--<a href="javascript:void(0)" onclick="OnUpdate(this,<%# Container.KeyValue %>)">Sửa</a><br />
                                <a href="javascript:void(0)" onclick="OnInsert(this,'0')">Thêm mới</a>--%>
                                <%--  <asp:LinkButton ID="linkbtnAdd" runat="server" CommandArgument="0" OnClick="linkbtnAdd_Click">Thêm mới</asp:LinkButton>--%>
                                <asp:LinkButton ID="linkbtnEdit" runat="server" CommandArgument='<%# Eval("C_ID") %>'
                                    OnClick="linkbtnEdit_Click">Sửa</asp:LinkButton>
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
                    <SettingsText ConfirmDelete="Bạn có chắc chắn xóa danh mục này?" />
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
                <asp:HiddenField ID="hdService" runat="server" />
            </asp:View>

            <asp:View ID="viewUpdate" runat="server">
                <table border="0" cellpadding="5" cellspacing="5">
                    <tr>
                        <td class="label_minigame">Tên Danh mục:
                        </td>
                        <td class="text_minigame">
                            <dx:ASPxTextBox ID="txtName" runat="server" Width="250px">
                                <ValidationSettings>
                                    <RequiredField ErrorText=" Bạn chưa nhập tên Danh mục!" IsRequired="True" />
                                </ValidationSettings>
                            </dx:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="label_minigame">Đường dẫn:
                        </td>
                        <td class="text_minigame">
                            <dx:ASPxTextBox ID="txtBaseUrl" runat="server" Width="250px">
                                <ValidationSettings>
                                    <RequiredField ErrorText=" Bạn chưa nhập tên đường dẫn link gốc" IsRequired="True" />
                                </ValidationSettings>
                            </dx:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="label_minigame">Từ khóa:
                        </td>
                        <td class="text_minigame">
                            <dx:ASPxTextBox ID="txtKeyword" runat="server" Width="800px">
                            </dx:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="label_minigame">Meta description:
                        </td>
                        <td class="text_minigame">
                            <dx:ASPxTextBox ID="txtMetaDesc" TextMode="MultiLine" Rows="3" runat="server" Width="800px">
                            </dx:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="label_minigame">Ảnh :<br />
                            <span style="color: #6699FF; font-size: 8pt; font-style: italic">(Chấp nhận các kiểu
                                file: jpeg, gif, png<br />
                                Dung lượng file tối đa: 1MB)</span>
                        </td>
                        <td class="text_minigame">
                            <div style="width: 75px; height: 75px; border: 1px solid #F39128;">
                                <dx:ASPxImage ID="imageServiceView" runat="server" Height="75px" Width="75px">
                                </dx:ASPxImage>
                            </div>
                            <br />
                            <asp:FileUpload ID="fileUpload" runat="server" Width="350px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="label_minigame">Mô tả
                        </td>
                        <td class="text_minigame">
                            <%-- <dx:ASPxTextBox ID="txtDescription" runat="server" Width="250px" Height="70px">
                                            </dx:ASPxTextBox>--%>
                            <FCKeditorV2:FCKeditor ID="fckDescription" runat="server" BasePath="../fckeditor/" Height="350px">
                            </FCKeditorV2:FCKeditor>

                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <dx:ASPxButton ID="btnAdd" runat="server" Text="Update" OnClick="btnAdd_Click" CssFilePath="~/App_Themes/Aqua/{0}/styles.css"
                                CssPostfix="Aqua" SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css">
                            </dx:ASPxButton>
                        </td>
                        <td align="left">
                            <%--<dx:ASPxButton ID="btnClosePopup" runat="server" Text="Close" OnClick="btnClosePopup_Click"
                                CausesValidation="False" CssFilePath="~/App_Themes/Aqua/{0}/styles.css" CssPostfix="Aqua"
                                SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css">
                            </dx:ASPxButton>--%>
                            <td align="left">
                                <dx:ASPxButton ID="btnCancel" runat="server" Text="Từ chối"
                                    OnClick="btnCancel_Click" CssFilePath="~/App_Themes/Aqua/{0}/styles.css"
                                    CssPostfix="Aqua" SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css"
                                    CausesValidation="False">
                                </dx:ASPxButton>
                            </td>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
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
