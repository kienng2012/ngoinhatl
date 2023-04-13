<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Home.ascx.cs" Inherits="Web.Control.Home" %>
<%@ Import Namespace="Core.Utils" %>
<div class="ColumnRight">
    <%--<asp:DataList ID="dlistCate" runat="server" RepeatColumns="2" RepeatDirection="Horizontal">--%>
    <asp:Repeater ID="rptCate" runat="server" OnItemDataBound="rptCate_ItemDataBound">
        <ItemTemplate>
            <div id="promotion-prepay_DauGia" class="AllCommonCate">
                <%--<asp:Repeater ID="rptCate" runat="server" OnItemDataBound="rptCate_ItemDataBound">--%>
                
                <div class="cate-main">
                    
                     <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                        <td width="250" align="left"><%#Eval("C_Name") %></td>
                        <td width="100" align="right"><%--<a href="/Danh-sach-dich-vu/danh-muc-<%#Eval("C_ID") %>.htm">--%><a href="/<%# RewriteUrl.ConvertToUnSign(Eval("C_Name").ToString()) %>-<%#Eval("C_ID") %>">Xem thêm</a></td>
                        </tr>
                     </table>
                </div>
                <div id="promotion-prepay-pane_DauGia" class="accordion-pane">
                    <asp:Repeater ID="rptChild" runat="server">
                        <ItemTemplate>
                            <p class="accordion-head" style="text-align: left;">
                                <%--<a href="/Chi-tiet-dich-vu/dich-vu-<%#Eval("CS_ID") %>.htm" target="_self">--%>
                               <%-- <a href="/<%# RewriteUrl.ConvertToUnSign(Eval("C_Name").ToString()) %>-<%#Eval("C_ID") %>">Xem thêm</a>--%>
                                 <a href="/<%# RewriteUrl.ConvertToUnSign(Eval("C_Name").ToString()) %>/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm">
                                <span>
                                    <%#Eval("CS_Name") %></span></a></p>
                            <div class="accordion-body">
                                <a href="/<%# RewriteUrl.ConvertToUnSign(Eval("C_Name").ToString()) %>/<%# RewriteUrl.ConvertToUnSign(Eval("CS_Name").ToString()) %>-<%#Eval("CS_ID") %>.htm">
                                    <img alt="" src="<%#Eval("CS_ImageURL") %>" /></a>
                                <div class="accordion-content">
                                    <div class="BTRegistryServiceContent">
                                        <span style="color: #424142; font-size: 12px; text-align: justify;">
                                            <%#Eval("CS_Description") %>
                                        </span>
                                    </div>
                                </div>
                                <div class="clearfix">
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <%--</asp:Repeater>--%>
            </div>
        </ItemTemplate>
        <%--</asp:DataList>--%>
    </asp:Repeater>
    <%--<div style="width: 100%; text-align: center; display: inline-table;">
        <br />
        <div class="jb_pagination">
            <a class="active" href="p/h.ashx¿i=1.html">1</a><a href="p/h.ashx¿i=2.html">2</a></div>
        <br>
        <br>
    </div>--%>
    <!--GroupService.htm-->
    <script language="javascript" type="text/javascript">
        $(document).ready(function () {
            $("#promotion-prepay-pane,#promotion-postpay-pane,#promotion-noel-pane,#promotion-prepay_18,#promotion-prepay_19,#promotion-prepay_15,#promotion-prepay_14,#promotion-prepay_11,#promotion-prepay_13,#promotion-prepay_10,#promotion-prepay_9,#promotion-prepay_DauGia,#promotion-prepay-pane_DauGia").accordion({
                delay: 400,
                onEvent: "mouseover",
                headActiveClass: "accordion-active",
                headActive: {
                    //                                                background: "#fff url(http://mplus.vn/img/Down.png) no-repeat 0px 0px"
                    background: "#fff url(../App_Themes/Vzone/img/Down.png) no-repeat 0px 0px"
                },
                headInActive: {
                    //                                                background: "#fff url(http://mplus.vn/img/DownHover.png) repeat-x 0px 0px"
                    background: "#fff url(../App_Themes/Vzone/img/DownHover.png) repeat-x 0px 0px"
                }
            });
        });
    </script>
</div>
