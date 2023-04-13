using System;
using System.Web.Routing;



namespace Web
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup  
            //RegisterRoutes(RouteTable.Routes);
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }

        static void RegisterRoutes(RouteCollection routes)
        {
            //Route Name   : myfriend1   
            //Route URL    : csharpcorner-friend-list  
            //Physical File: FriendList.aspx  
            routes.MapPageRoute("Trangchu.htm", "Trangchu.htm", "~/Index.aspx");

            //https://www.codeproject.com/Questions/1155989/Problem-on-getting-value-pass-through-url-routing
            routes.MapPageRoute("Tin-tuc.htm", "{page}", "~/Index.aspx?cateID=2");

            routes.MapPageRoute("Chi-tiet.htm", "{page}/{serviceID}", "~/Index.aspx");
            //routes.


            //Index.aspx?page=NewsDetails&serviceID=12
            //routes.MapPageRoute("Chi-tiet.htm", "Chi-tiet-{page}/{serviceID}.htm", "~/Index.aspx?page=$page&serviceID=$serviceID");

            //routes.MapPageRoute("Chi-tiet-(.*)/(.*).htm", "Chi-tiet(.*)/(.*).htm", "~/Index.aspx?page=NewsDetails&serviceID=$1&title=$2");
            //routes.MapPageRoute("Chi-tiet-(.*)/(.*)/(.*).htm", "Chi-tiet-(.*)/(.*)/(.*).htm", "~/Index.aspx?page=$1&serviceID=$2&title=$3");
            //routes.MapPageRoute("routeTinTuc.htm", "Tintuc.htm", "~/Index.aspx?page=ArticleList&cateID=1");
            //routes.MapPageRoute("Admin.htm", "Admin.htm", "~/Default.aspx");

            //routes.MapPageRoute("Tonghop.htm", "Tonghop.htm", "~/Index.aspx?page=SubjectDetails&serviceID=5");
            //routes.MapPageRoute("Ngoaingu.htm", "Ngoaingu.htm", "~/Index.aspx?page=SubjectDetails&serviceID=4");
            //routes.MapPageRoute("Toanhoc.htm", "Toanhoc.htm", "~/Index.aspx?page=SubjectDetails&serviceID=3");
            //routes.MapPageRoute("Tiengviet.htm", "Tiengviet.htm", "~/Index.aspx?page=SubjectDetails&serviceID=2");
            //routes.MapPageRoute("Amnhac.htm", "Amnhac.htm", "~/Index.aspx?page=SubjectDetails&serviceID=1");
            //routes.MapPageRoute("Monhoc.htm", "Monhoc.htm", "~/Index.aspx?page=ListSubject&cateID=2");
            //routes.MapPageRoute("Bangvang.htm", "Bangvang.htm", "~/Index.aspx?page=BangVang");
            //routes.MapPageRoute("Bang-vang-chi-tiet.htm", "Bang-vang-chi-tiet-(.*).htm", "~/Index.aspx?page=BangVangCT&goldId=$1");
            //routes.MapPageRoute("Canhan.htm", "Canhan.htm", "~/Index.aspx?page=ListNews&cateID=3");
            //routes.MapPageRoute("Thele.htm", "Thele.htm", "~/Index.aspx?page=ListNews&cateID=5");
            //routes.MapPageRoute("Mon-hoc-chi-tiet-(.*).htm", "Mon-hoc-chi-tiet-(.*).htm", "~/Index.aspx?page=SubjectDetails&serviceID=$1");
            //routes.MapPageRoute("Chi-tiet-(.*).htm", "Chi-tiet-(.*).htm", "~/Index.aspx?page=NewsDetails&serviceID=$1");
            //routes.MapPageRoute("^/(.*)-(.*)", "(.*)-(.*)", "~/Index.aspx?page=ListNews&cateID=$2");
        }
    }
}