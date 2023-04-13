using Core.CategoryGame;
using Core.MiniGame;
using DevExpress.Web.ASPxEditors;
using System;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.UI.WebControls;

namespace Web.Control
{
    public partial class ManageMiniGame : System.Web.UI.UserControl
    {
        public string swfFileName = "";
        private static string _strHttpLink = ConfigurationManager.AppSettings["httpLink"].ToString();
        //private static string _strHttpLink = "";

        private string SESSION_MINI_GAME = "SESSION_MINI_GAME";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session[SESSION_MINI_GAME] != null)
            {
                grvMiniGame.DataSource = Session[SESSION_MINI_GAME];
                grvMiniGame.DataBind();
            }
            else
            {

                this.resetData();
                this.PageInt();

            }
        }


        public void PageInt()
        {
            DataTable dt = MiniGameDB.GetAll();
            Session[SESSION_MINI_GAME] = dt;
            grvMiniGame.DataSource = dt;
            grvMiniGame.DataBind();

        }

        //
        protected void LoadCategoryGame()
        {

            //Xóa tất cả dữ liệu ở combobox
            cbCateGame.Items.Clear();
            DataTable dt2 = tbl_CategoryGameDB.GetAll();

            ListEditItem lei = null;
            foreach (DataRow row in dt2.Rows)
            {
                lei = new ListEditItem();
                lei.Value = row["CG_ID"].ToString();
                lei.Text = row["CG_Name"].ToString();
                cbCateGame.Items.Add(lei);
            }
            cbCateGame.DataBind();
        }
        protected void grvMiniGame_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            int id = Convert.ToInt32(e.Keys["MG_ID"].ToString());
            MiniGameDB.Delete(id);
            //Refresh lại trang
            this.PageInt();
            e.Cancel = true;
            grvMiniGame.CancelEdit();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            this.LoadCategoryGame();

            MiniGameInfo objMiniGame = null;
            if (hdCard.Value.Equals("0"))
            {
                objMiniGame = new MiniGameInfo();
                if (fuloadImageGame.HasFile)
                {
                    lblUploadImage.Text = "";
                    if (CheckValidFile(fuloadImageGame) == false && CheckFileSize(fuloadImageGame) == false)
                    {
                        lblUploadImage.Text = "Kích thước tập tin quá lớn hoặc tập tin không đúng định dạng!";
                        return;
                    }
                    else
                    {
                        String path = _strHttpLink + "/UploadGame/" + fuloadImageGame.FileName;
                        fuloadImageGame.SaveAs(MapPath(path));
                        objMiniGame.MG_ImageUrl = path;
                    }
                }
                else
                {
                    lblUploadImage.Text = "Bạn phải chọn đường dẫn ảnh mô tả!";
                    return;
                }
                if (fuploadLinkGame.HasFile)
                {
                    lblUploadGame.Text = "";
                    if (CheckValidFile(fuploadLinkGame) == false && CheckFileSize(fuploadLinkGame) == false)
                    {
                        lblUploadGame.Text = "Kích thước tập tin quá lớn hoặc tập tin không đúng định dạng!";
                        return;
                    }
                    else
                    {
                        String path = _strHttpLink + "/UploadGame/" + fuploadLinkGame.FileName;
                        fuploadLinkGame.SaveAs(MapPath(path));
                        objMiniGame.MG_LinkGame = path;
                    }
                }
                else
                {
                    lblUploadGame.Text = "Bạn phải chọn đường dẫn game!";
                    return;
                }
                //set click count = 0
                objMiniGame.MG_ClickCount = 0;
                objMiniGame.MG_Name = txtName.Text;
                objMiniGame.MG_Description = txtDescription.Text;
                objMiniGame.MG_Help = txtHelp.Text;
                //load danh muc game
                this.LoadCategoryGame();
                objMiniGame.MG_CateID = Convert.ToInt32(cbCateGame.SelectedItem.Value);
                objMiniGame.MG_CreateDate = DateTime.Now;

                int isInsert = MiniGameDB.Insert(objMiniGame);
                if (isInsert > 0)
                {

                    lblMessage.Text = "Thêm mới thành công!";
                    lblMessage.ForeColor = Color.Blue;

                    this.PageInt();
                    popup.ShowOnPageLoad = false;
                }
                else
                {

                    lblMessage.Text = "Thêm mới thất bại!";
                    lblMessage.ForeColor = Color.Red;
                    popup.ShowOnPageLoad = false;
                }


            }
            //Cập nhật
            else
            {
                objMiniGame = MiniGameDB.GetInfo(Convert.ToInt32(hdCard.Value));
                objMiniGame.MG_Name = txtName.Text;
                objMiniGame.MG_Description = txtDescription.Text;
                objMiniGame.MG_Help = txtHelp.Text;
                objMiniGame.MG_CateID = Convert.ToInt32(cbCateGame.SelectedItem.Value);


                if (fuloadImageGame.HasFile)
                {
                    if (CheckValidFile(fuloadImageGame) == false && CheckFileSize(fuloadImageGame) == false)
                    {
                        lblUploadImage.Text = "Kích thước tập tin quá lớn hoặc tập tin không đúng định dạng!";
                        return;
                    }
                    else
                    {
                        String path = _strHttpLink + "/UploadGame/" + fuloadImageGame.FileName;
                        fuloadImageGame.SaveAs(MapPath(path));
                        objMiniGame.MG_ImageUrl = path;
                    }
                }
                if (fuploadLinkGame.HasFile)
                {
                    if (CheckValidFile(fuploadLinkGame) == false && CheckFileSize(fuploadLinkGame) == false)
                    {
                        lblUploadGame.Text = "Kích thước tập tin quá lớn hoặc tập tin không đúng định dạng!";
                        return;
                    }
                    else
                    {
                        String path = _strHttpLink + "/UploadGame/" + fuploadLinkGame.FileName;
                        fuploadLinkGame.SaveAs(MapPath(path));
                        objMiniGame.MG_LinkGame = path;
                    }
                }

                objMiniGame.MG_CateID = Convert.ToInt32(cbCateGame.SelectedItem.Value.ToString());

                bool isUpdate = MiniGameDB.Update(objMiniGame);
                if (isUpdate)
                {

                    lblMessage.Text = "Cập nhật thành công!";
                    lblMessage.ForeColor = Color.Blue;
                    popup.ShowOnPageLoad = false;
                    this.PageInt();

                }
                else
                {

                    lblMessage.Text = "Cập nhật không thành công!";
                    lblMessage.ForeColor = Color.Red;
                    popup.ShowOnPageLoad = false;
                }

            }
        }
        protected void cbo_Callback(object sender, DevExpress.Web.ASPxClasses.CallbackEventArgsBase e)
        {
            //Load category
            this.LoadCategoryGame();

            hdCard.Value = e.Parameter.ToString();
            lblStatus.Text = "";
            MiniGameInfo miniGameInfo = null;
            if (!hdCard.Value.Equals("0"))
            {
                miniGameInfo = MiniGameDB.GetInfo(Convert.ToInt32(hdCard.Value));
                if (miniGameInfo != null)
                {
                    txtName.IsValid = true;
                    txtDescription.IsValid = true;
                    txtHelp.IsValid = true;

                    txtName.Text = miniGameInfo.MG_Name.ToString();
                    imageGames.ImageUrl = miniGameInfo.MG_ImageUrl.ToString();
                    txtHelp.Text = miniGameInfo.MG_Help.ToString();
                    txtDescription.Text = miniGameInfo.MG_Description;


                    swfFileName = miniGameInfo.MG_LinkGame;
                    tbl_CategoryGameInfo tblCate = tbl_CategoryGameDB.GetInfo(miniGameInfo.MG_CateID);
                    cbCateGame.SelectedItem = cbCateGame.Items.FindByText(tblCate.CG_Name);
                    //cbCateGame.SelectedItem = cbCateGame.Items.FindByText(miniGameInfo.MG_CateID);
                    //cbCateGame.SelectedItem.Value = miniGameInfo.MG_CateID;
                }
            }
            else
            {
                resetData();
                //imgPreview.ImageUrl = "../Skin/Images/cache/data/announce-100x100.jpg";
            }
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
        public void resetData()
        {
            txtName.Text = "";
            txtDescription.Text = "";
            txtHelp.Text = "";
            lblStatus.Text = "";
            lblUploadGame.Text = "";
            cbCateGame.SelectedIndex = 0;
            lblUploadGame.Text = "";
            lblUploadImage.Text = "";
            lblStatus.Text = "";
            txtName.IsValid = true;
            txtDescription.IsValid = true;
            txtHelp.IsValid = true;
            lblMessage.Text = "";
        }

        protected void btnClosePopup_Click(object sender, EventArgs e)
        {
            resetData();
            //this.PageInt();
            popup.ShowOnPageLoad = false;

        }
        //string GetUplaodImagePhysicalPath()
        //{
        //    return System.Web.HttpContext.Current.Request.PhysicalApplicationPath + "UploadGame\\";
        //}

    }
}