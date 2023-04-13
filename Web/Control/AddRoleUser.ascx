<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AddRoleUser.ascx.cs" Inherits="Web.Control.AddRoleUser" %>
<div class="title-manager">
    <div class="bg-right">
    </div>
    <div class="bg-left">
    </div>
    <div class="bg-main">
        <div class="titleFunc">
            Quản lý phân quyền</div>
    </div>
</div>
<div class="main-content_2">
    <div class="main_gridview">
        <div style="padding-bottom:10px;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                CellPadding="2" DataKeyNames="ID" ForeColor="Black" GridLines="None" 
                ShowFooter="True" style="margin-right: 0px" Width="100%">
                <RowStyle Height="30px" />
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:CheckBox ID="chkMenu" runat="server" />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="Name" HeaderText="Tên chức năng">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Func ID">
                        <ItemTemplate>
                            <asp:Label ID="lblFuncID" runat="server" Text='<%# Bind("FuncID") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Xóa">
                        <ItemTemplate>
                            <asp:CheckBox ID="IsDelete" runat="server" 
                                Checked='<%#Eval("IsDelete").Equals(true)%>' />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Sửa">
                        <ItemTemplate>
                            <asp:CheckBox ID="IsEdit" runat="server" 
                                Checked='<%#Eval("IsUpdate").Equals(true)%>' />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Thêm mới">
                        <ItemTemplate>
                            <asp:CheckBox ID="IsAddNew" runat="server" 
                                Checked='<%#Eval("IsAdd").Equals(true)%>' />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Xem">
                        <ItemTemplate>
                            <asp:CheckBox ID="IsView" runat="server" 
                                Checked='<%#Eval("IsView").Equals(true)%>' />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="Tan" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                    HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
            </asp:GridView>
        </div>
        <div style="text-align: center">
            <asp:Button ID="cmdCapnhat" runat="server" onclick="cmdCapnhat_Click" 
                Text="Cập nhật" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="cmdHuy" runat="server" onclick="cmdHuy_Click" Text="Hủy" />
        </div>
    </div>
</div>
