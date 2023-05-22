using Core.Category;
using Core.CategorySub;
using Core.Utils;
using System;
using System.Data;
using System.Web.UI.WebControls;


namespace Web.Control.nmn
{
    public partial class SearchResult : System.Web.UI.UserControl
    {
        protected int _cateID;
        protected string _cateName;
        protected int _pageNumber;
        const int pageSize = 5;
        protected string _baseUrlPaging = "tim-kiem.htm";
        protected string _keyword;
        protected string _originKeyword;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDataByCate();
            }
        }
        protected void LoadDataByCate()
        {
            _cateName = "Tìm kiếm";
            if (Request.QueryString["keyword"] == null || String.IsNullOrEmpty(Request.QueryString["keyword"].Trim().ToString()))
                return;

            if (Request.QueryString["keyword"] != null)
            {
                _originKeyword = Request.QueryString["keyword"].ToString().Trim();
                lblKeyword.Text = _originKeyword;
                lblKeywordBreadcumbs.Text = _originKeyword;
                _keyword = "%" + _originKeyword.ToUpper() + "%";
            }

            if (Request.QueryString["pageNumber"] != null)
            {
                _pageNumber = Convert.ToInt32(Request.QueryString["pageNumber"]);
            }
            else { _pageNumber = 1; }

            CategorySubInfo info = new CategorySubInfo();
            DataTable dt = CategorySubDB.CategorySub_Search_Pager(_pageNumber, pageSize, _keyword, info);
            int totalRecord = info.Output;
            rptListCate.DataSource = dt;
            rptListCate.DataBind();

            //Xu ly phan trang bang cach tao the : 
            //https://stackoverflow.com/questions/35891828/how-to-dynamically-create-an-html-table
            lblPaging.Text = RewriteUrl.generateTagPagingNodricForSearch(_baseUrlPaging, _pageNumber, pageSize, totalRecord, _originKeyword); //generateTagPaging
        }
    }

}