using Core.Menu;
using DevExpress.Web.ASPxTreeList;
using System;
using System.Data;

namespace Web.Control
{
    public partial class QuanlyFunc : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    GetFunc();
            //    treeFunc.ExpandAll();

            //}
            if (Session["keyFunc"] != null)
            {
                GetFunc();
            }
            if (!IsPostBack)
            {

                GetFunc();

            }

        }
        protected void GetFunc()
        {
            Session["keyFunc"] = tblFunDB.GetAll();
            treeFunc.DataSource = (DataTable)Session["keyFunc"];
            treeFunc.DataBind();
        }
        protected void treeFunc_NodeInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
        {
            tblFunInfo infoFunc = new tblFunInfo();
            infoFunc.Name = e.NewValues["Name"].ToString();
            infoFunc.ParentID = Convert.ToInt32(e.NewValues["ParentID"].ToString());
            infoFunc.Status = bool.Parse(e.NewValues["Status"].ToString());
            infoFunc.Thutu = Convert.ToInt32(e.NewValues["Thutu"].ToString());
            infoFunc.Url = e.NewValues["Url"].ToString();

            tblFunDB.Insert(infoFunc);

            e.Cancel = true;
            treeFunc.CancelEdit();
            GetFunc();
        }

        protected void treeFunc_DataBinding(object sender, EventArgs e)
        {
            TreeListComboBoxColumn column = ((TreeListComboBoxColumn)(sender as ASPxTreeList).Columns["ParentID"]);
            column.PropertiesComboBox.DataSource = tblFunDB.GetAll();
            column.PropertiesComboBox.TextField = "Name";
            column.PropertiesComboBox.ValueField = "ID";
            column.PropertiesComboBox.Items.Insert(0, new DevExpress.Web.ASPxEditors.ListEditItem("Cấp trên", "0"));

        }

        protected void treeFunc_NodeUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            tblFunInfo infoFunc = new tblFunInfo();
            infoFunc.ID = Convert.ToInt32(e.Keys["ID"].ToString());
            infoFunc.Name = e.NewValues["Name"].ToString();
            infoFunc.ParentID = Convert.ToInt32(e.NewValues["ParentID"].ToString());
            infoFunc.Status = (bool)e.NewValues["Status"];
            infoFunc.Thutu = Convert.ToInt32(e.NewValues["Thutu"].ToString());
            infoFunc.Url = e.NewValues["Url"].ToString();

            tblFunDB.Update(infoFunc);

            e.Cancel = true;
            treeFunc.CancelEdit();
            GetFunc();
        }

        protected void treeFunc_NodeDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
        {
            int ID = Convert.ToInt32(e.Keys["ID"].ToString());
            tblFunDB.Delete(ID);

            e.Cancel = true;
            treeFunc.CancelEdit();

            GetFunc();
        }
    }
}