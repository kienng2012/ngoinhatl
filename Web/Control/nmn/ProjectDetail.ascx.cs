using Core.CategorySub;
using Core.Utils;
using System;
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
        protected void Page_Load(object sender, EventArgs e)
        {

            this.LoadDataByCateSubID();

        }
        public void LoadDataByCateSubID()
        {
            if (Request.QueryString["serviceID"] == null && (Page.RouteData.Values["serviceID"] == null))
            {
                Response.Redirect("/Trangchu.htm");
            }
            else
            {
                //Lay thong tin id + ten danh muc
                if (Request.QueryString["serviceID"] != null)
                    _serviceID = Convert.ToInt32(Request.QueryString["serviceID"]);
                if (Page.RouteData.Values["serviceID"] != null)
                    _serviceID = Convert.ToInt32(Page.RouteData.Values["serviceID"]);
                //string strCateName = CategoryDB.Category_GetCateName_ByID(_cateID);

                CategorySubInfo info = CategorySubDB.GetInfo(_serviceID);
                lblTitle.Text = info.CS_Name;
                imgService.ImageUrl = info.CS_ImageURL;
                lblContent.Text = info.CS_Content;
                //lblCateName.Text = info.C_Name;

                //lblDate.Text = info.CS_CreateDate.ToString("dd/MM/yyyy");
                _cateName = info.C_Name;
                _intCateID = info.C_ID;

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
                //Load cac bai viet lien quan
                this.LoadDataByCateWithoutCurrentID(_intCateID, info.CS_ID);
            }
        }
        protected void LoadDataByCateWithoutCurrentID(int _cateID, int exceptArticleId)
        {
            CategorySubInfo info = new CategorySubInfo();
            info.C_ID = _cateID;
            DataTable dt = CategorySubDB.CategorySubsByCateWithoutCurrentID(1, pageSize, info, exceptArticleId);
            if (dt.Rows.Count > 0)
            {
                _cateName = dt.Rows[0]["C_Name"].ToString();
            }
            //rptListCate.DataSource = dt;
            //rptListCate.DataBind();
            //int totalRecord = info.Output;
            //lblPaging.Text = RewriteUrl.generateTagPaging(_baseUrlPaging, _pageNumber, pageSize, totalRecord);
        }
    }
}