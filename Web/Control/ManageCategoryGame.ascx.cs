using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using Core.CategoryGame;
using System.Drawing;


namespace Web.Control
{
    public partial class ManageCategoryGame : System.Web.UI.UserControl
    {
        private string SESSION_CATE_GAME = "SESSION_CATE_GAME";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session[SESSION_CATE_GAME] != null)
            {
                grvCateGame.DataSource = Session[SESSION_CATE_GAME];
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
            DataTable dt = tbl_CategoryGameDB.GetAll();
            Session[SESSION_CATE_GAME] = dt;
            grvCateGame.DataSource = dt;
            grvCateGame.DataBind();

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            tbl_CategoryGameInfo objMiniGame = null;
            if (hdCard.Value.Equals("0"))
            {
                objMiniGame = new tbl_CategoryGameInfo();
                objMiniGame.CG_Name = txtName.Text;
                objMiniGame.CG_Description = txtDescription.Text;
                int isInsert = tbl_CategoryGameDB.Insert(objMiniGame);
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
            else
            {
                objMiniGame = tbl_CategoryGameDB.GetInfo(Convert.ToInt32(hdCard.Value));

                objMiniGame.CG_Name = txtName.Text;
                objMiniGame.CG_Description = txtDescription.Text;


                bool isUpdate = tbl_CategoryGameDB.Update(objMiniGame);
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
            tbl_CategoryGameInfo miniGameInfo = null;
            if (!hdCard.Value.Equals("0"))
            {
                miniGameInfo = tbl_CategoryGameDB.GetInfo(Convert.ToInt32(hdCard.Value));
                if (miniGameInfo != null)
                {
                    txtName.IsValid = true;
                    txtDescription.IsValid = true;
                    txtName.Text = miniGameInfo.CG_Name.ToString();
                    txtDescription.Text = miniGameInfo.CG_Description;

                }
            }
            else
            {
                resetData();
            }
        }

        protected void grvCateGame_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            int id = Convert.ToInt32(e.Keys["CG_ID"].ToString());
            tbl_CategoryGameDB.Delete(id);
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