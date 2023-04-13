using Core.Advertising;
using System;
using System.Data;

namespace Web.Control
{
    public partial class BannerCenter : System.Web.UI.UserControl
    {
        protected string urlLink = "";
        protected string swfFileName = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.PageInt();
            }
        }

        protected void PageInt()
        {
            DataTable dt = tbl_AdvertisDB.GetByActive(1, tbl_AdvertisInfo.BANNER_GIUA, tbl_AdvertisInfo.FILE_FLASH);
            foreach (DataRow row in dt.Rows)
            {
                swfFileName = row["FileName"].ToString();
                urlLink = row["AdvURL"].ToString();
            }


        }
    }
}