using Core.Reservation;
using System;
using System.Data;
using System.Drawing;

namespace Web.Control
{
    public partial class ManagerReservation : System.Web.UI.UserControl
    {
        private string SESSION_CATE_GAME1 = "SESSION_CATE_GAME1";

        protected void Page_Load(object sender, EventArgs e)
        {

            //if (Session[SESSION_CATE_GAME1] != null)
            //{
            //    grvCateGame.DataSource = Session[SESSION_CATE_GAME1];
            //    grvCateGame.DataBind();
            //}
            //else
            //{
                this.resetData();
                this.PageInt();
            //}
        }

        public void PageInt()
        {
            DataTable dt = tbl_ReservationDB.GetAll();
            Session[SESSION_CATE_GAME1] = dt;
            grvCateGame.DataSource = dt;
            grvCateGame.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            tbl_ReservationInfo dto = null;


            dto = tbl_ReservationDB.GetInfo(Convert.ToInt32(hdCard.Value));
            dto.R_ResponseContent = txtResponseContent.Text;
            dto.R_Status = cbStatus.Checked;

            bool isUpdate = tbl_ReservationDB.Update(dto);
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

        protected void cbo_Callback(object sender, DevExpress.Web.ASPxClasses.CallbackEventArgsBase e)
        {
            hdCard.Value = e.Parameter.ToString();
            lblStatus.Text = "";
            tbl_ReservationInfo dto = null;
            if (!hdCard.Value.Equals("0"))
            {
                dto = tbl_ReservationDB.GetInfo(Convert.ToInt32(hdCard.Value));
                if (dto != null)
                {
                    txtName.IsValid = true;
                    txtName.ReadOnly = true;
                    txtName.Text = dto.R_Name;
                    txtEmail.Text = dto.R_Email;
                    txtPhone.Text = dto.R_Phone;
                    txtContent.Text = dto.R_Content;
                    _ = dto.R_CreateDate != null ? txtCreateDate.Text = dto.R_CreateDate.ToString("dd/MM/yyyy") : "";
                    cbStatus.Checked = dto.R_Status;
                    txtResponseContent.Text = dto.R_ResponseContent;
                    if (dto.R_ResponseDate != null && dto.R_ResponseDate.CompareTo(new DateTime(1945, 01, 01)) > 0)
                        txtResponseDate.Text = dto.R_ResponseDate.ToString("dd/MM/yyyy");
                    else
                        txtResponseDate.Text = "";
                }
            }
            else
            {
                resetData();
            }
        }

        protected void grvCateGame_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            int id = Convert.ToInt32(e.Keys["R_ID"].ToString());
            tbl_ReservationDB.Delete(id);
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
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtContent.Text = "";
            txtCreateDate.Text = "";
            txtResponseContent.Text = "";
            txtResponseDate.Text = "";
            lblStatus.Text = "";
            lblMessage.Text = "";
        }
    }
}