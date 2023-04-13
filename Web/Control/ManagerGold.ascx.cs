using Core.Gold;
using System;
using System.Data;
using System.Drawing;


namespace Web.Control
{
    public partial class ManagerGold : System.Web.UI.UserControl
    {
        private string SESSION_CATE_GOLD = "SESSION_CATE_GOLD";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session[SESSION_CATE_GOLD] != null)
            {
                grvCateGame.DataSource = Session[SESSION_CATE_GOLD];
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
            DataTable dt = GoldDB.GetAll();
            Session[SESSION_CATE_GOLD] = dt;
            grvCateGame.DataSource = dt;
            grvCateGame.DataBind();

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            GoldInfo objCate = null;
            if (hdCard.Value.Equals("0"))
            {


                objCate = new GoldInfo();
                objCate.G_Title = txtName.Text;
                objCate.G_Description = txtDescription.Text;
                objCate.G_Mobile = txtMobile.Text;
                objCate.G_Point = txtPoint.Text;
                int isInsert = GoldDB.Insert(objCate);
                if (isInsert == 1)
                {
                    lblMessage.Text = "Thêm mới thành công!";
                    lblMessage.ForeColor = Color.Blue;
                }
                else
                {
                    lblMessage.Text = "Lỗi :Tên giải thưởng tuần đã tồn tại !";
                    lblMessage.ForeColor = Color.Red;
                }
                this.PageInt();
                popup.ShowOnPageLoad = false;


            }
            else
            {

                objCate = GoldDB.GetInfo(Convert.ToInt32(hdCard.Value));

                objCate.G_Title = txtName.Text;
                objCate.G_Description = txtDescription.Text;
                objCate.G_Mobile = txtMobile.Text;
                objCate.G_Point = txtPoint.Text;



                int isUpdate = GoldDB.Update(objCate);
                if (isUpdate == 1)
                {
                    lblMessage.Text = "Cập nhật thành công!";
                    lblMessage.ForeColor = Color.Blue;


                }
                else
                {
                    lblMessage.Text = "Tên giải thưởng tuần đã tồn tại!Các trường khác đã được cập nhật";
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
            GoldInfo miniGameInfo = null;
            if (!hdCard.Value.Equals("0"))
            {
                miniGameInfo = GoldDB.GetInfo(Convert.ToInt32(hdCard.Value));
                if (miniGameInfo != null)
                {
                    txtName.IsValid = true;
                    txtDescription.IsValid = true;
                    txtName.Text = miniGameInfo.G_Title.ToString();
                    txtDescription.Text = miniGameInfo.G_Description;
                    txtMobile.Text = miniGameInfo.G_Mobile;
                    txtPoint.Text = miniGameInfo.G_Point;
                    txtMobile.IsValid = true;
                    txtPoint.IsValid = true;

                }
            }
            else
            {
                resetData();
            }
        }

        protected void grvCateGame_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            int id = Convert.ToInt32(e.Keys["G_ID"].ToString());
            GoldDB.Delete(id);
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
            txtPoint.Text = "";
            txtMobile.Text = "";
        }
    }
}