using Core.User;
using System;
using System.Data;

namespace Web
{
    public partial class ShowMTLog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = tbl_UserDB.GetAllMoLogGW();

            grMo.DataSource = dt;
            grMo.DataBind();
        }
    }
}