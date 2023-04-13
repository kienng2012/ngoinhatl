using Core.User;
using System;
using System.Data;
using System.Web.Security;

namespace Web.Control
{
    public partial class Login : System.Web.UI.UserControl
    {
        private string strPass = "";
        private string strUser = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static string Encrypt(string str)
        {
            return FormsAuthentication.HashPasswordForStoringInConfigFile(str, "SHA1");
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                strUser = txtTenDangNhap.Text;
                strPass = txtMatkhau.Text;

                tbl_UserInfo infouser = new tbl_UserInfo();
                infouser.U_UserName = strUser;
                infouser.U_Password = Encrypt(strPass);
                DataTable dtUser = tbl_UserDB.CheckLoginAdmin(infouser);
                switch (infouser.Output)
                {
                    case 1:
                        {
                            Session["Username"] = dtUser.Rows[0]["U_UserName"].ToString();
                            Session["UserID"] = dtUser.Rows[0]["U_ID"].ToString();

                            /*Redirect về trang chủ*/
                            Response.Redirect("/Default.aspx?page=Home");
                            //Response.Redirect("/Default.aspx");
                            break;
                        }
                    case 2:
                        {
                            lblThong_bao.Text = "Đăng nhập thất bại";
                            break;
                        }
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}