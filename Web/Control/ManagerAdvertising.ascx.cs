using Core.Advertising;
using DevExpress.Web.ASPxGridView;
using System;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.UI.WebControls;

namespace Web.Control
{
    public partial class ManagerAdvertising : System.Web.UI.UserControl
    {
        private static string SESSION_ADV = "SESSION_ADV";
        private static string PATH_ADVERTISING = "/Upload/Advertise/";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session[SESSION_ADV] != null)
            {
                grvAdv.DataSource = Session[SESSION_ADV];
                grvAdv.DataBind();
            }
            if (!IsPostBack)
            {
                this.GetAdv();
            }
        }

        protected void GetAdv()
        {
            DataTable dt = tbl_AdvertisDB.GetAll();
            Session[SESSION_ADV] = dt;
            grvAdv.DataSource = dt;
            grvAdv.DataBind();
        }

        public void resetData()
        {
            txtAdvText.Text = "";
            txtAdvURL.Text = "";
            //txtCount.Text = "";
            cbTypeFile.SelectedIndex = 0;
            txtHeight.Text = "";
            //cbxAdvPosition.SelectedIndex = 0;
            //imgPreview.ImageUrl = "../../Skin/Images/cache/data/announce-100x100.jpg";
            txtWidth.Text = "";
            txtCreateDate.Value = DateTime.Now;
            txtEndDate.Value = DateTime.Now.AddMonths(1);
            lbErrorUpload.Text = "";
            lblError.Text = "";
            cboxIsActive.Checked = true;
            imgPreview.ImageUrl = "";
        }

        protected void cbp_Callback(object sender, DevExpress.Web.ASPxClasses.CallbackEventArgsBase e)
        {
            txtAdvText.IsValid = true;
            txtAdvURL.IsValid = true;
            //txtCount.IsValid = true;
            txtCreateDate.IsValid = true;
            txtEndDate.IsValid = true;
            txtHeight.IsValid = true;
            txtWidth.IsValid = true;

            hdADV.Value = e.Parameter.ToString();
            if (!hdADV.Value.Equals("0"))
            {
                tbl_AdvertisInfo newInfo = tbl_AdvertisDB.GetInfo(Convert.ToInt32(hdADV.Value));
                txtAdvText.Text = newInfo.AdvText;
                txtAdvURL.Text = newInfo.AdvURL;
                //txtCount.Text = newInfo.ClickCount.ToString();
                if (newInfo.ClickCount == 0)
                {
                    cbTypeFile.SelectedIndex = 0;
                }
                else
                {
                    cbTypeFile.SelectedIndex = 1;
                }
                txtHeight.Text = newInfo.AdvHeight.ToString();
                cbxAdvPosition.SelectedItem = cbxAdvPosition.Items.FindByText(newInfo.AdvPosition);
                txtWidth.Text = newInfo.AdvWidth.ToString();
                txtCreateDate.Value = newInfo.AddedDate;
                txtEndDate.Value = newInfo.ExpireDate;
                //if (newInfo.IsActive == true)
                //{
                //    cboxIsActive.Checked = true;
                //}
                //else
                //{
                //    cboxIsActive.Checked = false;
                //}
                lbErrorUpload.Text = "";
                cboxIsActive.Checked = newInfo.IsActive;
                imgPreview.ImageUrl = newInfo.FileName;

            }
            else
            {
                this.resetData();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            tbl_AdvertisInfo newInfo = null;
            if (hdADV.Value.Equals("0"))
            {

                newInfo = new tbl_AdvertisInfo();
                if (fileUpload.HasFile)
                {

                    if (CheckValidFile(fileUpload) == false && CheckFileSize(fileUpload) == false)
                    {
                        lbErrorUpload.ForeColor = Color.Red;
                        lbErrorUpload.Text = "Kích thước tập tin quá lớn hoặc tập tin không đúng định dạng!";
                        return;
                    }
                    else
                    {
                        String path = PATH_ADVERTISING + fileUpload.FileName;
                        fileUpload.SaveAs(MapPath(path));
                        newInfo.FileName = path;
                        imgPreview.ImageUrl = path;
                    }
                }
                else
                {
                    lbErrorUpload.ForeColor = Color.Red;
                    lbErrorUpload.Text = "Bạn phải chọn đường dẫn ảnh mô tả!";

                    return;
                }



                newInfo.AdvText = txtAdvText.Text;
                newInfo.AdvURL = txtAdvURL.Text;
                newInfo.ClickCount = Convert.ToInt32(cbTypeFile.SelectedItem.Value);
                newInfo.AdvHeight = Convert.ToInt32(txtHeight.Text);
                newInfo.AdvPosition = cbxAdvPosition.SelectedItem.Value.ToString();
                newInfo.AdvWidth = Convert.ToInt32(txtWidth.Text);
                newInfo.AddedDate = Convert.ToDateTime(txtCreateDate.Text);
                newInfo.ExpireDate = Convert.ToDateTime(txtEndDate.Value);
                if (cboxIsActive.Checked == true)
                {
                    newInfo.IsActive = true;
                }
                else
                {
                    newInfo.IsActive = false;
                }



                int status = tbl_AdvertisDB.Insert(newInfo);
                if (status > 0)
                {
                    lblError.Text = "Thêm mới thành công";
                    lblError.ForeColor = Color.Blue;

                }
                else
                {
                    lblError.Text = "Lỗi thêm mới";
                    lblError.ForeColor = Color.Red;

                }

                this.GetAdv();
                popup.ShowOnPageLoad = false;
            }
            else
            {
                newInfo = tbl_AdvertisDB.GetInfo(Convert.ToInt32(hdADV.Value));
                if (newInfo != null)
                {
                    if (fileUpload.HasFile)
                    {

                        if (CheckValidFile(fileUpload) == false && CheckFileSize(fileUpload) == false)
                        {
                            lbErrorUpload.ForeColor = Color.Red;
                            lbErrorUpload.Text = "Kích thước tập tin quá lớn hoặc tập tin không đúng định dạng!";
                            return;
                        }
                        else
                        {
                            String path = PATH_ADVERTISING + fileUpload.FileName;
                            fileUpload.SaveAs(MapPath(path));
                            newInfo.FileName = path;
                            imgPreview.ImageUrl = path;
                        }
                    }
                    newInfo.AdvText = txtAdvText.Text;
                    newInfo.AdvURL = txtAdvURL.Text;
                    newInfo.ClickCount = Convert.ToInt32(cbTypeFile.SelectedItem.Value);
                    newInfo.AdvHeight = Convert.ToInt32(txtHeight.Text);

                    newInfo.AdvPosition = cbxAdvPosition.SelectedItem.Value.ToString();

                    newInfo.AdvWidth = Convert.ToInt32(txtWidth.Text);
                    newInfo.AddedDate = Convert.ToDateTime(txtCreateDate.Value);
                    newInfo.ExpireDate = Convert.ToDateTime(txtEndDate.Value);
                    //newInfo.AddedDate = Convert.ToDateTime(txtCreateDate.Value);
                    //newInfo.ExpireDate = Convert.ToDateTime(txtEndDate.Value);
                    if (cboxIsActive.Checked == true)
                    {
                        newInfo.IsActive = true;
                    }
                    else
                    {
                        newInfo.IsActive = false;
                    }

                    //if (this.CheckFileSize())
                    //{
                    //    if (!String.IsNullOrEmpty(fileUpload.FileName))
                    //    {
                    //        String path = PATH_ADVERTISING + fileUpload.FileName;
                    //        fileUpload.SaveAs(MapPath(path));
                    //        newInfo.FileName = path;
                    //        imgPreview.ImageUrl = path;
                    //    }
                    //}

                    Boolean flag = tbl_AdvertisDB.Update(newInfo);
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
                this.GetAdv();
                popup.ShowOnPageLoad = false;
            }
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

        protected void grvAdv_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            int id = Convert.ToInt32(e.Keys["AdvID"].ToString());
            tbl_AdvertisDB.Delete(id);
            e.Cancel = true;
            grvAdv.CancelEdit();
            this.GetAdv();
        }

        protected void grvAdv_DataBinding(object sender, EventArgs e)
        {
            //GridViewDataComboBoxColumn column = (grvAdv.Columns["AdvPosition"] as GridViewDataComboBoxColumn);
            //column.PropertiesComboBox.DataSource = tbl_AdvertisDB.GetAll();
            //column.PropertiesComboBox.ValueField = "AdvPosition";


            //string strColumn = (String)column.PropertiesComboBox.ValueField;
            //if (strColumn.Equals(tbl_AdvertisInfo.BANNER_PHAI))
            //{
            //    column.PropertiesComboBox.TextField = tbl_AdvertisInfo.BANNER_PHAI;

            //}
            //else if (strColumn.Equals(tbl_AdvertisInfo.BANNER_TRAI))
            //{
            //    column.PropertiesComboBox.TextField = tbl_AdvertisInfo.BANNER_TRAI;

            //}
            //else
            //{
            //    column.PropertiesComboBox.TextField = tbl_AdvertisInfo.MENU_TRAI_UNICODE;
            //}
            GridViewDataComboBoxColumn column = (grvAdv.Columns["AdvPosition"] as GridViewDataComboBoxColumn);
            column.PropertiesComboBox.DataSource = tbl_AdvertisDB.GetAll();
            column.PropertiesComboBox.ValueField = "AdvPosition";
            column.PropertiesComboBox.TextField = "AdvPosition";
        }

        protected void cbxAdvPosition_DataBinding(object sender, EventArgs e)
        {
            DataTable dt = tbl_AdvertisDB.GetAll();
            cbxAdvPosition.DataSource = dt;
            cbxAdvPosition.DataBind();

        }

        //Kiem tra file
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