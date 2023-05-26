
using Core.Comment;
using System;
using System.Data;
using System.Drawing;
using System.Text;
using System.Web;
using System.Web.UI.WebControls;

namespace Web.Control
{
    public partial class ManagerComment : System.Web.UI.UserControl
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
            DataTable dt = CommentDB.GetAll();
            Session[SESSION_CATE_GAME1] = dt;
            grvCateGame.DataSource = dt;
            grvCateGame.DataBind();
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            CommentInfo objCate = null;
            if (hdService.Value.Equals("0"))
            {

                objCate = new CommentInfo();
                objCate.C_Name = txtName.Text;
                //objCate.C_BaseURL = txtBaseUrl.Text;
                objCate.C_Company = txtCompany.Text;
                objCate.C_Major = txtMajor.Text;
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
                int isInsert = CommentDB.Insert(objCate);
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
            else
            {
                objCate = CommentDB.GetInfo(Convert.ToInt32(hdService.Value));
                objCate.C_Name = txtName.Text;
                //objCate.C_Description = txtDescription.Text;
                //objCate.C_BaseURL = txtBaseUrl.Text;
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
                objCate.C_Company = txtCompany.Text;
                objCate.C_Major = txtMajor.Text;
                bool isUpdate = CommentDB.Update(objCate);
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
            CommentDB.Delete(id);
            //Refresh lại trang
            this.PageInt();
            e.Cancel = true;
            grvCateGame.CancelEdit();
        }



        public void resetData()
        {
            txtName.Text = "";
            //txtDescription.Text = "";
            //txtBaseUrl.Text = "";
            fckDescription.Value = "";
            lblStatus.Text = "";
            lblMessage.Text = "";
            txtMajor.Text = "";
            txtCompany.Text = "";

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
                CommentInfo info = CommentDB.GetInfo(_CS_ID);
                if (info != null)
                {

                    txtName.Text = info.C_Name;
                    //txtBaseUrl.Text = HttpUtility.HtmlDecode(info.C_BaseURL);
                    fckDescription.Value = HttpUtility.HtmlDecode(info.C_Description);
                    imageServiceView.ImageUrl = info.C_ImageURL;
                    txtMajor.Text = info.C_Major;
                    txtCompany.Text = info.C_Company;
                    CommentInfo objCate = CommentDB.GetInfo(info.C_ID);
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