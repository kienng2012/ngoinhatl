using Core.Category;
using System;
using System.Data;

namespace Web.Control
{
    public partial class MenuFooterVzone : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                this.LoadCategoryForMenu();
            }
        }

        protected void LoadCategoryForMenu()
        {
            DataTable dt = CategoryDB.GetAll();
            rptMenuFooter.DataSource = dt;
            rptMenuFooter.DataBind();

        }
    }
}