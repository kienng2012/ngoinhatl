<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ManagerAdvertising.ascx.cs"
    Inherits="Web.Control.ManagerAdvertising" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v10.2" Namespace="DevExpress.Web.ASPxGridView"
    TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v10.2" Namespace="DevExpress.Web.ASPxEditors"
    TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v10.2" Namespace="DevExpress.Web.ASPxPopupControl"
    TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v10.2" Namespace="DevExpress.Web.ASPxCallbackPanel"
    TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v10.2" Namespace="DevExpress.Web.ASPxPanel"
    TagPrefix="dx" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<%@ Register Assembly="DevExpress.Web.v10.2" Namespace="DevExpress.Web.ASPxUploadControl"
    TagPrefix="dx1" %>
<style type="text/css">
    .dxeBase
    {
        font-family: Tahoma;
        font-size: 9pt;
    }
</style>
<script type="text/javascript">
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
            Quản lý tin tức</div>
    </div>
</div>
<div class="main-content_2">
    <div class="main_gridview">
        <table width="100%" border="0">
            <tr>
                <td align="left" width="50%">
                    <asp:Label ID="lblError" runat="server" Font-Bold="true"></asp:Label>
                </td>
                <td align="right" width="50%">
                    <a href="javascript:void(0)" onclick="OnInsert(this,'0')">Tạo Mới</a>
                </td>
            </tr>
        </table>
        <dx:ASPxGridView ID="grvAdv" runat="server" AutoGenerateColumns="False" ClientIDMode="AutoID"
            CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue"
            Width="100%" KeyFieldName="AdvID" OnRowDeleting="grvAdv_RowDeleting" OnDataBinding="grvAdv_DataBinding">
            <Columns>
                <dx:GridViewDataTextColumn Caption="Đường dẫn URL" FieldName="AdvURL" VisibleIndex="0">
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Mô tả " FieldName="AdvText" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataComboBoxColumn Caption="Vị trí" FieldName="AdvPosition" VisibleIndex="2"
                    ShowInCustomizationForm="True">
                    <PropertiesComboBox ValueType="System.String">
                    </PropertiesComboBox>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataCheckColumn Caption="Trạng thái" FieldName="IsActive" ShowInCustomizationForm="True"
                    VisibleIndex="3">
                    <PropertiesCheckEdit DisplayTextChecked="Đã kích hoạt" DisplayTextUnchecked="Chưa kích hoạt">
                    </PropertiesCheckEdit>
                </dx:GridViewDataCheckColumn>
                <dx:GridViewDataTextColumn Caption="Ngày tạo" FieldName="AddedDate" ShowInCustomizationForm="True"
                    VisibleIndex="4">
                    <PropertiesTextEdit DisplayFormatString="dd/MM/yyyy">
                    </PropertiesTextEdit>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Ngày hết hạn" FieldName="ExpireDate" ShowInCustomizationForm="True"
                    VisibleIndex="5">
                    <PropertiesTextEdit DisplayFormatString="dd/MM/yyyy">
                    </PropertiesTextEdit>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Thao Tác" VisibleIndex="6">
                    <HeaderStyle HorizontalAlign="Center" />
                    <DataItemTemplate>
                        <a href="javascript:void(0)" onclick="OnUpdate(this,<%# Container.KeyValue %>)">Sửa</a>
                        <a href="javascript:void(0)" onclick="OnInsert(this,'0')">Thêm mới</a>
                    </DataItemTemplate>
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewCommandColumn Caption="Xóa" VisibleIndex="7">
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
            <SettingsPager ShowDefaultImages="False" PageSize="50">
                <AllButton Text="All">
                </AllButton>
                <NextPageButton Text="Next &gt;">
                </NextPageButton>
                <PrevPageButton Text="&lt; Prev">
                </PrevPageButton>
            </SettingsPager>
            <Settings ShowFilterRow="True" />
            <SettingsText ConfirmDelete="Bạn muốn xóa bản tin này?" />
            <Images SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css">
                <LoadingPanelOnStatusBar Url="~/App_Themes/PlasticBlue/GridView/gvLoadingOnStatusBar.gif">
                </LoadingPanelOnStatusBar>
                <LoadingPanel Url="~/App_Themes/PlasticBlue/GridView/Loading.gif">
                </LoadingPanel>
            </Images>
            <ImagesFilterControl>
                <LoadingPanel Url="~/App_Themes/PlasticBlue/Editors/Loading.gif">
                </LoadingPanel>
            </ImagesFilterControl>
            <Styles CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue">
                <Header ImageSpacing="10px" SortingImageSpacing="10px">
                </Header>
            </Styles>
            <StylesEditors>
                <CalendarHeader Spacing="11px">
                </CalendarHeader>
                <ProgressBar Height="25px">
                </ProgressBar>
            </StylesEditors>
        </dx:ASPxGridView>
    </div>
