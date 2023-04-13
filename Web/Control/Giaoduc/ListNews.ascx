<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListNews.ascx.cs" Inherits="Web.Control.Giaoduc.ListNews" %>
<%@ Register Assembly="DevExpress.Web.v10.2" Namespace="DevExpress.Web.ASPxPager"
    TagPrefix="dx" %>
<%@ Import Namespace="Core.Utils" %>
<%@ Register Src="MenuLeft.ascx" TagName="MenuLeft" TagPrefix="uc1" %>
<script type="text/javascript" language="javascript">

//    $(function () {
//        var myCate = '';
//       myCate = <%= _cateID %>;

//            $('.menu li a').click(function () {
////                alert(myCate);
//            $('.menu li a').each(function () {
//            //                            $('.menu li a').first().addClass('active');
//            // and test its normalized href against the url pathname regexp
//            if (urlRegExp.test(this.href.replace(/\/$/, ''))) {
//                if(myCate ==1)
//                {
//                    $('#tintuc').addClass('active');
//                }
//                else if(myCate ==3)
//                {
//                    $('#canhan').addClass('active');
//                }
//                else if(myCate ==5)
//                {
//                    $('#thele').addClass('active');
//                }
//                else
//                {
//                    
//                    $('#trangchu').addClass('active');
//                }
//            }
//        });

//                //                alert('abc');
//                //                alert(getParameter('cateID'));
////                alert(urlParams['cateID']);
//              //                                  $(this).addClass('active').removeClass('hover');
//                        });

    //    });

    $(function () {
        var myCate = <%= _cateID %>;

        var url = window.location.pathname,
                                    urlRegExp = new RegExp(url.replace(/\/$/, '') + "$"); // create regexp to match current url pathname and remove trailing slash if present as it could collide with the link in navigation in case trailing slash wasn't present there
        // now grab every link from the navigation

        $('.menu li a').each(function () {
            //                            $('.menu li a').first().addClass('active');
            // and test its normalized href against the url pathname regexp
            if (urlRegExp.test(this.href.replace(/\/$/, ''))) {
                if(myCate ==1)
                {
                    $('#tintuc').addClass('active');
                }
                else if(myCate ==3)
                {
                    $('#canhan').addClass('active');
                }
                else if(myCate ==5)
                {
                    $('#thele').addClass('active');
                }
                else
                {
                    
                    $('#trangchu').addClass('active');
                }
            }
        });
    });

        
</script>
<!-- Menu Left -->
<uc1:MenuLeft ID="MenuLeft1" runat="server" />
<!-- End Menu Left -->
<!-- List News -->
<div class="content_center colum2">
    <div class="center_view">
        <div class="about">
            <div class="breadcum">
                <a href="/Trang-chu.htm">Trang chủ </a>›
                <asp:Label ID="lblCateName" runat="server" Text=""></asp:Label>
            </div>
            <div class="news_cate">
                <ul>
                    <asp:Repeater ID="rptListCate" runat="server">
                        <ItemTemplate>
                            <li>
                                <div class="thumb_news">
                                    <a href="/Chi-tiet-<%#Eval("CS_ID") %>.htm">
                                        <img src="<%#Eval("CS_ImageURL") %>" alt="" /></a></div>
                                <span class="title_news"><a href="/Chi-tiet-<%#Eval("CS_ID") %>.htm">
                                    <%--<a href="/Index.aspx?page=NewsDetails&serviceID=<%#Eval("CS_ID") %>">--%>
                                    <%#Eval("CS_Name")%></a></span> <span class="detail_news">
                                        <%#Eval("CS_Description") %></span> <a class="more" href="/Chi-tiet-<%#Eval("CS_ID") %>.htm">
                                            Chi tiết</a> </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <div class="page_number">
                    <%-- <ul>
                            <li><a href="">Trang trước</a></li>
                            <li class="active"><a href="">01</a></li>
                            <li><a href="">02</a></li>
                            <li><a href="">Trang sau</a></li>
                        </ul>--%>
                    <dx:ASPxPager ID="pagerCateSub" runat="server" ClientIDMode="AutoID" OnPageIndexChanged="pagerCateSub_PageIndexChanged"
                        CssFilePath="~/App_Themes/SoftOrange/{0}/styles.css" CssPostfix="SoftOrange"
                        CurrentPageNumberFormat="{0}" SpriteCssFilePath="~/App_Themes/SoftOrange/{0}/sprite.css">
                    </dx:ASPxPager>
                </div>
            </div>
        </div>
    </div>
</div>
<!--End List News -->
