using Core.Category;
using Core.CategorySub;
using DevExpress.Web.ASPxEditors;
using System;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.UI.WebControls;

namespace Web.Control
{
    public partial class ManageCategorySub : System.Web.UI.UserControl
    {

        private static String SESSION_NEWS = "SESSION_NEWS";
        string _UserName = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["U_UserName"] != null)
            {
                _UserName = Session["U_UserName"].ToString();
            }
            if (Session[SESSION_NEWS] != null)
            {
                grvNews.DataSource = Session[SESSION_NEWS];
                grvNews.DataBind();
            }
            if (!IsPostBack)
            {
                this.GetNews();
                this.LoadCategoryName(cbxCateInsert);
                this.LoadDistinctDisplayType(cbxTypeInsert);
                cbxCateInsert.SelectedIndex = 0;
                MultiView1.ActiveViewIndex = 0;

            }
        }

        protected void GetNews()
        {
            DataTable dt = CategorySubDB.GetAll();
            Session[SESSION_NEWS] = dt;
            grvNews.DataSource = dt;
            grvNews.DataBind();
        }

        protected void cbp_Callback(object sender, DevExpress.Web.ASPxClasses.CallbackEventArgsBase e)
        {
            this.LoadCategoryName(cbxCateInsert);
            //this.LoadCategoryName(cbxCateUpdate);
            txtNameInsert.IsValid = true;

            hdNews.Value = e.Parameter.ToString();
            if (!hdNews.Value.Equals("0"))
            {
                CategorySubInfo objInfo = CategorySubDB.GetInfo(Convert.ToInt32(hdNews.Value));
                txtNameInsert.Text = objInfo.CS_Name;
                txtContent.Value = objInfo.CS_Description;
                imageCateView1.ImageUrl = objInfo.CS_ImageURL;
                CategoryInfo objCate = CategoryDB.GetInfo(objInfo.CS_ID);
                cbxCateInsert.SelectedItem = cbxCateInsert.Items.FindByText(objCate.C_Name);
                cbxTypeInsert.SelectedItem = cbxTypeInsert.Items.FindByText(objInfo.CS_TypeDisplay.ToString());
                txtCMDInsert.Text = objInfo.CS_Cmd;

            }
            else
            {
                txtNameInsert.Text = "";
                txtContent.Value = "";
                imageCateView1.ImageUrl = "";
                txtCMDInsert.Text = "";
                cbxTypeInsert.SelectedIndex = 0;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (CategorySubDB.CheckExistsName_CategorySub(txtNameInsert.Text) == 1)
            {
                lbErrorUpload.Text = "Tên dịch vụ đã tồn tại!";
                lbErrorUpload.ForeColor = Color.Red;
                return;
            }
            else
            {

                CategorySubInfo objInfo = null;
                objInfo = new CategorySubInfo();
                objInfo.CS_Name = txtNameInsert.Text;
                objInfo.CS_Content = Convert.ToString(txtContent.Value);
                // Lay 100 ki tu của Content làm Descriptioon
                objInfo.CS_Description = ProcessSubString(txtDespop.Text, 185);
                objInfo.CS_Cmd = txtCMDInsert.Text;
                objInfo.CS_TypeDisplay = Convert.ToInt32(cbxTypeInsert.Value);
                objInfo.C_ID = Convert.ToInt32(cbxCateInsert.SelectedItem.Value);
                objInfo.CS_CreateDate = DateTime.Now;
                objInfo.U_UserName = _UserName;


                if (fileUpload.HasFile)
                {
                    if (CheckValidFile(fileUpload) == false && CheckFileSize(fileUpload) == false)
                    {
                        lbErrorUpload.Text = "Kích thước tập tin quá lớn hoặc tập tin không đúng định dạng!";
                        lbErrorUpload.ForeColor = Color.Red;
                        return;
                    }
                    else
                    {
                        String path = "/Skin/Images/Category/" + fileUpload.FileName;
                        fileUpload.SaveAs(MapPath(path));
                        objInfo.CS_ImageURL = path;
                    }
                }
                else
                {
                    lbErrorUpload.Text = "Bạn chưa chọn ảnh mô tả!";
                    lbErrorUpload.ForeColor = Color.Red;

                    return;
                }


                int status = CategorySubDB.Insert(objInfo);
                switch (status)
                {
                    case 1:
                        {
                            lblError.Text = "Thêm mới thành công";
                            lblError.ForeColor = Color.Blue;
                            break;
                        }
                    case 2:
                        {
                            lblError.Text = "Lỗi thêm mới";
                            lblError.ForeColor = Color.Red;
                            break;
                        }
                }
                this.GetNews();
                popup.ShowOnPageLoad = false;
            }
        }

        protected void grvNews_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            int id = Convert.ToInt32(e.Keys["CS_ID"].ToString());
            CategorySubDB.Delete(id);
            e.Cancel = true;
            grvNews.CancelEdit();
            this.GetNews();
        }

        private bool CheckFileSize()
        {
            HttpPostedFile file = fileUpload.PostedFile;
            int iFileSize = file.ContentLength;
            if (iFileSize > 1048576)
            {
                lbErrorUpload.Text = "File upload quá lớn";
                return false;
            }
            return true;
        }

        private bool CheckFileSizeEdit()
        {
            HttpPostedFile file = view2FileUpload.PostedFile;
            int iFileSize = file.ContentLength;
            if (iFileSize > 1048576)
            {
                lbErrorEdit.Text = "File upload quá lớn";
                return false;
            }
            return true;
        }

        protected void likbtn_Click(object sender, EventArgs e)
        {
            this.LoadCategoryName(cbxCateUpdate);
            this.LoadDistinctDisplayType(cbxTypeUpdate);
            LinkButton btn = (LinkButton)sender;
            int newId = Convert.ToInt32(btn.CommandArgument);
            CategorySubInfo info = CategorySubDB.GetInfo(newId);
            if (info != null)
            {
                hdNewId2.Value = Convert.ToString(newId);
                txtView2Name.Text = info.CS_Name;
                imageCateView2.ImageUrl = info.CS_ImageURL;
                txtCMDUpdate.Text = info.CS_Cmd;

                fck2.Value = info.CS_Content;
                cbxTypeUpdate.SelectedItem = cbxTypeUpdate.Items.FindByText(info.CS_TypeDisplay.ToString());
                CategoryInfo objCate = CategoryDB.GetInfo(info.C_ID);
                cbxCateUpdate.SelectedItem = cbxCateUpdate.Items.FindByText(objCate.C_Name);

                txtDes.Text = info.CS_Description;
            }
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void tbnUpdate2_Click(object sender, EventArgs e)
        {
            CategorySubInfo objInfo = CategorySubDB.GetInfo(Convert.ToInt32(hdNewId2.Value));
            if (objInfo != null)
            {
                objInfo.CS_Name = txtView2Name.Text;
                objInfo.CS_Content = fck2.Value;
                objInfo.C_ID = Convert.ToInt32(cbxCateUpdate.SelectedItem.Value);
                objInfo.CS_Cmd = txtCMDUpdate.Text;
                objInfo.CS_TypeDisplay = Convert.ToInt32(cbxTypeUpdate.SelectedItem.Value);
                objInfo.U_UserName = _UserName;
                objInfo.CS_CreateDate = DateTime.Now;
                if (this.CheckFileSizeEdit())
                {
                    if (!String.IsNullOrEmpty(view2FileUpload.FileName))
                    {
                        String path = "/Skin/Images/Category/" + view2FileUpload.FileName;
                        view2FileUpload.SaveAs(MapPath(path));
                        objInfo.CS_ImageURL = path;
                    }
                }
                //int lastIndexOf = txtContent.Value.Length / 2;
                //objInfo.N_Description =Convert.ToString(txtContent.Value.Substring(0, lastIndexOf) + "...");
                // Lay 100 ki tu của Content làm Descriptioon

                objInfo.CS_Description = ProcessSubString(txtDes.Text, 185);

                Boolean flag = CategorySubDB.Update(objInfo);
                if (flag)
                {
                    lblError.Text = "Cập nhật thành công";
                    lblError.ForeColor = Color.Blue;
                }
                else
                {
                    lblError.Text = "Cập nhật không thành công";
                    lblError.ForeColor = Color.Red;
                }
            }
            this.GetNews();
            MultiView1.ActiveViewIndex = 0;
        }


        //ham load danh muc ra combobox
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

        //Lay ra danh muc type
        protected void LoadDistinctDisplayType(ASPxComboBox combobox)
        {

            //Xóa tất cả dữ liệu ở combobox
            combobox.Items.Clear();
            DataTable dt2 = CategoryDB.Category_GetDistinctTypeDisplay();
            ListEditItem lei = null;
            foreach (DataRow row in dt2.Rows)
            {
                lei = new ListEditItem();
                lei.Value = row["CS_TypeDisplay"].ToString();
                lei.Text = row["CS_TypeDisplay"].ToString();
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

        private bool CheckValidFile(FileUpload fileUpload)
        {
            string swfExt = System.IO.Path.GetExtension(fileUpload.PostedFile.FileName);
            switch (swfExt)
            {
                case ".swf":
                    return true;

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


    }
}