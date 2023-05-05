using Core.Category;
using Core.CategorySub;
using Core.Utils;
using System;
using System.Data;
using System.Web.UI.WebControls;


namespace Web.Control.nmn
{
    public partial class Styles : System.Web.UI.UserControl
    {
        protected int _cateID;
        protected string _cateName;
        protected int _pageNumber;
        const int pageSize = 6;
        protected string _baseUrlPaging = "phong-cach";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDataByCate();
            }
        }
        protected void LoadDataByCate()
        {
            _cateName = "Tin tức";
            if (Request.QueryString["cateID"] != null)
            {
                _cateID = Convert.ToInt32(Request.QueryString["cateID"]);
            }
            else { _cateID = 1; }

            if (Request.QueryString["pageNumber"] != null)
            {
                _pageNumber = Convert.ToInt32(Request.QueryString["pageNumber"]);
            }
            else { _pageNumber = 1; }

            CategorySubInfo info = new CategorySubInfo();
            info.C_ID = _cateID;
            DataTable dt = CategorySubDB.CategorySub_GetAll_ByCate_Pager(_pageNumber, pageSize, info);
            if (dt.Rows.Count > 0)
            {
                _cateName = dt.Rows[0]["C_Name"].ToString();
            }
            int totalRecord = info.Output;
            //lblCateName.Text = _cateName;
            //pagerCateSub.ItemCount = info.Output;
            //pagerCateSub.ItemsPerPage = 8;
            rptListCate.DataSource = dt;
            rptListCate.DataBind();

            //Xu ly phan trang bang cach tao the : 
            //https://stackoverflow.com/questions/35891828/how-to-dynamically-create-an-html-table
            lblPaging.Text = RewriteUrl.generateTagPagingNodric(_baseUrlPaging, _pageNumber, pageSize, totalRecord); //generateTagPaging
        }
    }

}