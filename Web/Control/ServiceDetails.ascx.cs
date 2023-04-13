using Core.Category;
using Core.CategorySub;
using System;

namespace Web.Control
{
    public partial class ServiceDetails : System.Web.UI.UserControl
    {

        protected int _intCateID;
        protected int _serviceID;
        protected string _cateName;
        protected string _cateSubName;
        protected void Page_Load(object sender, EventArgs e)
        {

            this.LoadDataByCateSubID();
        }
        public void LoadDataByCateSubID()
        {
            if (Request.QueryString["serviceID"] != null)
            {
                //Lay thong tin id + ten danh muc
                _serviceID = Convert.ToInt32(Request.QueryString["serviceID"]);
                //string strCateName = CategoryDB.Category_GetCateName_ByID(_cateID);

                CategorySubInfo info = CategorySubDB.GetInfo(_serviceID);
                //_serviceID = info.CS_ID;
                _cateSubName = info.CS_Name;
                lblName.Text = _cateSubName;
                lblCmd.Text = info.CS_Cmd;
                lblContent.Text = info.CS_Content;
                imgService.ImageUrl = info.CS_ImageURL;

                _intCateID = info.C_ID;

                _cateName = CategoryDB.Category_GetCateName_ByID(_intCateID);
                lblCateName.Text = _cateName;



            }
            else
            {
                Response.Redirect("/Trangchu.htm");
            }
        }
        //public static string ConvertToUnSign(string text)
        //{
        //    for (int i = 33; i < 48; i++)
        //    {
        //        text = text.Replace(((char)i).ToString(), "");
        //    }
        //    for (int i = 58; i < 65; i++)
        //    {
        //        text = text.Replace(((char)i).ToString(), "");
        //    }
        //    for (int i = 91; i < 97; i++)
        //    {
        //        text = text.Replace(((char)i).ToString(), "");
        //    }
        //    for (int i = 123; i < 127; i++)
        //    {
        //        text = text.Replace(((char)i).ToString(), "");
        //    }
        //    text = text.Replace(" ", "-");
        //    Regex regex = new Regex(@"\p{IsCombiningDiacriticalMarks}+");
        //    string strFormD = text.Normalize(System.Text.NormalizationForm.FormD);
        //    return regex.Replace(strFormD, String.Empty).Replace('\u0111', 'd').Replace('\u0110', 'D');
        //}
    }

}