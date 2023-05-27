using Core.Category;
using Core.CategorySub;
using Core.Utils;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web.Services.Description;

namespace Web.Control.nmn
{
    public partial class ProjectDetail : System.Web.UI.UserControl
    {
        protected int _intCateID;
        protected int _serviceID;
        protected string _cateName;
        protected string _cateSubName;
        const int pageSize = 6;
        protected string _defaultBanner = "/App_Themes/house/img/bg_duan.jpg";
        protected void Page_Load(object sender, EventArgs e)
        {

            this.LoadDataByCateSubID();

        }
        public void LoadDataByCateSubID()
        {
            if (Request.QueryString["serviceID"] == null && (Page.RouteData.Values["serviceID"] == null))
            {
                Response.Redirect("/trang-chu.htm");
            }
            else
            {
                //Lay thong tin id + ten danh muc
                if (Request.QueryString["serviceID"] != null)
                    _serviceID = Convert.ToInt32(Request.QueryString["serviceID"]);
                if (Page.RouteData.Values["serviceID"] != null)
                    _serviceID = Convert.ToInt32(Page.RouteData.Values["serviceID"]);
                CategorySubInfo info = CategorySubDB.GetInfo(_serviceID);
                lblTitle.Text = info.CS_Name;
                //lblTitlePage.Text = info.CS_Name;
                //lblDescriptionPage.Text = info.CS_Description;
                imgService.ImageUrl = info.CS_ImageURL;
                lblContent.Text = info.CS_Content;

                //lblDate.Text = info.CS_CreateDate.ToString("dd/MM/yyyy");
                _cateName = info.C_Name;
                _intCateID = info.C_ID;

                //Default banner du an
                //imgBannerCate.ImageUrl = "/App_Themes/house/img/bg_duan.jpg";// Default banner category project
                string[] arrBanner = { _defaultBanner };
                CategoryInfo objCate = CategoryDB.GetInfo(_intCateID);
                if (objCate != null)
                {
                    if (objCate.C_ImageURL != null && !String.IsNullOrEmpty(objCate.C_ImageURL)) arrBanner[0] = objCate.C_ImageURL;
                }

                CategorySubInfo infoBanner = new CategorySubInfo();
                infoBanner.CS_ImageURL = objCate.C_ImageURL;
                infoBanner.CS_Name = info.CS_Name;
                infoBanner.CS_Description = info.CS_Description;
                List<CategorySubInfo> lstInfoBanner = new List<CategorySubInfo>();
                lstInfoBanner.Add(infoBanner);
                rpImageBanner.DataSource = lstInfoBanner;
                //rpImageBanner.DataSource = from c in arrBanner select new { IMG_URL_ITEM = c };
                rpImageBanner.DataBind();

                if (info.CS_ArticleImgs != null)
                {
                    if (info.CS_ArticleImgs.Contains(';'))
                    {
                        char tmp = info.CS_ArticleImgs[info.CS_ArticleImgs.Length - 1];
                        if (tmp == ';') //Loai bo ki tu ; cuoi cung
                        { info.CS_ArticleImgs = info.CS_ArticleImgs.Substring(0, info.CS_ArticleImgs.Length - 1); }
                    }
                    info.lstArticleImgs = info.CS_ArticleImgs.Split(';');
                    rpImages.DataSource = from c in info.lstArticleImgs select new { IMG_URL_ITEM = c };
                }

                rpImages.DataBind();

                Page.Title = info.CS_Name;//Set dynamic title page . tag <head runat="server">
                //For SEO Web .Ref: https://stackoverflow.com/questions/6198726/how-to-add-meta-tag-to-asp-net-content-page
                if (info.CS_Cmd != null && !String.IsNullOrEmpty(info.CS_Cmd)) Page.MetaKeywords = info.CS_Cmd;
                Page.MetaDescription = info.CS_Name;
                //Load cac bai viet lien quan
                this.LoadDataByCateWithoutCurrentID(info.C_ID, info.CS_ID);

                //Liet ke danh muc khac
                DataTable dtAnotherCate = CategoryDB.Category_GetAnotherCate(info.C_ID, objCate.C_ParentID);
                if (dtAnotherCate.Rows.Count > 0)
                {
                    rptAnotherCate.DataSource = dtAnotherCate;
                    rptAnotherCate.DataBind();
                }
            }
        }
        protected void LoadDataByCateWithoutCurrentID(int _cateID, int exceptArticleId)
        {
            CategorySubInfo info = new CategorySubInfo();
            info.C_ID = _cateID;
            DataTable dt = CategorySubDB.CategorySubsByCateWithoutCurrentID(1, 8, info, exceptArticleId);
            //if (dt.Rows.Count > 0)
            //{
            //    _cateName = dt.Rows[0]["C_Name"].ToString();
            //}
            rptListCate.DataSource = dt;
            rptListCate.DataBind();
            //int totalRecord = info.Output;
            //lblPaging.Text = RewriteUrl.generateTagPaging(_baseUrlPaging, _pageNumber, pageSize, totalRecord);
        }
    }
}