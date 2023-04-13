using Core.Gold;
using System;
using System.Data;

namespace Web.Control.Giaoduc
{
    public partial class BangVang : System.Web.UI.UserControl
    {
        private static int itemPerPage = 10;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDataByCate(1);
            }
        }
        protected void LoadDataByCate(int page)
        {

            GoldInfo info = new GoldInfo();
            DataTable dt = GoldDB.Gold_GetAll_Pager(page, itemPerPage, info);
            pagerCateSub.ItemCount = info.Output;
            pagerCateSub.ItemsPerPage = itemPerPage;
            rptBangVang.DataSource = dt;
            rptBangVang.DataBind();
        }

        protected void pagerCateSub_PageIndexChanged(object sender, EventArgs e)
        {
            this.LoadDataByCate(pagerCateSub.PageIndex + 1);
        }
    }
}