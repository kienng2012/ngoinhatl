<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ManagerUser.ascx.cs" Inherits="Web.Control.User" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v10.2" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v10.2" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v10.2" Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v10.2" Namespace="DevExpress.Web.ASPxCallbackPanel" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v10.2" Namespace="DevExpress.Web.ASPxPanel" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v10.2" Namespace="DevExpress.Web.ASPxHiddenField" TagPrefix="dx" %>

<script type="text/javascript">

    function OnUpdate(element, keyValue) {
        ASPxClientEdit.ClearEditorsInContainerById("updateUser");
        popup.ShowAtElement(element);
        cbPopup.PerformCallback(keyValue);
    }

    function OnInsert(element, keyValue) {
        ASPxClientEdit.ClearEditorsInContainerById("updateUser");
        popup.ShowAtElement(element);
        cbPopup.PerformCallback(keyValue);
    }
</script>

<div class="title-manager">
    <div class="bg-right">
    </div>
    <div class="bg-left">
    </div>
    <div class="bg-main">
        <div class="titleFunc">
            Quản lý người dùng
        </div>
    </div>
</div>
<div class="main-content_2">
    <div class="main_gridview">
        <asp:Label ID="lblError" runat="server"></asp:Label><br />
        <a href="javascript:void(0)" onclick="OnInsert(this,'0')">Tạo Mới Quản Trị</a>
        <dx:ASPxGridView ID="grdUser" runat="server" AutoGenerateColumns="False"
            CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue"
            KeyFieldName="U_ID" OnRowDeleting="grdUser_RowDeleting"
            Width="100%" ClientIDMode="AutoID" OnDataBinding="grdUser_DataBinding">
            <Settings ShowFilterRow="True" />
            <SettingsLoadingPanel ImagePosition="Top" />
            <SettingsEditing EditFormColumnCount="2" PopupEditFormModal="true"
                PopupEditFormWidth="300px" />
            <Columns>
                <dx:GridViewDataTextColumn Caption="STT" VisibleIndex="0">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                    <DataItemTemplate>
                        <%#Container.ItemIndex + 1 %>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Tên đăng nhập" FieldName="U_UserName"
                    Settings-AllowSort="False" VisibleIndex="0">
                    <PropertiesTextEdit>













                        <ValidationSettings RequiredField-IsRequired="true">












                            <RequiredField IsRequired="True"></RequiredField>












                        </ValidationSettings>













                    </PropertiesTextEdit>
                    <Settings AllowSort="False" />
                    <EditFormSettings VisibleIndex="0" />

                    <Settings AllowSort="False"></Settings>

                    <EditFormSettings VisibleIndex="0"></EditFormSettings>

                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Mật khẩu" FieldName="U_Password"
                    Settings-AllowSort="False" VisibleIndex="1">
                    <PropertiesTextEdit Password="True">
                    </PropertiesTextEdit>
                    <Settings AllowSort="False" />
                    <EditFormSettings VisibleIndex="1" />

                    <Settings AllowSort="False"></Settings>

                    <EditFormSettings VisibleIndex="1"></EditFormSettings>

                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Họ tên" FieldName="U_FullName"
                    Settings-AllowSort="False" VisibleIndex="2">
                    <Settings AllowSort="False" />
                    <PropertiesTextEdit>













                        <ValidationSettings RequiredField-IsRequired="true">












                            <RequiredField IsRequired="True"></RequiredField>












                        </ValidationSettings>













                    </PropertiesTextEdit>
                    <EditFormSettings VisibleIndex="2" />

                    <Settings AllowSort="False"></Settings>

                    <EditFormSettings VisibleIndex="2"></EditFormSettings>

                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataComboBoxColumn Caption="Nhóm" FieldName="G_Name"
                    VisibleIndex="3">
                    <PropertiesComboBox ValueType="System.String"></PropertiesComboBox>
                    <Settings AllowAutoFilter="True" />

                    <Settings AllowAutoFilter="True"></Settings>

                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataCheckColumn Caption="Trạng thái" FieldName="U_Status"
                    Settings-AllowSort="False" VisibleIndex="4"
                    HeaderStyle-HorizontalAlign="Center">
                    <Settings AllowSort="False" />
                    <PropertiesCheckEdit DisplayTextChecked="Đã kích hoạt"
                        DisplayTextUnchecked="Chưa kích hoạt">













                        <ValidationSettings>












                            <RequiredField IsRequired="true" />












                        </ValidationSettings>













                    </PropertiesCheckEdit>
                    <EditFormSettings VisibleIndex="3" />

                    <Settings AllowSort="False" AllowAutoFilter="True"></Settings>

                    <EditFormSettings VisibleIndex="3"></EditFormSettings>

                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                </dx:GridViewDataCheckColumn>
                <dx:GridViewDataTextColumn Caption="Phân Quyền" VisibleIndex="5">
                    <DataItemTemplate>
                        <a href="<%# Eval("URLPhanQuyen") %>">Phân quyền </a>
                    </DataItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Thao Tác" VisibleIndex="6">
                    <DataItemTemplate>
                        <a href="javascript:void(0)" onclick="OnUpdate(this,<%# Container.KeyValue %>)">Sửa</a>
                        <a href="javascript:void(0)" onclick="OnInsert(this,'0')">Thêm mới</a>
                    </DataItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewCommandColumn Caption="Xóa" VisibleIndex="7">
                    <DeleteButton Text="Xóa"
                        Visible="True">
                    </DeleteButton>
                    <ClearFilterButton Visible="True"></ClearFilterButton>
                </dx:GridViewCommandColumn>
            </Columns>
            <SettingsBehavior ConfirmDelete="True" />

            <SettingsBehavior ConfirmDelete="True"></SettingsBehavior>

            <SettingsPager PageSize="50" ShowDefaultImages="False">
                <AllButton Text="All">
                </AllButton>
                <NextPageButton Text="Next &gt;">
                </NextPageButton>
                <PrevPageButton Text="&lt; Prev">
                </PrevPageButton>
            </SettingsPager>

            <SettingsEditing PopupEditFormWidth="300px" PopupEditFormModal="True"></SettingsEditing>

            <Settings ShowFilterRow="True"></Settings>

            <SettingsText ConfirmDelete="Bạn có muốn xóa người dùng này không?" />

            <SettingsText ConfirmDelete="Bạn có chắc chắn muốn xóa user này không?"></SettingsText>

            <SettingsLoadingPanel ImagePosition="Top"></SettingsLoadingPanel>

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

            <Styles CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css"
                CssPostfix="PlasticBlue">
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
<dx:ASPxPopupControl ID="popup" runat="server" Width="450px"
    HeaderText="Thêm Quản Trị Viên" ClientIDMode="AutoID"
    CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue"
    SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css"
    ClientInstanceName="popup" FooterText="" LoadingPanelImagePosition="Top"
    Modal="True" PopupHorizontalAlign="WindowCenter"
    PopupVerticalAlign="BottomSides">
    <loadingpanelimage url="~/App_Themes/PlasticBlue/Web/dvLoading.gif">
    </loadingpanelimage>
    <closebuttonstyle>
        <paddings padding="0px" />
        <paddings padding="0px"></paddings>
    </closebuttonstyle>
    <contentstyle>
        <borderbottom bordercolor="#E0E0E0" borderstyle="Solid" borderwidth="1px" />
        <borderbottom bordercolor="#E0E0E0" borderstyle="Solid" borderwidth="1px"></borderbottom>
    </contentstyle>
    <headerstyle>
        <paddings paddingbottom="4px" paddingleft="10px" paddingright="4px"
            paddingtop="4px" />
        <paddings paddingleft="10px" paddingtop="4px" paddingright="4px" paddingbottom="4px"></paddings>
    </headerstyle>
    <contentcollection>
        <dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
            <dx:ASPxCallbackPanel ID="cbPopup" runat="server"
                ClientIDMode="AutoID" Width="600px" OnCallback="cbPopup_Callback"
                ClientInstanceName="cbPopup"
                CssFilePath="~/App_Themes/PlasticBlue/web/styles.css" CssPostfix="PlasticBlue">
                <loadingpanelimage url="~/App_Themes/PlasticBlue/Web/dvLoading.gif">
                </loadingpanelimage>
                <panelcollection>
                    <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                        <table width="100%">
                            <tr>
                                <td>Tên Đăng Nhập</td>
                                <td>
                                    <dx:ASPxTextBox ID="txtUserName" runat="server" ClientIDMode="AutoID"
                                        CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue"
                                        SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css" Width="300px">
                                        <ValidationSettings CausesValidation="True" Display="Dynamic"
                                            SetFocusOnError="True" ValidationGroup="User">
                                            <ErrorFrameStyle ImageSpacing="4px">
                                                <ErrorTextPaddings PaddingLeft="4px" />
                                                <ErrorTextPaddings PaddingLeft="4px"></ErrorTextPaddings>
                                            </ErrorFrameStyle>
                                            <RequiredField ErrorText="Tên đăng nhập không được bỏ trống"
                                                IsRequired="True" />

                                            <RequiredField IsRequired="True" ErrorText="T&#234;n đăng nhập kh&#244;ng được bỏ trống"></RequiredField>
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Mật Khẩu</td>
                                <td>
                                    <dx:ASPxTextBox ID="txtPass" runat="server" ClientIDMode="AutoID"
                                        CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue"
                                        Password="True" SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css"
                                        Width="300px">
                                        <ValidationSettings CausesValidation="True" Display="Dynamic"
                                            SetFocusOnError="True" ValidationGroup="User">
                                            <ErrorFrameStyle ImageSpacing="4px">
                                                <ErrorTextPaddings PaddingLeft="4px" />
                                                <ErrorTextPaddings PaddingLeft="4px"></ErrorTextPaddings>
                                            </ErrorFrameStyle>
                                            <RequiredField ErrorText="Mật khẩu không được bỏ trống" IsRequired="True" />

                                            <RequiredField IsRequired="True" ErrorText="Mật khẩu kh&#244;ng được bỏ trống"></RequiredField>
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Tên Đầy Đủ</td>
                                <td>
                                    <dx:ASPxTextBox ID="txtFullName" runat="server" ClientIDMode="AutoID"
                                        CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue"
                                        SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css" Width="300px">
                                        <ValidationSettings>
                                            <ErrorFrameStyle ImageSpacing="4px">
                                                <ErrorTextPaddings PaddingLeft="4px" />
                                                <ErrorTextPaddings PaddingLeft="4px"></ErrorTextPaddings>
                                            </ErrorFrameStyle>
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Ngày Sinh</td>
                                <td>
                                    <dx:ASPxDateEdit ID="txtDOB" runat="server" ClientIDMode="AutoID"
                                        CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue"
                                        DisplayFormatString="dd/MM/yyyy"
                                        SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css" Width="300px"
                                        EditFormat="Custom" EditFormatString="dd/MM/yyyy">
                                        <ValidationSettings>
                                            <ErrorFrameStyle ImageSpacing="4px">
                                                <ErrorTextPaddings PaddingLeft="4px" />
                                                <ErrorTextPaddings PaddingLeft="4px"></ErrorTextPaddings>
                                            </ErrorFrameStyle>
                                        </ValidationSettings>
                                    </dx:ASPxDateEdit>
                                </td>
                            </tr>
                            <tr>
                                <td>Địa Chỉ</td>
                                <td>
                                    <dx:ASPxTextBox ID="txtAddress" runat="server" ClientIDMode="AutoID"
                                        CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue"
                                        SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css" Width="300px">
                                        <ValidationSettings>
                                            <ErrorFrameStyle ImageSpacing="4px">
                                                <ErrorTextPaddings PaddingLeft="4px" />
                                                <ErrorTextPaddings PaddingLeft="4px"></ErrorTextPaddings>
                                            </ErrorFrameStyle>
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Số Điện Thoại</td>
                                <td>
                                    <dx:ASPxTextBox ID="txtMobile" runat="server" ClientIDMode="AutoID"
                                        CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue"
                                        SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css" Width="300px">
                                        <ValidationSettings SetFocusOnError="True" ValidationGroup="User">
                                            <ErrorFrameStyle ImageSpacing="4px">
                                                <ErrorTextPaddings PaddingLeft="4px" />
                                                <ErrorTextPaddings PaddingLeft="4px"></ErrorTextPaddings>
                                            </ErrorFrameStyle>
                                            <RegularExpression ErrorText="Số điện thoại phải là số"
                                                ValidationExpression="[0-9]+" />

                                            <RegularExpression ErrorText="Số điện thoại phải l&#224; số" ValidationExpression="[0-9]+"></RegularExpression>
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Email</td>
                                <td>
                                    <dx:ASPxTextBox ID="txtEmail" runat="server" ClientIDMode="AutoID"
                                        CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue"
                                        SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css" Width="300px">
                                        <ValidationSettings SetFocusOnError="True" ValidationGroup="User">
                                            <ErrorFrameStyle ImageSpacing="4px">
                                                <ErrorTextPaddings PaddingLeft="4px" />
                                                <ErrorTextPaddings PaddingLeft="4px"></ErrorTextPaddings>
                                            </ErrorFrameStyle>
                                            <RegularExpression ErrorText="Email sai định dạng"
                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />

                                            <RegularExpression ErrorText="Email sai định dạng" ValidationExpression="\w+([-+.&#39;]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></RegularExpression>
                                        </ValidationSettings>
                                    </dx:ASPxTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Nhóm</td>
                                <td>
                                    <dx:ASPxComboBox ID="cbbGroup" runat="server" ClientIDMode="AutoID"
                                        CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue"
                                        SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css"
                                        ValueType="System.String" Width="300px">
                                        <LoadingPanelImage Url="~/App_Themes/PlasticBlue/Editors/Loading.gif">
                                        </LoadingPanelImage>
                                        <ValidationSettings>
                                            <ErrorFrameStyle ImageSpacing="4px">
                                                <ErrorTextPaddings PaddingLeft="4px" />
                                                <ErrorTextPaddings PaddingLeft="4px"></ErrorTextPaddings>
                                            </ErrorFrameStyle>
                                        </ValidationSettings>
                                    </dx:ASPxComboBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Kích hoạt</td>
                                <td>
                                    <dx:ASPxCheckBox ID="cbActive" runat="server" ClientIDMode="AutoID"
                                        CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue"
                                        SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css"
                                        Text="Check để kích hoạt" TextSpacing="2px" Width="300px">
                                    </dx:ASPxCheckBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <dx:ASPxValidationSummary ID="ASPxValidationSummary1" runat="server"
                                        ClientIDMode="AutoID" ValidationGroup="User" RenderMode="BulletedList"
                                        ShowErrorAsLink="False">
                                    </dx:ASPxValidationSummary>
                                </td>

                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:HiddenField ID="hdUser" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>&#160;</td>
                                <td>&#160;</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <dx:ASPxButton ID="btnUpdate" runat="server"
                                        ClientIDMode="AutoID" CssFilePath="~/App_Themes/SoftOrange/{0}/styles.css"
                                        CssPostfix="SoftOrange" OnClick="btnUpdate_Click"
                                        SpriteCssFilePath="~/App_Themes/SoftOrange/{0}/sprite.css" Text="Cập Nhật"
                                        ValidationGroup="User">
                                    </dx:ASPxButton>
                                </td>
                            </tr>
                        </table>
                    </dx:PanelContent>
                </panelcollection>
            </dx:ASPxCallbackPanel>
        </dx:PopupControlContentControl>
    </contentcollection>
</dx:ASPxPopupControl>

