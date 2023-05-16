using Core.Category;
using Core.CategorySub;
using Core.MiniGame;
using System;
using System.Data;
using System.Drawing;
using System.Text;
using System.Web;
using System.Web.UI.WebControls;

namespace Web.Control
{
    public partial class ManagerCategory : System.Web.UI.UserControl
    {
        private string SESSION_CATE_GAME1 = "SESSION_CATE_GAME1";

        protected void Page_Load(object sender, EventArgs e)
        {
            this.resetData();
            this.PageInt();
        }

        public void PageInt()
        {
            mtvMain.ActiveViewIndex = 0;
            DataTable dt = CategoryDB.GetAll();
            Session[SESSION_CATE_GAME1] = dt;
            grvCateGame.DataSource = dt;
            grvCateGame.DataBind();
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            CategoryInfo objCate = null;
            if (hdService.Value.Equals("0"))
            {
                if (CategoryDB.CheckExistsName_Category(txtName.Text) == 1)
                {
                    lblStatus.Text = "Tên danh mục đã tồn tại!";
                    lblStatus.ForeColor = Color.Red;
                    return;
                }
                else
                {
                    objCate = new CategoryInfo();
                    objCate.C_Name = txtName.Text;
                    objCate.C_BaseURL = txtBaseUrl.Text;
                    objCate.C_MetaDesc = txtMetaDesc.Text;
                    objCate.C_Keyword = txtKeyword.Text;
                    objCate.C_Description = Convert.ToString(fckDescription.Value);
                    StringBuilder sbArticleImgs = new StringBuilder();
                    if (fileUpload.HasFile)
                    {
                        if ((fileUpload.PostedFile != null) && (fileUpload.PostedFile.ContentLength > 0))
                        {
                            var count = 0;
                            String path = "/Upload/Article/";

                            foreach (HttpPostedFile uploadedFile in fileUpload.PostedFiles)
                            {
                                string prefixNameFile = DateTime.Now.ToString("yyyyMMddHHmmss");
                                string SaveLocation = path + prefixNameFile + "_" + uploadedFile.FileName;
                                try
                                {
                                    uploadedFile.SaveAs(MapPath(SaveLocation));
                                    count++;
                                    objCate.C_ImageURL = SaveLocation;
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
                        else
                        {
                            lblStatus.Text = "Please select a file to upload.";
                        }

                    }
                    else
                    {
                        lblStatus.Text = "Bạn chưa chọn ảnh mô tả!";
                        lblStatus.ForeColor = Color.Red;

                        return;
                    }
                    int isInsert = CategoryDB.Insert(objCate);
                    if (isInsert > 0)
                    {
                        lblMessage.Text = "Thêm mới thành công!";
                        lblMessage.ForeColor = Color.Blue;
                    }
                    else
                    {
                        lblMessage.Text = "Thêm mới không thành công!";
                        lblMessage.ForeColor = Color.Red;
                    }

                    //this.PageInt();
                }
            }
            else
            {
                objCate = CategoryDB.GetInfo(Convert.ToInt32(hdService.Value));
                objCate.C_Name = txtName.Text;
                //objCate.C_Description = txtDescription.Text;
                objCate.C_BaseURL = txtBaseUrl.Text;
                StringBuilder sbArticleImgs = new StringBuilder();
                if (fileUpload.HasFile)
                {
                    if ((fileUpload.PostedFile != null) && (fileUpload.PostedFile.ContentLength > 0))
                    {
                        var count = 0;
                        String path = "/Upload/Article/";

                        foreach (HttpPostedFile uploadedFile in fileUpload.PostedFiles)
                        {
                            string prefixNameFile = DateTime.Now.ToString("yyyyMMddHHmmss");
                            string SaveLocation = path + prefixNameFile + "_" + uploadedFile.FileName;
                            try
                            {
                                uploadedFile.SaveAs(MapPath(SaveLocation));
                                count++;
                                objCate.C_ImageURL = SaveLocation;
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
                    else
                    {
                        lblStatus.Text = "Please select a file to upload.";
                    }

                }
                //else
                //{
                //    lblStatus.Text = "Bạn chưa chọn ảnh mô tả!";
                //    lblStatus.ForeColor = Color.Red;

                //    return;
                //}
                objCate.C_Description = Convert.ToString(fckDescription.Value);
                objCate.C_MetaDesc = txtMetaDesc.Text;
                objCate.C_Keyword = txtKeyword.Text;
                bool isUpdate = CategoryDB.Update(objCate);
                if (isUpdate)
                {
                    lblMessage.Text = "Cập nhật thành công!";
                    lblMessage.ForeColor = Color.Blue;
                }
                else
                {
                    lblMessage.Text = "Cập nhật không thành công!";
                    lblMessage.ForeColor = Color.Red;
                }
                //this.PageInt();
            }
        }



        protected void btnCancel_Click(object sender, EventArgs e)
        {
            this.resetData();
            this.PageInt();
            mtvMain.ActiveViewIndex = 0;
        }

        protected void grvCateGame_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            int id = Convert.ToInt32(e.Keys["C_ID"].ToString());
            CategoryDB.Delete(id);
            //Refresh lại trang
            this.PageInt();
            e.Cancel = true;
            grvCateGame.CancelEdit();
        }



        public void resetData()
        {
            txtName.Text = "";
            //txtDescription.Text = "";
            txtBaseUrl.Text = "";
            fckDescription.Value = "";
            lblStatus.Text = "";
            lblMessage.Text = "";

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
        protected void linkbtnEdit_Click(object sender, EventArgs e)
        {
            LinkButton lbtn = (LinkButton)sender;
            if (!lbtn.CommandArgument.Equals("0"))
            {
                hdService.Value = lbtn.CommandArgument;

                int _CS_ID = Convert.ToInt32(lbtn.CommandArgument);
                CategoryInfo info = CategoryDB.GetInfo(_CS_ID);
                if (info != null)
                {

                    txtName.Text = info.C_Name;
                    txtBaseUrl.Text = HttpUtility.HtmlDecode(info.C_BaseURL);
                    fckDescription.Value = HttpUtility.HtmlDecode(info.C_Description);
                    imageServiceView.ImageUrl = info.C_ImageURL;
                    CategoryInfo objCate = CategoryDB.GetInfo(info.C_ID);
                }
                mtvMain.ActiveViewIndex = 1;
            }
            else
            {
                return;
            }

        }
    }
}