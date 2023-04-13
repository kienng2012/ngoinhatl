using Core.Group;
using Core.User;
using System;
using System.Data;
using System.Drawing;

namespace Web.Control
{
    public partial class ManagerGroup : System.Web.UI.UserControl
    {
        private static String SESSION_GROUP = "SESSION_GROUP";


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session[SESSION_GROUP] != null)
            {
                grvGroup.DataSource = Session[SESSION_GROUP];
                grvGroup.DataBind();
            }
            if (!IsPostBack)
            {
                this.GetGroup();
            }
        }

        protected void GetGroup()
        {
            DataTable dt = tbl_GrouDB.GetAll();
            Session[SESSION_GROUP] = dt;
            grvGroup.DataSource = dt;
            grvGroup.DataBind();
        }

        protected void cbp_Callback(object sender, DevExpress.Web.ASPxClasses.CallbackEventArgsBase e)
        {
            hdGroup.Value = e.Parameter.ToString();
            tbl_GrouInfo groupInfo = null;
            if (!hdGroup.Value.Equals("0"))
            {
                groupInfo = tbl_GrouDB.GetInfo(Convert.ToInt32(hdGroup.Value));
                txtName.Text = groupInfo.G_Name;
                txtDesc.Text = groupInfo.G_Description;
            }
            else
            {
                txtName.Text = "";
                txtDesc.Text = "";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            tbl_GrouInfo groupInfo = null;
            if (hdGroup.Value.Equals("0"))
            {
                groupInfo = new tbl_GrouInfo();
                groupInfo.G_Name = txtName.Text;
                groupInfo.G_Description = txtDesc.Text;
                int status = tbl_GrouDB.Insert(groupInfo);
                switch (status)
                {
                    case 1:
                        {
                            lblError.Text = "Thêm mới thành công";
                            lblError.ForeColor = Color.Blue;
                            break;
                        }
                    case 2:
                        {
                            lblError.Text = "Tên nhóm đã được sử dụng";
                            lblError.ForeColor = Color.Red;
                            break;
                        }
                }
                this.GetGroup();
                popup.ShowOnPageLoad = false;
            }
            else
            {
                groupInfo = tbl_GrouDB.GetInfo(Convert.ToInt32(hdGroup.Value));
                if (groupInfo != null)
                {
                    if (groupInfo.G_Name.Equals("Quản Trị"))
                    {
                        lblError.Text = "Bạn không được phép cập nhật nhóm này";
                        lblError.ForeColor = Color.Red;
                    }
                    else
                    {
                        groupInfo.G_Name = txtName.Text;
                        groupInfo.G_Description = txtDesc.Text;
                        Boolean flag = tbl_GrouDB.Update(groupInfo);
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
                }
                this.GetGroup();
                popup.ShowOnPageLoad = false;
            }
        }

        protected void grvCardType_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            int id = Convert.ToInt32(e.Keys["G_ID"].ToString());
            tbl_GrouInfo groundInfo = tbl_GrouDB.GetInfo(id);
            if (groundInfo.G_Name.Equals("Quản Trị"))
            {
                lblError.Text = "Bạn không được phép xóa nhóm này";
                lblError.ForeColor = Color.Red;
            }
            else
            {
                DataTable dt = tbl_UserDB.GetAllWithGroup(id);
                if (dt.Rows.Count > 0)
                {
                    lblError.Text = "Bạn không thể xóa nhóm đang có dữ liệu";
                    lblError.ForeColor = Color.Red;
                }
                else
                {
                    tbl_GrouDB.Delete(id);
                    lblError.Text = "Xóa thành công";
                    lblError.ForeColor = Color.Blue;
                    this.GetGroup();
                }
            }
            e.Cancel = true;
            grvGroup.CancelEdit();
        }
    }
}