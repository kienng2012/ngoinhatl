<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuanlyFunc.ascx.cs" Inherits="Web.Control.QuanlyFunc" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxTreeList.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTreeList" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxTreeList.v10.2" namespace="DevExpress.Web.ASPxTreeList" tagprefix="dx" %>
<div class="title-manager">
    <div class="bg-right">
    </div>
    <div class="bg-left">
    </div>
    <div class="bg-main">
        <div class="titleFunc">
            Quản lý chức năng</div>
    </div>
</div>
<div class="main-content_2">
    <div class="main_gridview">
        <dx:ASPxTreeList ID="treeFunc" runat="server" AutoGenerateColumns="False" 
            CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" CssPostfix="PlasticBlue" 
            KeyFieldName="ID" ondatabinding="treeFunc_DataBinding" 
            onnodedeleting="treeFunc_NodeDeleting" onnodeinserting="treeFunc_NodeInserting" 
            onnodeupdating="treeFunc_NodeUpdating" ParentFieldName="ParentID" 
            Width="100%" ClientIDMode="AutoID">

<Settings GridLines="Both"></Settings>

<SettingsBehavior AutoExpandAllNodes="True" AllowFocusedNode="True" 
                ProcessSelectionChangedOnServer="True" ExpandCollapseAction="NodeDblClick"></SettingsBehavior>

            <settingspager showdefaultimages="False">
                <allbutton text="All">
                </allbutton>
                <nextpagebutton text="Next &gt;">
                </nextpagebutton>
                <prevpagebutton text="&lt; Prev">
                </prevpagebutton>
            </settingspager>

<SettingsEditing Mode="EditFormAndDisplayNode"></SettingsEditing>

<SettingsPopupEditForm Width="500px"></SettingsPopupEditForm>

            <Images SpriteCssFilePath="~/App_Themes/PlasticBlue/{0}/sprite.css">
                <LoadingPanel Url="~/App_Themes/PlasticBlue/GridView/Loading.gif">
                </LoadingPanel>
            </Images>
            <SettingsLoadingPanel ImagePosition="Top" />
            <Settings GridLines="Both" />
            <SettingsBehavior AllowFocusedNode="True" ExpandCollapseAction="NodeDblClick" />
            <ClientSideEvents CustomButtonClick="function(s, e) {
                                        treeFunc.PerformCustomCallback('setroot'+':'+e.nodeKey);
                                    }" EndDragNode="function(s, e) {
	                                    if(e.htmlEvent.shiftKey){
		                                    e.cancel = true;
		                                    var key = s.GetNodeKeyByRow(e.targetElement);
		                                    treeFunc.PerformCustomCallback('reorder'+':'+e.nodeKey+':'+key);
		                                }
                                    }" />
            <ClientSideEvents CustomButtonClick="function(s, e){validatii(e.nodeKey);}" />
            <SettingsEditing Mode="EditFormAndDisplayNode" />
            <Styles CssFilePath="~/App_Themes/PlasticBlue/{0}/styles.css" 
                CssPostfix="PlasticBlue">
                <CustomizationWindowContent VerticalAlign="Top">
                </CustomizationWindowContent>
            </Styles>
            <SettingsPopupEditForm Width="500" />
            <Columns>
                <dx:TreeListTextColumn AllowSort="False" Caption="Tên chức năng" 
                    FieldName="Name" VisibleIndex="0">
                    <PropertiesTextEdit>
                        
<ValidationSettings>
                            
<RequiredField IsRequired="true" />
                        
</ValidationSettings>
                    
</PropertiesTextEdit>
                </dx:TreeListTextColumn>
                <dx:TreeListTextColumn AllowSort="False" Caption="Đường dẫn" FieldName="Url">
                    <PropertiesTextEdit>
                        
<ValidationSettings>
                            
<RequiredField IsRequired="true" />
                        
</ValidationSettings>
                    
</PropertiesTextEdit>
                </dx:TreeListTextColumn>
                <dx:TreeListTextColumn AllowSort="False" Caption="Thứ tự" FieldName="Thutu" CellStyle-HorizontalAlign="Left">
                    <PropertiesTextEdit>
                        
<ValidationSettings>
                            

<RequiredField IsRequired="true" />
                            
<RegularExpression ValidationExpression="^\d$" />
                        
</ValidationSettings>
                    
</PropertiesTextEdit>

<CellStyle HorizontalAlign="Left"></CellStyle>
                </dx:TreeListTextColumn>
                <dx:TreeListComboBoxColumn AllowSort="False" Caption="Cấp trên" 
                    FieldName="ParentID" HeaderStyle-HorizontalAlign="Right">
                    <PropertiesComboBox TextField="Name" ValueField="ID">
                        
<ValidationSettings RequiredField-IsRequired="true">
                            
<RequiredField IsRequired="True" />
                        
</ValidationSettings>
                    
</PropertiesComboBox>

<HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                </dx:TreeListComboBoxColumn>
                <dx:TreeListCheckColumn AllowSort="False" Caption="Trạng thái" 
                    FieldName="Status" HeaderStyle-HorizontalAlign="Center">
                    <PropertiesCheckEdit>
                        
<ValidationSettings>
                            
<RequiredField IsRequired="true" />
                        
</ValidationSettings>
                    
</PropertiesCheckEdit>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                </dx:TreeListCheckColumn>
                <dx:TreeListCommandColumn ShowNewButtonInHeader="true" CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                    <EditButton Visible="true">
                    </EditButton>
                    <NewButton Visible="true">
                    </NewButton>
                    <DeleteButton Visible="true">
                    </DeleteButton>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<CellStyle HorizontalAlign="Center"></CellStyle>
                </dx:TreeListCommandColumn>
            </Columns>
            <SettingsBehavior AutoExpandAllNodes="True" ExpandCollapseAction="NodeDblClick" 
                ProcessSelectionChangedOnServer="true" />

<ClientSideEvents EndDragNode="function(s, e) {
	                                    if(e.htmlEvent.shiftKey){
		                                    e.cancel = true;
		                                    var key = s.GetNodeKeyByRow(e.targetElement);
		                                    treeFunc.PerformCustomCallback(&#39;reorder&#39;+&#39;:&#39;+e.nodeKey+&#39;:&#39;+key);
		                                }
                                    }" 
                CustomButtonClick="function(s, e){validatii(e.nodeKey);}"></ClientSideEvents>
        </dx:ASPxTreeList>
    </div>
</div>
