<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BannerRight.ascx.cs"
    Inherits="Web.Control.BannerRight" %>

<div class="flash-right">
    <ul style="padding-left:0 !important;">
        <asp:Repeater ID="rptFlash" runat="server">
            <ItemTemplate>
                <li><a href="<%#Eval("AdvURL") %>">
                    <object width="258px" align="middle" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0"
                        classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" id="flashgame">
                        <param value="opaque" name="wmode" />
                        <param value="high" name="quality" />
                        <param value="always" name="allowscriptaccess" />
                        <param value="gameId=1861" name="FlashVars" />
                        <param value="<%#Eval("FileName") %>" name="movie" />
                        <embed width="258px" align="middle" src="<%#Eval("FileName") %>" quality="high" allowscriptaccess="always"
                            pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash"
                            name="flashgame" wmode="opaque" flashvars="gameId=1861" />
                    </object>
                </a></li>
            </ItemTemplate>
        </asp:Repeater>
    </ul>
</div>


<div class="images-right">
    <ul>
        <asp:Repeater ID="rptAnh" runat="server">
            <ItemTemplate>
                <li><a href="<%#Eval("AdvURL") %>">
                    <img width="258" height="145" alt="" src="<%#Eval("FileName") %>" />
                </a></li>
            </ItemTemplate>
        </asp:Repeater>
    </ul>
</div>
