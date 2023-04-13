using Core.CategorySub;
using Core.Gold;
using System;
using System.Data;

namespace Web.Control.Giaoduc
{
    public partial class MenuRight : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDataByCate();
            }
        }
        protected void LoadDataByCate()
        {
            DataTable dt = GoldDB.GetTop6();
            rptGold.DataSource = dt;
            rptGold.DataBind();

            DataTable dtNews = CategorySubDB.GetTop3_ByNews();
            rptNews.DataSource = dtNews;
            rptNews.DataBind();


        }


        protected string GetItemClass(int itemIndex)
        {
            if (itemIndex % 2 == 1)
                return "title_orange";
            else
                return "title_blue";
        }

    }
}