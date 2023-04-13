using Core.Category;
using System;
using System.Data;
using System.Drawing;

namespace Web.Control
{
    public partial class ManagerCategory : System.Web.UI.UserControl
    {
        private string SESSION_CATE_GAME1 = "SESSION_CATE_GAME1";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session[SESSION_CATE_GAME1] != null)
            {
                grvCateGame.DataSource = Session[SESSION_CATE_GAME1];
                grvCateGame.DataBind();
            }
            else
            {

                this.resetData();
                this.PageInt();

            }
        }


        public void PageInt()
        {
            DataTable dt = CategoryDB.GetAll();
            Session[SESSION_CATE_GAME1] = dt;
            grvCateGame.DataSource = dt;
            grvCateGame.DataBind();

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            CategoryInfo objCate = null;
            if (hdCard.Value.Equals("0"))
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
                    objCate.C_Description = txtDescription.Text;
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
                    this.PageInt();
                    popup.ShowOnPageLoad = false;
                }

            }
            else
            {

                objCate = CategoryDB.GetInfo(Convert.ToInt32(hdCard.Value));

                objCate.C_Name = txtName.Text;
                objCate.C_Description = txtDescription.Text;


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
                this.PageInt();
                popup.ShowOnPageLoad = false;

            }
        }

        protected void cbo_Callback(object sender, DevExpress.Web.ASPxClasses.CallbackEventArgsBase e)
        {
            hdCard.Value = e.Parameter.ToString();
            lblStatus.Text = "";
            CategoryInfo miniGameInfo = null;
            if (!hdCard.Value.Equals("0"))
            {
                miniGameInfo = CategoryDB.GetInfo(Convert.ToInt32(hdCard.Value));
                if (miniGameInfo != null)
                {
                    txtName.IsValid = true;
                    txtDescription.IsValid = true;
                    txtName.Text = miniGameInfo.C_Name.ToString();
                    txtDescription.Text = miniGameInfo.C_Description;

                }
            }
            else
            {
                resetData();
            }
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

        protected void btnClosePopup_Click(object sender, EventArgs e)
        {
            //this.PageInt();
            popup.ShowOnPageLoad = false;
            txtName.IsValid = true;
        }

        public void resetData()
        {
            txtName.Text = "";
            txtDescription.Text = "";
            lblStatus.Text = "";
            lblMessage.Text = "";
        }
    }
}