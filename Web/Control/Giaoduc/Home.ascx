<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Home.ascx.cs" Inherits="Web.Control.Giaoduc.Home" %>



<%@ Register src="MenuLeft.ascx" tagname="MenuLeft" tagprefix="uc1" %>
<%@ Register src="MainContent.ascx" tagname="MainContent" tagprefix="uc2" %>
<%@ Register src="MenuRight.ascx" tagname="MenuRight" tagprefix="uc3" %>

<script type="text/javascript" language="javascript">

    $(function () {
        var url = window.location.pathname,
                                    urlRegExp = new RegExp(url.replace(/\/$/, '') + "$"); // create regexp to match current url pathname and remove trailing slash if present as it could collide with the link in navigation in case trailing slash wasn't present there
        // now grab every link from the navigation

        $('.menu li a').each(function () {
            //                            $('.menu li a').first().addClass('active');
            // and test its normalized href against the url pathname regexp
            if (urlRegExp.test(this.href.replace(/\/$/, ''))) {
                $('#trangchu').addClass('active');
            }
        });
    });

        
</script>


<!-- Menu Left -->
<uc1:MenuLeft ID="MenuLeft1" runat="server" />
 <!-- End Menu Left -->

 <!-- Content -->
<uc2:MainContent ID="MainContent1" runat="server" />
<!-- END Content -->

<!-- Menu Right -->
<uc3:MenuRight ID="MenuRight1" runat="server" />
<!-- Eng MenuRight -->
