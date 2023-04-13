<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ManageCategorySub.ascx.cs"
    Inherits="Web.Control.ManageCategorySub" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
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
        ASPxClientEdit.ClearEditorsInContainerById("News");
        popup.ShowAtElement(element);
        //cbp.PerformCallback(keyValue);
    }
</script>
<div class="title-manager">
    <div class="bg-right">
    </div>
    <div class="bg-left">
    </div>
    <div class="bg-main">
        <div class="titleFunc">
            Quản lý Tin tứcc</div>
    </div>
</div>
<div class="main-content_2">
    <div class="main_gridview">
        <div style="text-align: left">
            <asp:Label ID="lblError" runat="server"></asp:Label>
        </div>
        

        <asp:MultiView ID="MultiView1" runat="server">
            <div style="text-align: right">
            <a href="javascript:void(0)" onclick="OnInsert(this,'0')">Thêm dịch vụ mới</a>
        </div>
            <asp:View ID="view1" runat="server">
                <dx:ASPxGridView ID="grvNews" runat="server" AutoGenerateColumns="False" ClientIDMode="AutoID"
                    CssFilePath="~/App_Themes/Aqua/{0}/styles.css" CssPostfix="Aqua"
                    Width="100%" KeyFieldName="CS_ID" OnRowDeleting="grvNews_RowDeleting">
                    <Columns>
                        <dx:GridViewDataTextColumn Caption="Tên Dịch Vụ" FieldName="CS_Name" VisibleIndex="0">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Mô tả" FieldName="CS_Description" 
                            VisibleIndex="1" Visible="False">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Thao Tác" VisibleIndex="4">
                            <HeaderStyle HorizontalAlign="Center" />
                            <DataItemTemplate>
                                <a href="javascript:void(0)" onclick="OnInsert(this,'0')">Thêm mới</a>
                                <asp:LinkButton ID="likbtn" runat="server" CommandArgument='<%# Eval("CS_ID") %>'
                                    OnClick="likbtn_Click">Sửa</asp:LinkButton>
                            </DataItemTemplate>
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
                    <SettingsPager PageSize="50">
                        <AllButton Text="All">
                        </AllButton>
                        <NextPageButton Text="Next &gt;">
                        </NextPageButton>
                        <PrevPageButton Text="&lt; Prev">
                        </PrevPageButton>
                    </SettingsPager>
                    <SettingsText ConfirmDelete="Bạn muốn xóa bản tin này?" />
                    <SettingsLoadingPanel ImagePosition="Top" />
                    <Images SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css">
                        <LoadingPanelOnStatusBar Url="~/App_Themes/Aqua/GridView/gvLoadingOnStatusBar.gif">
                        </LoadingPanelOnStatusBar>
                        <LoadingPanel Url="~/App_Themes/Aqua/GridView/Loading.gif">
                        </LoadingPanel>
                    </Images>
                    <ImagesEditors>
                        <DropDownEditDropDown>
                            <SpriteProperties HottrackedCssClass="dxEditors_edtDropDownHover_Aqua" 
                                PressedCssClass="dxEditors_edtDropDownPressed_Aqua" />
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
                    <ImagesFilterControl>
                        <LoadingPanel Url="~/App_Themes/Aqua/Editors/Loading.gif">
                        </LoadingPanel>
                    </ImagesFilterControl>
                    <Styles CssFilePath="~/App_Themes/Aqua/{0}/styles.css" CssPostfix="Aqua">
                        <LoadingPanel ImageSpacing="8px">
                        </LoadingPanel>
                    </Styles>
                    <StylesEditors>
                        <CalendarHeader Spacing="1px">
                        </CalendarHeader>
                        <ProgressBar Height="25px">
                        </ProgressBar>
                    </StylesEditors>
                </dx:ASPxGridView>
            </asp:View>
            <asp:View ID="view2" runat="server">
                <table style="width: 90%;">
                    <tr>
                        <td>
                            Tiêu đề:
                        </td>
                        <td>
                            <dx:ASPxTextBox ID="txtView2Name" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Aqua/{0}/styles.css"
                                CssPostfix="Aqua" SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css"
                                Width="300px">
                                <ValidationSettings SetFocusOnError="True" ValidationGroup="News" CausesValidation="True">
                                    <ErrorFrameStyle ImageSpacing="4px">
                                        <ErrorTextPaddings PaddingLeft="4px" />
                                    </ErrorFrameStyle>
                                    <RequiredField ErrorText="Không được bỏ trống" IsRequired="True" />
                                </ValidationSettings>
                            </dx:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Danh mục :
                        </td>
                        <td>
                            <dx:ASPxComboBox ID="cbxCateUpdate" runat="server" Width="300px" 
                                CssFilePath="~/App_Themes/Aqua/{0}/styles.css" CssPostfix="Aqua" 
                                LoadingPanelImagePosition="Top" ShowShadow="False" 
                                SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css" ValueType="System.String">
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
                                <td>
                                    Cú pháp:
                                </td>
                                <td>
                                    <dx:ASPxTextBox ID="txtCMDUpdate" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Aqua/{0}/styles.css"
                                        CssPostfix="Aqua" SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css"
                                        Width="300px">
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
                            </tr>

                    <tr>
                        <td>
                            Kiểu hiển thị:
                        </td>
                        <td>
                            <dx:ASPxComboBox ID="cbxTypeUpdate" runat="server" Width="300px" 
                                CssFilePath="~/App_Themes/Aqua/{0}/styles.css" CssPostfix="Aqua" 
                                LoadingPanelImagePosition="Top" ShowShadow="False" 
                                SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css" ValueType="System.String">
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
                        <td valign="top">
                            Chọn hình ảnh
                        </td>
                        <td>
                            <div style="width: 75px; height: 75px; border: 1px solid #F39128;">
                                <dx:ASPxImage ID="imageCateView2" runat="server" Height="75px" Width="75px">
                                </dx:ASPxImage>
                            </div>
                            <br />
                            <asp:FileUpload ID="view2FileUpload" runat="server" Width="300px" />
                            <br />
                            <span style="color:#6699FF ;font-size:8pt;font-style:italic">Chấp nhận các kiểu file: jpeg, gif, png<br />Dung lượng file tối đa: 1MB</span>
                           
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            Giới thiệu ngắn<br />
                            <span style="font:8pt;color:#6699FF;font-style:italic">(Giới hạn 120 ký tự)</span>  
                        </td>
                        <td>
                            <dx:ASPxMemo ID="txtDes" runat="server" Height="50px" Width="300px" 
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
                        <td valign="top">
                            Nội dung
                        </td>
                        <td>
                            <%--<FCKeditorV2:FCKeditor ID="fck2" runat="server" Height="600px" 
                                Width="100%" ClientIDMode="AutoID" BasePath="/FCKeditor/" 
                                EnableViewState="False">
                            </FCKeditorV2:FCKeditor>--%>
                            <FCKeditorV2:FCKeditor ID="fck2" runat="server" Height="320px" Width="100%"
                                BasePath="/FCKeditor/" EnableViewState="False">
                            </FCKeditorV2:FCKeditor>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HiddenField ID="hdNewId2" runat="server" />
                        </td>
                        <td>
                            <dx:ASPxLabel ID="lbErrorEdit" runat="server" ClientIDMode="AutoID">
                            </dx:ASPxLabel>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <table>
                                <tr>
                                    <td>
                                        <dx:ASPxButton ID="tbnUpdate2" runat="server" ClientIDMode="AutoID" Text="Cập Nhật"
                                            CssFilePath="~/App_Themes/Aqua/{0}/styles.css" CssPostfix="Aqua"
                                            SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css" OnClick="tbnUpdate2_Click"
                                            Width="100px">
                                        </dx:ASPxButton>
                                    </td>
                                    <td>
                                        <dx:ASPxButton ID="btnCancel" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Aqua/{0}/styles.css"
                                            CssPostfix="Aqua" OnClick="btnCancel_Click" SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css"
                                            Text="Cancel" Width="100px">
                                        </dx:ASPxButton>
                                        
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    
                </table>
            </asp:View>
        </asp:MultiView>
    </div>
