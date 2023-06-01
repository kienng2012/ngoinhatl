using Core.Category;
using Core.CategorySub;
using System;
using System.Data;

namespace Web.Control.nmn
{
    public partial class StyleTop : System.Web.UI.UserControl
    {
        protected int _cateID;
        protected string _cateName;
        const int _C_ParentID = 8; //Phong cach

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //LoadDataByCate(1);
                loadAllStyleCategory();
            }
        }
        protected void loadAllStyleCategory()
        {
            //Liet ke danh muc khac
            DataTable dtAnotherCate = CategoryDB.Category_GetAllCateByParentID(_C_ParentID);
            if (dtAnotherCate.Rows.Count > 0)
            {
                rptAnotherCate.DataSource = dtAnotherCate;
                rptAnotherCate.DataBind();
            }
        }
        /*
        protected void LoadDataByCate(int page)
        {
            _cateName = "Phong cách";
            if (Request.QueryString["cateID"] != null)
            {
                _cateID = Convert.ToInt32(Request.QueryString["cateID"]);
            }
            else { _cateID = 8; }

            CategorySubInfo info = new CategorySubInfo();
            info.C_ParentID = _cateID; //Lay theo parentID
            info.C_ID = _cateID;
            DataTable dt = CategorySubDB.CategorySub_GetAll_ByCate_Pager(page, 12, info);
            //if (dt.Rows.Count > 0)
            //{
            //    _cateName = dt.Rows[0]["C_Name"].ToString();
            //}
            //lblCateName.Text = _cateName;
            //pagerCateSub.ItemCount = info.Output;
            //pagerCateSub.ItemsPerPage = 8;
            rptStyleTop.DataSource = dt;
            rptStyleTop.DataBind();
        }
        */

    }

    //protected void pagerCateSub_PageIndexChanged(object sender, EventArgs e)
    //{
    //    this.LoadDataByCate(pagerCateSub.PageIndex + 1);
    //}
}