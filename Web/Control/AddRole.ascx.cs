using Core.Menu;
using Core.Role;
using Core.User;
using DevExpress.Web.ASPxGridView;
using System;

namespace Web.Control
{
    public partial class AddRole : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetAddRole();
            }
        }
        protected void GetAddRole()
        {
            grdAddRole.DataSource = tblRoleDetaiDB.GetAll();
            grdAddRole.DataBind();
        }

        protected void grdAddRole_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {
            tblRoleDetaiInfo info = new tblRoleDetaiInfo();
            info.FunID = Convert.ToInt32(e.NewValues["FunID"].ToString());
            info.UserID = Convert.ToInt32(e.NewValues["UserID"].ToString());
            info.IsAdd = e.NewValues["IsAdd"] is DBNull ? false : true;
            info.IsDelete = e.NewValues["IsDelete"] is DBNull ? false : true;
            info.IsUpdate = e.NewValues["IsUpdate"] is DBNull ? false : true;
            info.IsView = e.NewValues["IsView"] is DBNull ? false : true;

            tblRoleDetaiDB.Insert(info);

            e.Cancel = true;
            grdAddRole.CancelEdit();

            GetAddRole();
        }

        protected void grdAddRole_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            int ID = Convert.ToInt32(e.Keys["ID"]);
            tblRoleDetaiDB.Delete(ID);

            e.Cancel = true;
            grdAddRole.CancelEdit();
            GetAddRole();
        }

        protected void grdAddRole_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            tblRoleDetaiInfo info = new tblRoleDetaiInfo();
            info.FunID = Convert.ToInt32(e.NewValues["FunID"].ToString());
            info.UserID = Convert.ToInt32(e.NewValues["UserID"].ToString());
            info.IsAdd = (bool)e.NewValues["IsAdd"];
            info.IsDelete = (bool)e.NewValues["IsDelete"];
            info.IsUpdate = (bool)e.NewValues["IsUpdate"];
            info.IsView = (bool)e.NewValues["IsView"];
            info.ID = Convert.ToInt32(e.Keys["ID"]);

            tblRoleDetaiDB.Update(info);

            e.Cancel = true;
            grdAddRole.CancelEdit();

            GetAddRole();
        }

        protected void grdAddRole_DataBinding(object sender, EventArgs e)
        {
            GridViewDataComboBoxColumn columnkhoi = ((GridViewDataComboBoxColumn)(sender as ASPxGridView).Columns["UserID"]);

            columnkhoi.PropertiesComboBox.DataSource = tbl_UserDB.GetAll();
            columnkhoi.PropertiesComboBox.TextField = "U_UserName";
            columnkhoi.PropertiesComboBox.ValueField = "U_ID";

            GridViewDataComboBoxColumn columnFun = ((GridViewDataComboBoxColumn)(sender as ASPxGridView).Columns["FunID"]);

            columnFun.PropertiesComboBox.DataSource = tblFunDB.GetAll();
            columnFun.PropertiesComboBox.TextField = "Name";
            columnFun.PropertiesComboBox.ValueField = "ID";
        }
    }
}