<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BannerCenter.ascx.cs"
    Inherits="Web.Control.BannerCenter" %>
<div id="play-medium" style="width: 960px; height: 150px;">
    <!-- NEU DUNG FLASH THI DUNG DOAN NAY -->
    <a href="<%=urlLink %>">
        <object width="100%" height="100%" align="middle" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0"
            classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" id="flashgame">
            <param value="opaque" name="wmode" />
            <param value="high" name="quality" />
            <param value="always" name="allowscriptaccess" />
            <param value="gameId=1861" name="FlashVars" />
            <param value="<%=swfFileName %>" name="movie" />
            <embed width="100%" height="100%" align="middle" src="<%=swfFileName %>" quality="high"
                allowscriptaccess="always" pluginspage="http://www.macromedia.com/go/getflashplayer"
                type="application/x-shockwave-flash" name="flashgame" wmode="opaque" flashvars="gameId=1861" />
        </object>
    </a>
    <%--<img src="/Upload/Images/jslideshow1.gif" width="860" height="150" alt="" />--%>
</div>
