using Core.Advertising;
using System;
using System.Data;

namespace Web.Control
{
    public partial class BannerRight : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.LoadImageAdv();
                this.LoadFlashAdv();
            }
        }

        protected void LoadImageAdv()
        {
            DataTable dt = tbl_AdvertisDB.GetByActive(2, tbl_AdvertisInfo.BANNER_PHAI, tbl_AdvertisInfo.FILE_ANH);
            rptAnh.DataSource = dt;
            rptAnh.DataBind();

        }
        protected void LoadFlashAdv()
        {
            DataTable dt = tbl_AdvertisDB.GetByActive(2, tbl_AdvertisInfo.BANNER_PHAI, tbl_AdvertisInfo.FILE_FLASH);
            rptFlash.DataSource = dt;
            rptFlash.DataBind();

        }

    }
}