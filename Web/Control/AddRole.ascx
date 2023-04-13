<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AddRole.ascx.cs" Inherits="Web.Control.AddRole" %>
<%@ Register assembly="DevExpress.Web.ASPxGridView.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGridView.v10.2" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<div class="title-manager">
    <div class="bg-right"></div>
	<div class="bg-left"></div>
	<div class="bg-main">				
        <div class="titleFunc">Quản lý phân quyền</div>
    </div>
</div>
<div class="main-content_2">
<div class="main_gridview">
    <dx:ASPxGridView ID="grdAddRole" runat="server" AutoGenerateColumns="False" KeyFieldName="ID"
        Width="100%" ondatabinding="grdAddRole_DataBinding" 
        onrowdeleting="grdAddRole_RowDeleting" onrowinserting="grdAddRole_RowInserting" 
        onrowupdating="grdAddRole_RowUpdating" 
        CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue" 
        ClientIDMode="AutoID">
        <Styles CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" 
            CssPostfix="PlasticBlue">
            <header imagespacing="10px" sortingimagespacing="10px">
            </header>
        </Styles>
        <SettingsLoadingPanel Text="" />
        <SettingsPager Mode="ShowAllRecords" showdefaultimages="False">
            <allbutton text="All">
            </allbutton>
            <nextpagebutton text="Next &gt;">
            </nextpagebutton>
            <prevpagebutton text="&lt; Prev">
            </prevpagebutton>
        </SettingsPager>
        <Columns>
            <dx:GridViewDataComboBoxColumn Caption="Người dùng" FieldName="UserID" VisibleIndex=0>
                <EditFormSettings VisibleIndex=0 />
                <PropertiesComboBox TextField="UserName" ValueField="ID">
                    
<ValidationSettings>
                        
<RequiredField IsRequired=true />
                    
</ValidationSettings>
                
</PropertiesComboBox>

<EditFormSettings VisibleIndex="0"></EditFormSettings>

                <HeaderStyle HorizontalAlign="Center" />
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Chức năng" FieldName="FunID" VisibleIndex=1 >
                <EditFormSettings VisibleIndex=1 />
                <PropertiesComboBox TextField="Name" ValueField="ID">
                    
<ValidationSettings>
                        
<RequiredField IsRequired=true />
                    
</ValidationSettings>
                
</PropertiesComboBox>

<EditFormSettings VisibleIndex="1"></EditFormSettings>

                <HeaderStyle HorizontalAlign="Center" />
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataCheckColumn Caption="Xóa" FieldName="IsDelete" VisibleIndex=2 HeaderStyle-HorizontalAlign="Center">
                <PropertiesCheckEdit>
                    
<ValidationSettings>
                        
<RequiredField IsRequired=true />
                    
</ValidationSettings>
                
</PropertiesCheckEdit>
                <EditFormSettings VisibleIndex=2 />

<EditFormSettings VisibleIndex="2"></EditFormSettings>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataCheckColumn Caption="Sửa" FieldName="IsUpdate" VisibleIndex=3 HeaderStyle-HorizontalAlign="Center">
                <PropertiesCheckEdit>
                    
<ValidationSettings>
                        
<RequiredField IsRequired=true />
                    
</ValidationSettings>
                
</PropertiesCheckEdit>
                <EditFormSettings VisibleIndex=3 />

<EditFormSettings VisibleIndex="3"></EditFormSettings>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataCheckColumn Caption="Thêm mới" FieldName="IsAdd" VisibleIndex=4 HeaderStyle-HorizontalAlign="Center">
                <PropertiesCheckEdit>
                    
<ValidationSettings>
                        
<RequiredField IsRequired=true />
                    
</ValidationSettings>
                
</PropertiesCheckEdit>
                <EditFormSettings VisibleIndex=4 />

<EditFormSettings VisibleIndex="4"></EditFormSettings>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataCheckColumn Caption="Xem" FieldName="IsView"  VisibleIndex=5 HeaderStyle-HorizontalAlign="Center">
                <PropertiesCheckEdit>
                    
<ValidationSettings>
                        
<RequiredField IsRequired=true />
                    
</ValidationSettings>
                
</PropertiesCheckEdit>
                <EditFormSettings VisibleIndex=5 />

<EditFormSettings VisibleIndex="5"></EditFormSettings>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
            </dx:GridViewDataCheckColumn>
            <dx:GridViewCommandColumn VisibleIndex=6  HeaderStyle-HorizontalAlign="Center" CellStyle-HorizontalAlign="Center" Caption="Thao tác">
                <EditButton Visible=true Text="Sửa"></EditButton>
                <NewButton Visible=true Text="Thêm" ></NewButton>
                <DeleteButton Visible=true Text="Xóa"></DeleteButton>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<CellStyle HorizontalAlign="Center"></CellStyle>
            </dx:GridViewCommandColumn>
        </Columns>
        <ImagesFilterControl>
            <LoadingPanel Url="~/App_Themes/PlasticBlue/Editors/Loading.gif">
            </LoadingPanel>
        </ImagesFilterControl>

<SettingsEditing Mode="PopupEditForm" PopupEditFormWidth="600px" 
            PopupEditFormHorizontalAlign="Center" PopupEditFormModal="True"></SettingsEditing>

        <Images SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css">
            <LoadingPanelOnStatusBar Url="~/App_Themes/PlasticBlue/GridView/gvLoadingOnStatusBar.gif">
            </LoadingPanelOnStatusBar>
            <LoadingPanel Url="~/App_Themes/PlasticBlue/GridView/Loading.gif">
            </LoadingPanel>
        </Images>
        <SettingsEditing EditFormColumnCount=2 PopupEditFormModal=true Mode=PopupEditForm PopupEditFormWidth=600  PopupEditFormHorizontalAlign=Center />
       
        <StylesEditors>
            <CalendarHeader Spacing="11px">
            </CalendarHeader>
            <progressbar height="25px">
            </progressbar>
        </StylesEditors>
       
    </dx:ASPxGridView>

  
</div>
</div>