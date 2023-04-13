using Core.Category;
using System;
using System.Data;

namespace Web.Control
{
    public partial class MenuVzone : System.Web.UI.UserControl
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
            rptMenu.DataSource = dt;
            rptMenu.DataBind();

        }

    }
}