</div>
<dx:ASPxPopupControl ID="popup" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Aqua/{0}/styles.css"
    CssPostfix="Aqua" HeaderText="Thao Tác" SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css"
    Width="800px" ClientInstanceName="popup" PopupHorizontalAlign="WindowCenter"
    PopupVerticalAlign="BottomSides" LoadingPanelImagePosition="Top">
    <LoadingPanelImage Url="~/App_Themes/Aqua/Web/Loading.gif">
    </LoadingPanelImage>
    <ContentStyle VerticalAlign="Top">
        <BorderBottom BorderColor="#E0E0E0" BorderStyle="Solid" BorderWidth="1px"></BorderBottom>
    </ContentStyle>
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
                                <td>
                                    Tiêu đề
                                </td>
                                <td>
                                    <dx:ASPxTextBox ID="txtNameInsert" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Aqua/{0}/styles.css"
                                        CssPostfix="Aqua" SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css"
                                        Width="300px">
                                        <ValidationSettings CausesValidation="True" SetFocusOnError="True" ValidationGroup="News">
                                            <ErrorFrameStyle ImageSpacing="4px">
                                                <ErrorTextPaddings PaddingLeft="4px" />
                                                <ErrorTextPaddings PaddingLeft="4px"></ErrorTextPaddings>
                                            </ErrorFrameStyle>
                                            <RequiredField ErrorText="Không được trống" IsRequired="True" />
                                            <RequiredField IsRequired="True" ErrorText="Kh&#244;ng được trống"></RequiredField>
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    Chọn danh mục
                                </td>
                                <td>
                                    <dx:ASPxComboBox ID="cbxCateInsert" runat="server" ClientIDMode="AutoID" ValueType="System.String"
                                        Width="200px" CssFilePath="~/App_Themes/Aqua/{0}/styles.css" 
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
                                <td>
                                    Cú pháp:
                                </td>
                                <td>
                                    <dx:ASPxTextBox ID="txtCMDInsert" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Aqua/{0}/styles.css"
                                        CssPostfix="Aqua" SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css"
                                        Width="300px">
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
                            </tr>
                            <tr>
                        <td>
                            Kiểu hiển thị :
                        </td>
                        <td>
                            <dx:ASPxComboBox ID="cbxTypeInsert" runat="server" ClientIDMode="AutoID" ValueType="System.String"
                                        Width="200px">
                            </dx:ASPxComboBox>
                        </td>
                    </tr>
                            <%--<tr> <td valign="top"> Giới thiệu
