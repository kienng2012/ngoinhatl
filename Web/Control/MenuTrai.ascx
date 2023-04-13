<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuTrai.ascx.cs" Inherits="Web.Control.MenuTrai" %>
<asp:Repeater ID="rptMain" runat="server" 
    OnItemDataBound="rptMain_ItemDataBound">
    <HeaderTemplate>
        <ul class="tab-func">
    </HeaderTemplate>
    <ItemTemplate>
        <li>
            <div class="tabLeft">
                <div class="topName">
                    <a class="expand" href="#">&nbsp;</a>
                    <div class="titleFunc">
                        <%#Eval("Name")%></div>
                </div>
                <div class="listFunc">
                    <asp:Repeater ID="rptChild" runat="server">
                        <HeaderTemplate>
                            <ul>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <li><a href='<%#Eval("Url")%>&id=<%#Eval("ID") %>'>
                                        <%#Eval("Name")%>
                                    </a></li>
                        </ItemTemplate>
                        <FooterTemplate>
                            </ul>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </li>
    </ItemTemplate>
    <FooterTemplate>
        </ul>
    </FooterTemplate>
</asp:Repeater>
