﻿using Core.CategorySub;
using System;

namespace Web.Control.Giaoduc
{
    public partial class SubjectDetails : System.Web.UI.UserControl
    {
        protected int _intCateID;
        protected int _serviceID;
        protected string _cateName;
        protected string _nameSubject;
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
                _nameSubject = info.CS_Name;

                imgService.ImageUrl = info.CS_ImageURL;
                lblContent.Text = info.CS_Content;
                lblCateName.Text = info.C_Name;
                try
                {
                    string[] arrCmd = info.CS_Cmd.Split(';');
                    if (arrCmd.Length > 1)
                    {
                        lblCmd.Text = arrCmd[0].ToString();
                        lblNhanh.Text = arrCmd[1].ToString();
                    }
                }
                catch (Exception e)
                {
                    Response.Write(e.Message);
                }

                //lblDate.Text = info.CS_CreateDate.ToShortDateString();
                //_cateName = info.C_Name;
                //_intCateID = info.C_ID;


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