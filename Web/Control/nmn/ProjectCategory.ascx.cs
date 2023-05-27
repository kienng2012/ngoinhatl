using Core.Category;
using Core.CategorySub;
using Core.Utils;
using DevExpress.Utils;
using System;
using System.Data;
using System.Linq;
using System.Web.Services.Description;
using System.Web.UI.WebControls;

namespace Web.Control.nmn
{
    public partial class ProjectCategory : System.Web.UI.UserControl
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
            CategoryInfo objCate = CategoryDB.GetInfo(_cateID);
            //Banner cover
            lblCateName.Text = "";
            lblCateDescription.Text = "";
            //Default banner du an
            //imgBannerCate.ImageUrl = "/App_Themes/house/img/bg_duan.jpg";// Default banner category project
            string[] arrBanner = { _defaultBanner };
            if (objCate != null)
            {
                if (objCate.C_Name != null && !String.IsNullOrEmpty(objCate.C_Name)) lblCateName.Text = objCate.C_Name;
                if (objCate.C_Description != null && !String.IsNullOrEmpty(objCate.C_Description)) lblCateDescription.Text = objCate.C_Description;
                if (objCate.C_ImageURL != null && !String.IsNullOrEmpty(objCate.C_ImageURL)) arrBanner[0] = objCate.C_ImageURL;
                if (objCate.C_BaseURL != null && !String.IsNullOrEmpty(objCate.C_BaseURL)) _baseUrlPaging = objCate.C_BaseURL;
                //For SEO Web .Ref: https://stackoverflow.com/questions/6198726/how-to-add-meta-tag-to-asp-net-content-page
                if (objCate.C_Keyword != null && !String.IsNullOrEmpty(objCate.C_Keyword)) Page.MetaKeywords = objCate.C_Keyword;
                if (objCate.C_MetaDesc != null && !String.IsNullOrEmpty(objCate.C_MetaDesc)) Page.MetaDescription = objCate.C_MetaDesc;
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

            //Liet ke danh muc khac
            DataTable dtAnotherCate = CategoryDB.Category_GetAnotherCate(_cateID, objCate.C_ParentID);
            if (dtAnotherCate.Rows.Count > 0)
            {
                rptAnotherCate.DataSource = dtAnotherCate;
                rptAnotherCate.DataBind();
            }
        }

    }

}

