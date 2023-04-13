using Core.Category;
using Core.CategorySub;
using System;
using System.Data;
using System.Text.RegularExpressions;

namespace Web.Control
{
    public partial class ListByCategory : System.Web.UI.UserControl
    {
        protected int _cateID;
        protected string _cateName;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                LoadDataByCate(1);
            }



        }

        //public void GetCateID()
        //{
        //    if (Request.QueryString["cateID"] != null)
        //    {
        //        //Lay thong tin id + ten danh muc
        //        _cateID = Convert.ToInt32(Request.QueryString["cateID"]);
        //        _strCateName = CategoryDB.Category_GetCateName_ByID(_cateID);
        //    }
        //    else
        //    {
        //        Response.Redirect("/Index.aspx");
        //    }
        //}

        public static string ConvertToUnSign(string text)
        {
            for (int i = 33; i < 48; i++)
            {
                text = text.Replace(((char)i).ToString(), "");
            }
            for (int i = 58; i < 65; i++)
            {
                text = text.Replace(((char)i).ToString(), "");
            }
            for (int i = 91; i < 97; i++)
            {
                text = text.Replace(((char)i).ToString(), "");
            }
            for (int i = 123; i < 127; i++)
            {
                text = text.Replace(((char)i).ToString(), "");
            }
            text = text.Replace(" ", "-");
            Regex regex = new Regex(@"\p{IsCombiningDiacriticalMarks}+");
            string strFormD = text.Normalize(System.Text.NormalizationForm.FormD);
            return regex.Replace(strFormD, String.Empty).Replace('\u0111', 'd').Replace('\u0110', 'D');
        }
        protected void LoadDataByCate(int page)
        {
            if (Request.QueryString["cateID"] != null)
            {
                //Lay thong tin id + ten danh muc
                _cateID = Convert.ToInt32(Request.QueryString["cateID"]);
                //_strCateName = CategoryDB.Category_GetCateName_ByID(_cateID);
                //lblCateName.Text = CategoryDB.Category_GetCateName_ByID(_cateID);
                _cateName = CategoryDB.Category_GetCateName_ByID(_cateID);
                lblCateName.Text = _cateName;
                CategorySubInfo info = new CategorySubInfo();
                info.C_ID = _cateID;
                DataTable dt = CategorySubDB.CategorySub_GetAll_ByCate_Pager(page, 8, info);
                pagerCateSub.ItemCount = info.Output;
                pagerCateSub.ItemsPerPage = 8;
                rptListCate.DataSource = dt;
                rptListCate.DataBind();


            }
            else
            {
                Response.Redirect("/Trangchu.htm");
            }


        }

        protected void pagerCateSub_PageIndexChanged(object sender, EventArgs e)
        {
            this.LoadDataByCate(pagerCateSub.PageIndex + 1);
        }

    }
}