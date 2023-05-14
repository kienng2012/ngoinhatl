using Core.CategorySub;
using Core.Utils;
using System;
using System.Data;
using System.Linq;
using System.Web.Services.Description;

namespace Web.Control.nmn
{
    public partial class Arbaro24hDetail : System.Web.UI.UserControl
    {
        protected int _cateProjectID = 1;
        protected int _intCateID;
        protected int _serviceID;
        protected string _titleArticle;
        protected string _cateSubName;
        const int pageSize = 6;
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
                //string strCateName = CategoryDB.Category_GetCateName_ByID(_cateID);

                //CategorySubInfo info = CategorySubDB.GetInfo(_serviceID);
                DataTable dt = CategorySubDB.CategorySubDB_GetById(_serviceID);
                if (dt.Rows.Count > 0)
                {
                    rptDetail.DataSource = dt;
                    rptDetail.DataBind();
                    _titleArticle = dt.Rows[0]["CS_Name"].ToString();
                    Page.Title = _titleArticle;//Set dynamic title page . tag <head runat="server">
                    lblTitlePage.Text = _titleArticle;
                    //imgService.ImageUrl = dt.Rows[0]["CS_ImageURL"].ToString();
                    //lblContent.Text = info.CS_Content;
                    //lblCateName.Text = info.C_Name;
                    //_cateName = info.C_Name;
                    _intCateID = Convert.ToInt32(dt.Rows[0]["C_ID"]);
                }

                //lblDate.Text = info.CS_CreateDate.ToString("dd/MM/yyyy");


                //if (info.CS_ArticleImgs != null)
                //{
                //    if (info.CS_ArticleImgs.Contains(';'))
                //    {
                //        char tmp = info.CS_ArticleImgs[info.CS_ArticleImgs.Length - 1];
                //        if (tmp == ';') //Loai bo ki tu ; cuoi cung
                //        { info.CS_ArticleImgs = info.CS_ArticleImgs.Substring(0, info.CS_ArticleImgs.Length - 1); }
                //    }
                //    info.lstArticleImgs = info.CS_ArticleImgs.Split(';');
                //    rpImages.DataSource = from c in info.lstArticleImgs select new { IMG_URL_ITEM = c };
                //}

                //rpImages.DataBind();


                //Load cac bai viet lien quan
                //this.LoadDataByCateWithoutCurrentID(_intCateID, info.CS_ID);
                //this.LoadDataByProjectWithoutCurrentID(_cateProjectID, _serviceID);
                this.LoadDataByCateWithoutCurrentID(_intCateID, _serviceID);
            }
        }
        /*
        protected void LoadDataByProjectWithoutCurrentID(int _cateID, int exceptArticleId)
        {
            CategorySubInfo info = new CategorySubInfo();
            info.C_ID = _cateID;
            DataTable dt = CategorySubDB.CategorySubsByCateWithoutCurrentID(1, pageSize, info, exceptArticleId);
            if (dt.Rows.Count > 0)
            {
                _titleArticle = dt.Rows[0]["C_Name"].ToString();
            }
            rptProjects.DataSource = dt;
            rptProjects.DataBind();
            //int totalRecord = info.Output;
            //lblPaging.Text = RewriteUrl.generateTagPaging(_baseUrlPaging, _pageNumber, pageSize, totalRecord);
        }
        */
        protected void LoadDataByCateWithoutCurrentID(int _cateID, int exceptArticleId)
        {
            CategorySubInfo info = new CategorySubInfo();
            info.C_ID = _cateID;
            DataTable dt = CategorySubDB.CategorySubsByCateWithoutCurrentID(1, pageSize, info, exceptArticleId);
            if (dt.Rows.Count > 0)
            {
                _titleArticle = dt.Rows[0]["C_Name"].ToString();
            }
            rptListCate.DataSource = dt;
            rptListCate.DataBind();
            //int totalRecord = info.Output;
            //lblPaging.Text = RewriteUrl.generateTagPaging(_baseUrlPaging, _pageNumber, pageSize, totalRecord);
        }

    }
}