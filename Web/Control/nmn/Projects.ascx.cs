using Core.Category;
using Core.CategorySub;
using Core.Utils;
using System;
using System.Data;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;


namespace Web.Control.nmn
{
    public partial class Projects : System.Web.UI.UserControl
    {
        protected int _cateID;
        protected string _cateName;
        protected int _pageNumber;
        const int pageSize = 12;
        protected string _baseUrlPaging = "du-an";
        protected string _defaultBanner = "/App_Themes/house/img/bg_duan.jpg";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDataByCate();
            }
        }
        protected void LoadDataByCate()
        {


            _cateName = "Dự án";
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
            info.C_ParentID = _cateID;
            CategoryInfo objCate = CategoryDB.GetInfo(_cateID);
            string[] arrBanner = { _defaultBanner };
            if (objCate != null)
            {
                //For SEO Web .Ref: https://stackoverflow.com/questions/6198726/how-to-add-meta-tag-to-asp-net-content-page
                if (objCate.C_Keyword != null && !String.IsNullOrEmpty(objCate.C_Keyword)) Page.MetaKeywords = objCate.C_Keyword;
                if (objCate.C_MetaDesc != null && !String.IsNullOrEmpty(objCate.C_MetaDesc)) Page.MetaDescription = objCate.C_MetaDesc;
                if (objCate.C_ImageURL != null && !String.IsNullOrEmpty(objCate.C_ImageURL)) arrBanner[0] = objCate.C_ImageURL; /*imgBannerCate.ImageUrl = objCate.C_ImageURL;*/
            }
            rpImageBanner.DataSource = from c in arrBanner select new { IMG_URL_ITEM = c };
            rpImageBanner.DataBind();
            DataTable dt = CategorySubDB.CategorySub_GetAll_ByCate_Pager(_pageNumber, pageSize, info);

            int totalRecord = info.Output;
            rptListCate.DataSource = dt;
            rptListCate.DataBind();

            //Xu ly phan trang bang cach tao the : 
            //https://stackoverflow.com/questions/35891828/how-to-dynamically-create-an-html-table
            lblPaging.Text = RewriteUrl.generateTagPagingNodric(_baseUrlPaging, _pageNumber, pageSize, totalRecord); //generateTagPaging
        }
    }

}