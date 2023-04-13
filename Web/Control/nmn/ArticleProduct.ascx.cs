using Core.CategorySub;
using System;
using System.Data;

namespace Web.Control.nmn
{
    public partial class ArticleProduct : System.Web.UI.UserControl
    {
        const int _cateID = 2;//Product
        protected string _cateName;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDataByCate();
            }
        }
        protected void LoadDataByCate()
        {
            _cateName = "Sản phẩm";
            //Ve san pham
            DataTable dtProduct = CategorySubDB.CategorySub_GetTop1ByCateId(_cateID, 0); //Ve san pham
            DataTable dtVision = new DataTable();
            if (dtProduct.Rows.Count > 0)
            {
                _cateName = dtProduct.Rows[0]["C_Name"].ToString();
                //Tam nhin
                dtVision = CategorySubDB.CategorySub_GetTop1ByCateId(_cateID, Convert.ToInt32(dtProduct.Rows[0]["CS_ID"])); 
            }
            //lblCateName.Text = _cateName;
            rptProduct.DataSource = dtProduct;
            rptProduct.DataBind();
            rptVision.DataSource = dtVision;
            rptVision.DataBind();
        }

    }
}