ngắn<br /> <dx:ASPxLabel ID="ASPxLabel6" runat="server" ClientIDMode="AutoID" Font-Italic="True"
Font-Size="8pt" ForeColor="#6699FF" Text="(Giới hạn 120 ký tự)"> </dx:ASPxLabel>
</td> <td> <dx:ASPxMemo ID="txtDespop" runat="server" ClientIDMode="AutoID" Height="71px"
Width="300px" > </dx:ASPxMemo> </td> </tr>--%>
                            <tr>
                                <td valign="top">
                                    Chọn hình ảnh
                                </td>
                                <td>
                                    <div style="width: 75px; height: 75px; border: 1px solid #F39128;">
                                        <dx:ASPxImage ID="imageCateView1" runat="server" Height="75px" Width="75px">
                                        </dx:ASPxImage>
                                    </div>
                                    <br />
                                    <asp:FileUpload ID="fileUpload" runat="server" Width="289px" />
                                    <br />
                                    <span style="color:#6699FF ;font-size:8pt;font-style:italic">Chấp nhận các kiểu file: jpeg, gif, png<br />Dung lượng file tối đa: 1MB</span>
                                    <%--<dx:ASPxLabel ID="ASPxLabel1" runat="server" ClientIDMode="AutoID" Font-Italic="True"
                                        Font-Size="8pt" ForeColor="#6699FF" Text="Chấp nhận các kiểu file: jpeg, gif, png">
                                    </dx:ASPxLabel>
                                    <br />
                                    <dx:ASPxLabel ID="ASPxLabel2" runat="server" ClientIDMode="AutoID" Font-Italic="True"
                                        Font-Size="8pt" ForeColor="#6699FF" Text="Dung lượng file tối
đa: 1MB">
                                    </dx:ASPxLabel>--%>
                                </td>
                            </tr>
                            <tr>
                        <td valign="top">
                            Giới thiệu ngắn<br />
                            <span style="font:8pt;color:#6699FF;font-style:italic">(Giới hạn 120 ký tự)</span>  
                        </td>
                        <td>
                            <dx:ASPxMemo ID="txtDespop" runat="server" Height="50px" Width="300px" 
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
                                <td valign="top">
                                    Nội dung
                                </td>
                                <td>
                                    <FCKeditorV2:FCKeditor ID="txtContent" runat="server" BasePath="/FCKeditor/"
                                        EnableViewState="False" Height="320px" Width="100%">
                                    </FCKeditorV2:FCKeditor>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:HiddenField ID="hdNews" runat="server" />
                                </td>
                                <td>
                                    <dx:ASPxLabel ID="lbErrorUpload" runat="server" ClientIDMode="AutoID">
                                    </dx:ASPxLabel>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <dx:ASPxButton ID="btnUpdate" runat="server" ClientIDMode="AutoID" CssFilePath="~/App_Themes/Aqua/{0}/styles.css"
                                        CssPostfix="Aqua" OnClick="btnUpdate_Click" SpriteCssFilePath="~/App_Themes/Aqua/{0}/sprite.css"
                                        Text="Cập Nhật" ValidationGroup="News">
                                    </dx:ASPxButton>
                                </td>
                            </tr>
                            
                        </table>
                    </dx:PanelContent>
                </PanelCollection>
            </dx:ASPxCallbackPanel>
        </dx:PopupControlContentControl>
    </ContentCollection>
</dx:ASPxPopupControl>
