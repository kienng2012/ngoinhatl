using Core.User;
using System;
using System.Data;
using System.Drawing;
using System.Web.Security;
namespace Web.Control
{
    public partial class ChangePass : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtOldPassword.Text = "";
            txtNewPassword.Text = "";
            txtConfirmNewPassword.Text = "";
        }

        protected void btnOK_Click(object sender, EventArgs e)
        {


            if (txtNewPassword.Text == "")
            {
                lblMessage.ForeColor = Color.Red;
                lblMessage.Text = "Mật khẩu mới không được để trống";
                txtNewPassword.Focus();
            }
            else if (txtConfirmNewPassword.Text == "" || txtConfirmNewPassword.Text != txtNewPassword.Text)
            {
                lblMessage.ForeColor = Color.Red;
                lblMessage.Text = "Mật khẩu mới không đúng! Vui lòng nhập lại";
                txtConfirmNewPassword.Focus();
            }
            else
                if (txtOldPassword.Text == "")
            {
                lblMessage.ForeColor = Color.Red;
                lblMessage.Text = "Bạn chưa nhập mật khẩu cũ";
            }
            else
            {

                string newpass = Encrypt(txtNewPassword.Text);

                tbl_UserInfo userinfo = new tbl_UserInfo();
                userinfo.U_UserName = Session["UserName"].ToString();
                int id = Convert.ToInt32(Session["UserID"].ToString());
                userinfo.U_Password = Encrypt(txtOldPassword.Text);
                string oldpass = userinfo.U_Password;
                using (DataTable dtable = tbl_UserDB.CheckLoginAdmin(userinfo))
                {
                }
                switch (userinfo.Output)
                {
                    case 1:
                        {
                            int result = tbl_UserDB.ChangePass(userinfo.U_UserName, oldpass, newpass);
                            if (result == 1)
                            {
                                lblMessage.ForeColor = Color.Green;
                                lblMessage.Text = "Cập nhật mật khẩu mới thành công";
                            }
                        }
                        break;
                    case 2:
                        lblMessage.ForeColor = Color.Red;
                        lblMessage.Text = "Mật khẩu không đúng, vui lòng nhập lại";

                        break;
                }
            }
        }
        public static string Encrypt(string str)
        {
            return FormsAuthentication.HashPasswordForStoringInConfigFile(str, "SHA1");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            //chuyển về trang thông tin tài khoản

            Response.Redirect("/Default.aspx");
        }
    }
}