using Core.Role;
using System;
using System.Web.UI;

namespace Web
{
    public partial class _Default : System.Web.UI.Page
    {
        public enum ModulePages
        {
            AddRole,
            Login,
            QuanlyFunc,
            Home,
            AddRoleUser,
            ChangePass,
            UserProfile,
            TypeCardReport,
            ManagerCardType,
            ManagerGroup,
            ManagerNews,
            ManagerUser,
            ManageCategorySub,
            ManagerCategory,
            ManagerServiceVzone,
            ManagerAdvertising,
            ManagerGold,
            ManagerReservation,
            ManagerComment,
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            { //do something 
            }
            try
            {

                const string basePath = "~/Control";
                const string pageQuery = "page";
                string pageName = Request.QueryString[pageQuery];

                ModulePages page;
                if (Session["UserName"] == null)
                {

                    Response.Redirect("/Login.aspx");

                }
                else
                {
                    //TODO: Kienng check
                    tblRoleDetaiInfo infoRole = tblRoleDetaiDB.GetInfo(Convert.ToInt32(Request.QueryString["id"]));
                    if (!infoRole.IsView)
                    {
                        page = ModulePages.Home;
                    }
                    else
                        if (pageName == null)
                        page = ModulePages.Home;
                    else
                        page = (ModulePages)Enum.Parse(typeof(ModulePages), Request.QueryString[pageQuery], true);
                    string src = string.Format("{0}/{1}.ascx", basePath, page);

                    pnlHolder.Controls.Add(this.LoadControl(src));
                }

            }
            catch
            {

            }

        }
    }
}
