using Core.Category;
using Core.CategorySub;
using Core.Utils;
using System;
using System.Data;
using System.Web.UI.WebControls;


namespace Web.Control.nmn
{
    public partial class StyleCategory : System.Web.UI.UserControl
    {
        protected int _cateID;
        protected string _cateName;
        protected int _pageNumber;
        const int pageSize = 12;
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
            _cateName = "Phong cách thiết kế";
            if (Request.QueryString["cateID"] != null)
            {
                _cateID = Convert.ToInt32(Request.QueryString["cateID"]);
            }
            else { _cateID = 8; }

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
            imgBannerCate.ImageUrl = "/App_Themes/house/img/bg_duan.jpg";// Default banner category project
            if (objCate != null)
            {
                if (objCate.C_Name != null && !String.IsNullOrEmpty(objCate.C_Name)) lblCateName.Text = objCate.C_Name;
                if (objCate.C_Description != null && !String.IsNullOrEmpty(objCate.C_Description)) lblCateDescription.Text = objCate.C_Description;
                if (objCate.C_ImageURL != null && !String.IsNullOrEmpty(objCate.C_ImageURL)) imgBannerCate.ImageUrl = objCate.C_ImageURL;
                if (objCate.C_BaseURL != null && !String.IsNullOrEmpty(objCate.C_BaseURL)) _baseUrlPaging = objCate.C_BaseURL;
                //For SEO Web .Ref: https://stackoverflow.com/questions/6198726/how-to-add-meta-tag-to-asp-net-content-page
                if (objCate.C_Keyword != null && !String.IsNullOrEmpty(objCate.C_Keyword)) Page.MetaKeywords = objCate.C_Keyword;
                if (objCate.C_MetaDesc != null && !String.IsNullOrEmpty(objCate.C_MetaDesc)) Page.MetaDescription = objCate.C_MetaDesc;
            }
            DataTable dt = CategorySubDB.CategorySub_GetAll_ByCate_Pager(_pageNumber, pageSize, info);

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