using Core.Category;
//using Core.Category;
using Core.CategorySub;
using DevExpress.Web.ASPxEditors;
using System;
using System.Data;
using System.Drawing;
using System.IO;
using System.Text;
using System.Web;
using System.Web.UI.WebControls;


namespace Web.Control
{
    public partial class ManagerServiceVzone : System.Web.UI.UserControl
    {
        private string SESSION_CATE_GAME = "SESSION_CATE_GAME";
        private string _UserName = "";
        private static String path = "/Upload/Article/";

        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session[SESSION_CATE_GAME] != null)
            {
                grvCateGame.DataSource = Session[SESSION_CATE_GAME];
                grvCateGame.DataBind();
            }

            if (!IsPostBack)
            {

                this.LoadCategoryName(cbxCategory);
                cbxCategory.SelectedIndex = 0;
                this.resetData();
                this.PageInt();
            }
        }


        public void PageInt()
        {
            mtvMain.ActiveViewIndex = 0;
            DataTable dt = CategorySubDB.CategorySub_GetAll_GetCateName();
            Session[SESSION_CATE_GAME] = dt;
            grvCateGame.DataSource = dt;
            grvCateGame.DataBind();

        }


        public void resetData()
        {
            txtName.IsValid = true;
            //txtCMD.IsValid = true;
            txtName.Text = "";
            txtDescription1.Value = "";
            lblStatus.Text = "";
            lblMessage.Text = "";
            fckContent.Value = "";
            ckboxDisplay.Checked = false;
            cbxCategory.SelectedIndex = 0;
            //txtCMD.Text = "";
        }

        protected void linkbtnEdit_Click(object sender, EventArgs e)
        {
            LinkButton lbtn = (LinkButton)sender;
            if (!lbtn.CommandArgument.Equals("0"))
            {
                hdService.Value = lbtn.CommandArgument;

                int _CS_ID = Convert.ToInt32(lbtn.CommandArgument);
                CategorySubInfo info = CategorySubDB.GetInfo(_CS_ID);
                if (info != null)
                {

                    txtName.Text = info.CS_Name;
                    txtDescription1.Text = HttpUtility.HtmlDecode(info.CS_Description);
                    //txtCMD.Text = HttpUtility.HtmlDecode(info.CS_Cmd);
                    fckContent.Value = info.CS_Content;
                    imageServiceView.ImageUrl = info.CS_ImageURL;
                    imageAvatar.ImageUrl = info.CS_ImageURL;
                    CategoryInfo objCate = CategoryDB.GetInfo(info.C_ID);
                    cbxCategory.SelectedItem = cbxCategory.Items.FindByText(objCate.C_Name);
                    if (info.CS_TypeDisplay == 1)
                    {
                        ckboxDisplay.Checked = true;
                    }
                    else
                    {
                        ckboxDisplay.Checked = false;
                    }
                }
                mtvMain.ActiveViewIndex = 1;
            }
            else
            {
                return;
            }

        }
        protected void linkbtnAdd_Click(object sender, EventArgs e)
        {
            LinkButton lbtn = (LinkButton)sender;
            if (lbtn.CommandArgument.Equals("0"))
            {
                hdService.Value = lbtn.CommandArgument;
                this.resetData();
                mtvMain.ActiveViewIndex = 1;
            }
            else
            {
                return;
            }
        }

        protected void LoadCategoryName(ASPxComboBox combobox)
        {
            //Xóa tất cả dữ liệu ở combobox
            combobox.Items.Clear();
            DataTable dt2 = CategoryDB.Category_GetDistinctName();
            ListEditItem lei = null;
            foreach (DataRow row in dt2.Rows)
            {
                lei = new ListEditItem();
                lei.Value = row["C_ID"].ToString();
                lei.Text = row["C_Name"].ToString();
                combobox.Items.Add(lei);
            }
            combobox.DataBind();
        }

        public string ProcessSubString(string strName, int length)
        {
            if (strName.Length > length)
            {
                strName = strName.Substring(0, length - 3) + "...";
            }
            return strName;
        }
        public string GetLastCharacterByLen(string strName, int length)
        {
            if (strName.Length > length)
            {
                strName = strName.Substring(strName.Length - length);
            }
            return strName;
        }

        private bool CheckValidFile(FileUpload fileUpload)
        {
            string swfExt = System.IO.Path.GetExtension(fileUpload.PostedFile.FileName);
            switch (swfExt)
            {
                case ".jpg":
                    return true;

                case ".png":
                    return true;

                case ".gif":
                    return true;

                case ".jpeg":
                    return true;

                default:
                    {
                        //lblUploadGame.Text = "Vui lòng chỉ chọn đúng định dạng (.swf , .jpg, .gif, .png, .jpeg) !";
                        return false;
                    }
            }
        }

        private bool CheckFileSize(FileUpload fileUpload)
        {
            HttpPostedFile file = fileUpload.PostedFile;
            int iFileSize = file.ContentLength;
            if (iFileSize > 0 && iFileSize < 1550000)
            {
                //lblStatus.Text = "File upload quá lớn";
                return true;
            }
            return false;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (hdService.Value.Equals("0"))
            {
                if (CategorySubDB.CheckExistsNameInCate_CategorySub(txtName.Text, Convert.ToInt32(cbxCategory.SelectedItem.Value)) == 1)
                {
                    lblStatus.Text = "Tên bài viết đã tồn tại!";
                    lblStatus.ForeColor = Color.Red;
                    return;
                }
                else
                {
                    CategorySubInfo objInfo = null;
                    objInfo = new CategorySubInfo();
                    objInfo.CS_Name = txtName.Text;
                    objInfo.CS_Content = Convert.ToString(fckContent.Value);
                    objInfo.CS_Description = ProcessSubString(HttpUtility.HtmlEncode(txtDescription1.Text), 185);
                    //objInfo.CS_Cmd = txtCMD.Text;
                    //objInfo.CS_Cmd = HttpUtility.HtmlEncode(txtCMD.Text);
                    if (ckboxDisplay.Checked)
                    {
                        objInfo.CS_TypeDisplay = 1;
                    }
                    else
                    {
                        objInfo.CS_TypeDisplay = 0;
                    }
                    objInfo.C_ID = Convert.ToInt32(cbxCategory.SelectedItem.Value);
                    CategoryInfo categoryInfo = CategoryDB.GetInfo(objInfo.C_ID);
                    if (categoryInfo != null)
                    {
                        objInfo.C_ParentID = categoryInfo.C_ParentID;
                    }
                    objInfo.CS_CreateDate = DateTime.Now;
                    objInfo.U_UserName = Session["Username"].ToString();
                    //Anh Avatar cua bai viet
                    if (fileAvatar.HasFile)
                    {
                        if ((fileAvatar.PostedFile != null) && (fileAvatar.PostedFile.ContentLength > 0))
                        {
                            //String path = "/Upload/Article/";

                            foreach (HttpPostedFile uploadedFile in fileAvatar.PostedFiles)
                            {
                                string prefixNameFile = DateTime.Now.ToString("yyyyMMddHHmmssfff") + "_";
                                string SaveLocation = path + prefixNameFile + this.GetLastCharacterByLen(uploadedFile.FileName, 15);
                                try
                                {
                                    uploadedFile.SaveAs(MapPath(SaveLocation));
                                    objInfo.CS_ImageURL = SaveLocation;//First img is avatar
                                }
                                catch (Exception ex)
                                {
                                    lblStatus.Text = "Error: " + ex.Message;
                                }
                            }
                        }
                        else
                        {
                            lblStatus.Text = "Please select a file avatar to upload.";
                        }
                    }
                    else
                    {
                        lblStatus.Text = "Bạn chưa chọn ảnh avatar!";
                        lblStatus.ForeColor = Color.Red;
                        return;
                    }

                    //Danh sach Anh cua bai viet
                    StringBuilder sbArticleImgs = new StringBuilder();
                    if (fileUpload.HasFile)
                    {
                        if ((fileUpload.PostedFile != null) && (fileUpload.PostedFile.ContentLength > 0))
                        {
                            var count = 0;
                            //String path = "/Upload/Article/";

                            foreach (HttpPostedFile uploadedFile in fileUpload.PostedFiles)
                            {
                                string prefixNameFile = DateTime.Now.ToString("yyyyMMddHHmmssfff") + "_";
                                string SaveLocation = path + prefixNameFile + this.GetLastCharacterByLen(uploadedFile.FileName, 15);
                                //string SaveLocation = Server.MapPath(urlFile);
                                try
                                {
                                    uploadedFile.SaveAs(MapPath(SaveLocation));
                                    sbArticleImgs.Append(SaveLocation).Append(";"); //Second img is image detail 
                                    count++;
                                }
                                catch (Exception ex)
                                {
                                    lblStatus.Text = "Error: " + ex.Message;
                                }
                            }
                            if (count > 0)
                            {
                                lblStatus.Text = count + " files has been uploaded.";
                            }
                        }
                        objInfo.CS_ArticleImgs = sbArticleImgs.Length > 0 ? sbArticleImgs.ToString() : null;
                        //else
                        //{
                        //    lblStatus.Text = "Please select a file to upload.";
                        //}

                        //if (CheckValidFile(fileUpload) == false && CheckFileSize(fileUpload) == false)
                        //{
                        //    lblStatus.Text = "Kích thước tập tin quá lớn hoặc tập tin không đúng định dạng!";
                        //    lblStatus.ForeColor = Color.Red;
                        //    return;
                        //}
                        //else
                        //{
                        //    String path = "/Skin/Images/Category/" + fileUpload.FileName;
                        //    fileUpload.SaveAs(MapPath(path));
                        //    objInfo.CS_ImageURL = path;
                        //}

                    }
                    /*
                     else
                     {
                         lblStatus.Text = "Bạn chưa chọn danh sách ảnh của bài viết!";
                         lblStatus.ForeColor = Color.Red;
                         return;
                     }
                    */


                    int status = CategorySubDB.Insert(objInfo);
                    if (status > 1)
                    {
                        lblMessage.Text = "Thêm mới thành công";
                        lblMessage.ForeColor = Color.Blue;
                        this.PageInt();
                    }
                    else
                    {
                        lblStatus.Text = "Lỗi thêm mới";
                        lblStatus.ForeColor = Color.Red;

                    }
                }
            }
            else
            {
                CategorySubInfo objInfo = CategorySubDB.GetInfo(Convert.ToInt32(hdService.Value));
                objInfo.CS_Name = txtName.Text;
                objInfo.CS_Content = Convert.ToString(fckContent.Value);
                objInfo.CS_Description = ProcessSubString(HttpUtility.HtmlEncode(txtDescription1.Text), 185);
                //objInfo.CS_Cmd = txtCMD.Text;
                //objInfo.CS_Cmd = HttpUtility.HtmlEncode(txtCMD.Text);
                if (ckboxDisplay.Checked)
                {
                    objInfo.CS_TypeDisplay = 1;
                }
                else
                {
                    objInfo.CS_TypeDisplay = 0;
                }

                objInfo.C_ID = Convert.ToInt32(cbxCategory.SelectedItem.Value);
                CategoryInfo categoryInfo = CategoryDB.GetInfo(objInfo.C_ID);
                if (categoryInfo != null)
                {
                    objInfo.C_ParentID = categoryInfo.C_ParentID;
                }
                objInfo.CS_CreateDate = DateTime.Now;
                objInfo.U_UserName = Session["Username"].ToString();
                //Anh Avatar cua bai viet
                if (fileAvatar.HasFile)
                {
                    if ((fileAvatar.PostedFile != null) && (fileAvatar.PostedFile.ContentLength > 0))
                    {
                        String path = "/Upload/Article/";
                        foreach (HttpPostedFile uploadedFile in fileAvatar.PostedFiles)
                        {
                            string prefixNameFile = DateTime.Now.ToString("yyyyMMddHHmmssfff") + "_";
                            string SaveLocation = path + prefixNameFile + this.GetLastCharacterByLen(uploadedFile.FileName, 15);
                            try
                            {
                                uploadedFile.SaveAs(MapPath(SaveLocation));
                                objInfo.CS_ImageURL = SaveLocation;//First img is avatar
                            }
                            catch (Exception ex)
                            {
                                lblStatus.Text = "Error: " + ex.Message;
                            }
                        }
                    }
                    else
                    {
                        lblStatus.Text = "Please select a file avatar to upload.";
                    }
                }


                //Danh sach Anh cua bai viet
                StringBuilder sbArticleImgs = new StringBuilder();
                if (fileUpload.HasFile)
                {
                    if ((fileUpload.PostedFile != null) && (fileUpload.PostedFile.ContentLength > 0))
                    {
                        var count = 0;
                        String path = "/Upload/Article/";

                        foreach (HttpPostedFile uploadedFile in fileUpload.PostedFiles)
                        {
                            string prefixNameFile = DateTime.Now.ToString("yyyyMMddHHmmssfff") + "_";
                            string SaveLocation = path + prefixNameFile + this.GetLastCharacterByLen(uploadedFile.FileName, 15);
                            //string SaveLocation = Server.MapPath(urlFile);
                            try
                            {
                                uploadedFile.SaveAs(MapPath(SaveLocation));
                                sbArticleImgs.Append(SaveLocation).Append(";"); //Second img is image detail 
                                count++;
                            }
                            catch (Exception ex)
                            {
                                lblStatus.Text = "Error: " + ex.Message;
                            }
                        }
                        if (count > 0)
                        {
                            lblStatus.Text = count + " files has been uploaded.";
                        }
                    }
                    //objInfo.CS_ArticleImgs = sbArticleImgs.Length > 0 ? sbArticleImgs.ToString() : null;
                    if (sbArticleImgs.Length > 0)
                    {
                        objInfo.CS_ArticleImgs = sbArticleImgs.ToString();
                    }

                }



                bool status = CategorySubDB.Update(objInfo);
                {
                    if (status == true)
                    {
                        lblMessage.Text = "Cập nhật thành công";
                        lblMessage.ForeColor = Color.Blue;
                        this.PageInt();
                    }
                    else
                    {
                        lblStatus.Text = "Cập nhật không thành công";
                        lblStatus.ForeColor = Color.Red;
                    }
                }
            }

        }

        protected void grvCateGame_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            int id = Convert.ToInt32(e.Keys["CS_ID"].ToString());
            CategorySubDB.Delete(id);
            e.Cancel = true;
            grvCateGame.CancelEdit();
            this.PageInt();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            this.resetData();
            mtvMain.ActiveViewIndex = 0;
        }

    }
}