using Core.CategorySub;
using System;
using System.Data;
using System.Text;
using Core.Utils;

namespace Web.Control.nmn
{
    public partial class ArticleList : System.Web.UI.UserControl
    {
        protected int _cateID;
        protected string _cateName;
        protected int _pageNumber;
        const int pageSize = 10;
        protected string _baseUrlPaging = "Tin-tuc";
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
            if (_cateID == 1)
            {
                lblCategory.Text = "TIN TỨC & BÀI VIẾT";
                ltrSubLink.Text = "<a class=\"text-black\" href=\"Tin-tuc.htm\">Những bài viết nổi bật</a>";
                ltrImgProduct.Text = "";
                _baseUrlPaging = "Tin-tuc";

            }
            else if (_cateID == 2)
            {
                lblCategory.Text = "SẢN PHẨM";
                ltrSubLink.Text = "<a class=\"text-black\" href=\"San-pham.htm\">Giới thiệu về sản phẩm</a>";
                ltrImgProduct.Text = "<div class=\"row\"><img src=\"../../App_Themes/nmn/img/NMN25600Pro2.png\" width=\"90%\" alt=\"\" style=\"margin:auto;margin-bottom: 30px; margin-top: 0px; max-width:500px\" /></div>";
                _baseUrlPaging = "San-pham";
            }
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
            lblPaging.Text = RewriteUrl.generateTagPaging(_baseUrlPaging, _pageNumber, pageSize, totalRecord);
        }

    }

    //protected void pagerCateSub_PageIndexChanged(object sender, EventArgs e)
    //{
    //    this.LoadDataByCate(pagerCateSub.PageIndex + 1);
    //}


}