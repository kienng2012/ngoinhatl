using Core.CategorySub;
using System;
using System.Data;

namespace Web.Control.Giaoduc
{
    public partial class ListNews : System.Web.UI.UserControl
    {
        protected int _cateID;
        protected string _cateName;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDataByCate(1);
            }
        }
        protected void LoadDataByCate(int page)
        {
            _cateName = "Tin tức";
            if (Request.QueryString["cateID"] != null)
            {
                _cateID = Convert.ToInt32(Request.QueryString["cateID"]);

                CategorySubInfo info = new CategorySubInfo();
                info.C_ID = _cateID;
                DataTable dt = CategorySubDB.CategorySub_GetAll_ByCate_Pager(page, 8, info);
                if (dt.Rows.Count > 0)
                {
                    _cateName = dt.Rows[0]["C_Name"].ToString();
                }
                lblCateName.Text = _cateName;
                pagerCateSub.ItemCount = info.Output;
                pagerCateSub.ItemsPerPage = 8;
                rptListCate.DataSource = dt;
                rptListCate.DataBind();
            }
            else
            {
                Response.Redirect("/Trangchu.htm");
            }
        }

        protected void pagerCateSub_PageIndexChanged(object sender, EventArgs e)
        {
            this.LoadDataByCate(pagerCateSub.PageIndex + 1);
        }

    }
}