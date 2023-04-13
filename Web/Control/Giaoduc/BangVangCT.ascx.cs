using Core.Gold;
using System;

namespace Web.Control.Giaoduc
{
    public partial class BangVangCT : System.Web.UI.UserControl
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
            if (Request.QueryString["goldId"] != null)
            {
                //Lay thong tin id + ten danh muc
                _serviceID = Convert.ToInt32(Request.QueryString["goldId"]);
                //string strCateName = CategoryDB.Category_GetCateName_ByID(_cateID);

                GoldInfo info = GoldDB.GetInfo(_serviceID);
                lblTitle.Text = info.G_Title;
                lblMobile.Text = info.G_Mobile;
                lblPoint.Text = info.G_Point;

                _cateName = "Bangvang";
                _intCateID = 1;


                //_serviceID = info.CS_ID;
                //_cateSubName = info.CS_Name;
                //lblName.Text = _cateSubName;
                //lblCmd.Text = info.CS_Cmd;
                //lblContent.Text = info.CS_Content;
                //imgService.ImageUrl = info.CS_ImageURL;

                //_intCateID = info.C_ID;

                //_cateName = CategoryDB.Category_GetCateName_ByID(_intCateID);
                //lblCateName.Text = _cateName;



            }
            else
            {
                Response.Redirect("/Trangchu.htm");
            }
        }
    }
}