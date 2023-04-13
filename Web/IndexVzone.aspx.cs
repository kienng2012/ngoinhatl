using System;

namespace Web
{
    public partial class IndexVzone : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                const string basePath = "~/Control";
                const string pageQuery = "page";
                string pageName = Request.QueryString[pageQuery];

                ModulePages page;

                //tblRoleDetaiInfo infoRole = tblRoleDetaiDB.GetInfo(Convert.ToInt32(Request.QueryString["id"]));

                // tam thoi hien thi trang UI_Vinaphone lam trang chu
                page = ModulePages.Home;

                if (pageName == null)
                {
                    page = ModulePages.Home;
                    //page = ModulePages.UI_News;
                    //page = ModulePages.UI_News_List;
                }
                else
                {
                    page = (ModulePages)Enum.Parse(typeof(ModulePages), Request.QueryString[pageQuery], true);
                }
                // Hien thi cac User Control theo ten 
                string src = string.Format("{0}/{1}.ascx", basePath, page);

                pnlHolder1.Controls.Add(this.LoadControl(src));


            }
            catch (NullReferenceException ex)
            {
                Console.WriteLine(ex.Message);
            }

        }

        public enum ModulePages
        {
            Home,
            ListByCategory,
            ServiceDetails,
        }



    }
}