</div>
<dx:ASPxPopupControl ID="popup" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css"
    CssPostfix="PlasticBlue" HeaderText="Thao Tác" SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css"
    Width="750px" ClientInstanceName="popup" PopupHorizontalAlign="WindowCenter"
    PopupVerticalAlign="BottomSides">
    <LoadingPanelImage Url="~/App_Themes/PlasticBlue/Web/dvLoading.gif">
    </LoadingPanelImage>
    <CloseButtonStyle>
        <Paddings Padding="0px" />
    </CloseButtonStyle>
    <ContentStyle>
        <BorderBottom BorderColor="#E0E0E0" BorderStyle="Solid" BorderWidth="1px" />
    </ContentStyle>
    <HeaderStyle>
        <Paddings PaddingBottom="4px" PaddingLeft="10px" PaddingRight="4px" PaddingTop="4px" />
    </HeaderStyle>
    <ContentCollection>
        <dx:PopupControlContentControl ID="PopupControlContentControl1" runat="server" SupportsDisabledAttribute="True">
            <dx:ASPxCallbackPanel ID="cbp" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/PlasticBlue/web/styles.css"
                CssPostfix="PlasticBlue" Width="100%" ClientInstanceName="cbp" OnCallback="cbp_Callback">
                <LoadingPanelImage Url="~/App_Themes/PlasticBlue/Web/dvLoading.gif">
                </LoadingPanelImage>
                <PanelCollection>
                    <dx:PanelContent ID="PanelContent1" runat="server" SupportsDisabledAttribute="True">
                        <table style="width: 100%;">
                            <tr>
                                <td valign="top">
                                    Chọn hình ảnh
                                </td>
                                <td>
                                    <asp:FileUpload ID="fileUpload" runat="server" Width="300px" />
                                    <br />
                                    <dx:ASPxLabel ID="ASPxLabel1" runat="server" ClientIDMode="AutoID" Font-Italic="True"
                                        Font-Size="8pt" ForeColor="#6699FF" Text="Chấp nhận các kiểu file: jpeg, gif, png">
                                    </dx:ASPxLabel>
                                    <br />
                                    <dx:ASPxLabel ID="ASPxLabel2" runat="server" ClientIDMode="AutoID" Font-Italic="True"
                                        Font-Size="8pt" ForeColor="#6699FF" Text="Dung lượng file tối đa: 1MB">
                                    </dx:ASPxLabel>
                                    <span style="color: #6699FF; font-size: 8pt">Chấp nhận các kiểu file: swf,jpeg, gif,
                                        png
                                        <br />
                                        Dung lượng dưới 10MB</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Ảnh minh họa:
                                </td>
                                <td>
                                    <div style="border: 1px solid #F39128; width: 100px; height: 85px">
                                        <%--<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
                                                    width="85" height="80">
                                                    <param name="movie" value="" />
                                                    <param name="quality" value="high" />
                                                    <embed src="" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer"
                                                        type="application/x-shockwave-flash" width="100" height="85"></embed>
                                                </object>--%>
                                        <asp:Image ID="imgPreview" runat="server" Height="85px" Width="100px" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Chiều rộng:
                                </td>
                                <td>
                                    <dx:ASPxTextBox ID="txtWidth" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css"
                                        CssPostfix="PlasticBlue" SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css"
                                        Width="130px">
                                        <ValidationSettings Display="Dynamic">
                                            <ErrorFrameStyle ImageSpacing="4px">
                                                <ErrorTextPaddings PaddingLeft="4px" />
                                            </ErrorFrameStyle>
                                            <RegularExpression ErrorText="Chiều rộng phải là số nguyên!" ValidationExpression="\d+" />
                                            <RequiredField ErrorText="Chiều rộng ko được để trống" IsRequired="True" />
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Chiều dài:
                                </td>
                                <td>
                                    <dx:ASPxTextBox ID="txtHeight" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css"
                                        CssPostfix="PlasticBlue" SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css"
                                        Width="130px">
                                        <ValidationSettings Display="Dynamic">
                                            <ErrorFrameStyle ImageSpacing="4px">
                                                <ErrorTextPaddings PaddingLeft="4px" />
                                            </ErrorFrameStyle>
                                            <RegularExpression ErrorText="Chiều dài phải là kiểu số nguyên" ValidationExpression="\d+" />
                                            <RequiredField ErrorText="Chiều dài không được để trống" IsRequired="True" />
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Kiểu file
                                </td>
                                <td>
                                    <%--<dx:ASPxTextBox ID="txtCount" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css"
                                        CssPostfix="PlasticBlue" SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css"
                                        Width="130px">
                                        <ValidationSettings Display="Dynamic">
                                            <ErrorFrameStyle ImageSpacing="4px">
                                                <ErrorTextPaddings PaddingLeft="4px" />
                                            </ErrorFrameStyle>
                                            <RegularExpression ValidationExpression="\d+" 
                                                ErrorText="Số lần click phải là kiểu số nguyên!" />
                                            <RequiredField ErrorText="Số lần click ko được để trống!" IsRequired="True" />
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>--%>
                                    <dx:ASPxComboBox ID="cbTypeFile" runat="server" ClientIDMode="AutoID" ValueType="System.String"
                                        Width="200px">
                                        <Items>
                                            <dx:ListEditItem Text="Flash" Value="0" Selected="True" />
                                            <dx:ListEditItem Text="Ảnh" Value="1" />
                                        </Items>
                                    </dx:ASPxComboBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Ngày tạo:
                                </td>
                                <td>
                                    <dx:ASPxDateEdit ID="txtCreateDate" runat="server" MaxDate="12/31/9999 23:59:59"
                                        MinDate="1753-01-01" Width="200px" DisplayFormatString="dd/MM/yyyy">
                                    </dx:ASPxDateEdit>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Ngày hết hạn:
                                </td>
                                <td>
                                    <dx:ASPxDateEdit ID="txtEndDate" runat="server" MaxDate="12/31/9999 23:59:59" MinDate="1753-01-01"
                                        Width="200px" DisplayFormatString="dd/MM/yyyy">
                                        <ValidationSettings CausesValidation="True">
                                            <RequiredField ErrorText="Ngày hết hạn không được trống" IsRequired="True" />
                                        </ValidationSettings>
                                    </dx:ASPxDateEdit>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Vị trí:
                                </td>
                                <td>
                                    <dx:ASPxComboBox ID="cbxAdvPosition" runat="server" ClientIDMode="AutoID" OnDataBinding="cbxAdvPosition_DataBinding"
                                        ValueType="System.String" SelectedIndex="1" Width="200px">
                                        <Items>
                                            <dx:ListEditItem Text="Banner Giữa" Value="Banner Giữa" />
                                            <dx:ListEditItem Text="Banner Phải" Value="Banner Phải" Selected="True" />
                                            <dx:ListEditItem Text="Banner Trái" Value="Banner Trái" />
                                        </Items>
                                    </dx:ASPxComboBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Đường dẫn URL:
                                </td>
                                <td>
                                    <dx:ASPxTextBox ID="txtAdvURL" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css"
                                        CssPostfix="PlasticBlue" SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css"
                                        Width="300px">
                                        <ValidationSettings Display="Dynamic">
                                            <ErrorFrameStyle ImageSpacing="4px">
                                                <ErrorTextPaddings PaddingLeft="4px" />
                                            </ErrorFrameStyle>
                                            <RequiredField ErrorText="Đường dẫn URL không được để trống" />
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Mô tả :
                                </td>
                                <td>
                                    <dx:ASPxTextBox ID="txtAdvText" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css"
                                        CssPostfix="PlasticBlue" SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css"
                                        Width="300px">
                                        <ValidationSettings>
                                            <ErrorFrameStyle ImageSpacing="4px">
                                                <ErrorTextPaddings PaddingLeft="4px" />
                                            </ErrorFrameStyle>
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Kích hoạt:
                                </td>
                                <td>
                                    <dx:ASPxCheckBox ID="cboxIsActive" runat="server">
                                    </dx:ASPxCheckBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    <dx:ASPxLabel ID="lbErrorUpload" runat="server" ClientIDMode="AutoID">
                                    </dx:ASPxLabel>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <dx:ASPxButton ID="btnUpdate" runat="server" ClientIDMode="AutoID" Text="Cập Nhật"
                                        CssFilePath="~/App_Themes/SoftOrange/{0}/styles.css" CssPostfix="SoftOrange"
                                        SpriteCssFilePath="~/App_Themes/SoftOrange/{0}/sprite.css" OnClick="btnUpdate_Click">
                                    </dx:ASPxButton>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    <asp:HiddenField ID="hdADV" runat="server" />
                                </td>
                            </tr>
                        </table>
                    </dx:PanelContent>
                </PanelCollection>
            </dx:ASPxCallbackPanel>
        </dx:PopupControlContentControl>
    </ContentCollection>
</dx:ASPxPopupControl>
