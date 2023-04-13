using Core.User;
using System;
using System.Drawing;
using System.Security.Cryptography;
using System.Text;
namespace Web.Control
{
    public partial class UserProfile : System.Web.UI.UserControl
    {
        public int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.loadInfo();
            }


        }
        public void loadInfo()
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("/Login.aspx");
            }
            txtUsername.Text = Session["UserName"].ToString();
            id = Convert.ToInt32(Session["UserID"].ToString());
            tbl_UserInfo infouser = tbl_UserDB.GetInfo(id);
            txtFullName.Text = infouser.U_FullName;
            txtAddress.Text = infouser.U_Address;
            txtEmail.Text = infouser.U_Email;
            txtPhone.Text = infouser.U_Mobile;
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            tbl_UserInfo infouser = tbl_UserDB.GetInfo(Convert.ToInt32(Session["UserID"].ToString()));
            infouser.U_FullName = txtFullName.Text;
            infouser.U_Address = txtAddress.Text;
            infouser.U_Email = txtEmail.Text;
            infouser.U_Mobile = txtPhone.Text;
            infouser.U_UserName = txtUsername.Text;

            bool isUpdate = tbl_UserDB.Update(infouser);

            if (isUpdate == true)
            {
                lblMessage.ForeColor = Color.Green;
                lblMessage.Text = "Cập nhật thông tin thành công";
                btnCancel.Visible = true;
                btnUpdate.Visible = true;
            }
            else
            {
                lblMessage.ForeColor = Color.Red;
                lblMessage.Text = "Cập nhật thất bại vui lòng thử lại sau!!!";
            }

        }
        // Encrypt("vutuyen", "8b55fbad860443e2328436518eca42cd"+"vutuyen");
        public static String Encrypt(String plainText, String key)
        {
            var plainBytes = Encoding.UTF8.GetBytes(plainText);
            return Convert.ToBase64String(Encrypt(plainBytes, GetRijndaelManaged(key)));
        }
        public static byte[] Encrypt(byte[] plainBytes, RijndaelManaged rijndaelManaged)
        {
            return rijndaelManaged.CreateEncryptor()
                .TransformFinalBlock(plainBytes, 0, plainBytes.Length);
        }
        public static RijndaelManaged GetRijndaelManaged(String secretKey)
        {
            var keyBytes = new byte[16];
            var secretKeyBytes = Encoding.UTF8.GetBytes(secretKey);
            Array.Copy(secretKeyBytes, keyBytes, Math.Min(keyBytes.Length, secretKeyBytes.Length));
            return new RijndaelManaged
            {
                Mode = CipherMode.ECB,
                Padding = PaddingMode.PKCS7,
                KeySize = 128,
                BlockSize = 128,
                Key = keyBytes,
                IV = keyBytes
            };
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            //chuyển về trang thông tin tài khoản
            Response.Redirect("/Default.aspx");
        }

    }
}