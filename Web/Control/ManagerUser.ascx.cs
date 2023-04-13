using Core.Group;
using Core.Role;
using Core.User;
using DevExpress.Web.ASPxEditors;
using DevExpress.Web.ASPxGridView;
using System;
using System.Data;
using System.Drawing;
using System.Security.Cryptography;
using System.Text;
using System.Web.Security;

namespace Web.Control
{
    public partial class User : System.Web.UI.UserControl
    {
        private string SESSION_USER = "SESSION_USER";
        tblRoleDetaiInfo objRole = new tblRoleDetaiInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session[SESSION_USER] != null)
            {
                grdUser.DataSource = (DataTable)Session[SESSION_USER];
                grdUser.DataBind();
            }
            objRole = tblRoleDetaiDB.CheckPermisionByUserAndFunc(Convert.ToInt32(Session["UserID"]), Convert.ToInt32(Request.QueryString["id"]));
            if (!IsPostBack)
            {
                GetUser();
                GetGroup();
                txtDOB.MaxDate = DateTime.Today;
            }
        }
        protected void GetUser()
        {
            DataTable dt = tbl_UserDB.GetAll();
            Session[SESSION_USER] = dt;
            grdUser.DataSource = dt;
            grdUser.DataBind();
        }
        protected void GetGroup()
        {
            DataTable dt = tbl_GrouDB.GetAll();
            ListEditItem lei = null;
            foreach (DataRow row in dt.Rows)
            {
                lei = new ListEditItem();
                lei.Value = row["G_ID"].ToString();
                lei.Text = row["G_Name"].ToString();
                cbbGroup.Items.Add(lei);
            }
        }

        public static string Encrypt(string str)
        {
            return FormsAuthentication.HashPasswordForStoringInConfigFile(str, "SHA1");
        }
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

        protected void grdUser_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            int id = Convert.ToInt32(e.Keys["U_ID"].ToString());
            tbl_UserInfo userInfo = tbl_UserDB.GetInfoAdmin(id);
            if (userInfo != null)
            {
                tbl_UserDB.Delete(id);
                lblError.Text = "Xóa thành công";
                lblError.ForeColor = Color.Blue;
                GetUser();
            }
            else
            {
                lblError.Text = "Bạn không được xóa người dùng không phải là quản trị viên";
                lblError.ForeColor = Color.Red;
            }
            e.Cancel = true;
            grdUser.CancelEdit();
        }

        protected void cbPopup_Callback(object sender, DevExpress.Web.ASPxClasses.CallbackEventArgsBase e)
        {
            txtUserName.IsValid = true;
            txtPass.IsValid = true;
            txtAddress.IsValid = true;
            txtDOB.IsValid = true;
            txtEmail.IsValid = true;
            txtFullName.IsValid = true;
            txtMobile.IsValid = true;

            hdUser.Value = e.Parameter.ToString();
            tbl_UserInfo userInfo = tbl_UserDB.GetInfo(Convert.ToInt32(hdUser.Value));
            if (userInfo != null)
            {
                if (userInfo.U_GroupID != 1)
                {
                    txtAddress.ReadOnly = true;
                    txtDOB.ReadOnly = true;
                    txtEmail.ReadOnly = true;
                    txtFullName.ReadOnly = true;
                    txtMobile.ReadOnly = true;
                    txtPass.ReadOnly = true;
                    txtUserName.ReadOnly = true;
                    btnUpdate.Enabled = false;
                }
                tbl_GrouInfo grouInfo = tbl_GrouDB.GetInfo(userInfo.U_GroupID);
                txtPass.ValidationSettings.RequiredField.IsRequired = false;
                txtUserName.Text = userInfo.U_UserName;
                txtPass.Text = userInfo.U_Password;
                txtFullName.Text = userInfo.U_FullName;
                txtAddress.Text = userInfo.U_Address;
                txtEmail.Text = userInfo.U_Email;
                txtDOB.Text = userInfo.U_BirthDay.ToString("dd/MM/yyyy");
                txtMobile.Text = userInfo.U_Mobile;
                cbbGroup.SelectedItem = cbbGroup.Items.FindByText(grouInfo.G_Name);
                cbbGroup.ReadOnly = true;
                cbActive.Checked = userInfo.Status;
            }
            else
            {
                txtUserName.Text = "";
                txtFullName.Text = "";
                txtPass.Text = "";
                txtAddress.Text = "";
                txtDOB.Text = "";
                txtEmail.Text = "";
                txtMobile.Text = "";
                cbbGroup.SelectedItem = cbbGroup.Items.FindByText("Quản Trị"); ;
                cbbGroup.ReadOnly = true;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            tbl_UserInfo userInfo = null;
            if (hdUser.Value.ToString().Equals("0")) //insert
            {
                userInfo = new tbl_UserInfo();
                userInfo.U_UserName = txtUserName.Text;
                userInfo.U_Password = Encrypt(txtPass.Text);
                userInfo.U_FullName = txtFullName.Text;
                userInfo.U_Address = txtAddress.Text;
                userInfo.U_Mobile = txtMobile.Text;
                userInfo.U_Email = txtEmail.Text;
                userInfo.U_BirthDay = Convert.ToDateTime(txtDOB.Value);
                userInfo.U_CreateDate = DateTime.Today;
                userInfo.Status = cbActive.Checked;
                userInfo.U_GroupID = Convert.ToInt32(cbbGroup.SelectedItem.Value);
                int status = tbl_UserDB.Insert(userInfo);
                switch (status)
                {
                    case 1:
                        {
                            lblError.Text = "Tên đăng nhập đã có người dùng";
                            lblError.ForeColor = Color.Red;
                            break;
                        }
                    case 2:
                        {
                            lblError.Text = "Thêm mới thành công";
                            lblError.ForeColor = Color.Blue;
                            break;
                        }
                }
                this.GetUser();
                popup.ShowOnPageLoad = false;
            }
            else //update
            {
                userInfo = tbl_UserDB.GetInfo(Convert.ToInt32(hdUser.Value));
                userInfo.U_Address = txtAddress.Text;
                if (!txtPass.Text.Equals(""))
                {
                    userInfo.U_Password = Encrypt(txtPass.Text);
                }
                userInfo.U_BirthDay = Convert.ToDateTime(txtDOB.Value);
                userInfo.U_Email = txtEmail.Text;
                userInfo.U_FullName = txtFullName.Text;
                userInfo.U_GroupID = Convert.ToInt32(cbbGroup.SelectedItem.Value);
                userInfo.U_Mobile = txtMobile.Text;
                userInfo.U_UserName = txtUserName.Text;
                userInfo.Status = cbActive.Checked;
                Boolean flag = tbl_UserDB.Update(userInfo);
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
                this.GetUser();
                popup.ShowOnPageLoad = false;
            }
        }

        protected void grdUser_DataBinding(object sender, EventArgs e)
        {
            GridViewDataComboBoxColumn column = (grdUser.Columns["G_Name"] as GridViewDataComboBoxColumn);
            column.PropertiesComboBox.DataSource = tbl_GrouDB.GetAll();
            column.PropertiesComboBox.ValueField = "G_Name";
            column.PropertiesComboBox.TextField = "G_Name";
        }
    }
}