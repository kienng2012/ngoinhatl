using Core.Role;
using System;
using System.Web.UI.WebControls;
using System.Xml;

namespace Web.Control
{
    public partial class AddRoleUser : System.Web.UI.UserControl
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

            int _userID = 0;
            if (Request.QueryString["userid"] != null)
            {
                _userID = Convert.ToInt32(Request.QueryString["userid"]);
            }
            GridView1.DataSource = tblRoleDetaiDB.GetAllByUserID(_userID);
            GridView1.DataBind();
        }
        private XmlDocument CreateDocumentAddRoll()
        {
            XmlDocument xmlAddMenuRoll = new XmlDocument();
            XmlElement doc = xmlAddMenuRoll.CreateElement("doc");
            xmlAddMenuRoll.AppendChild(doc);
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    bool isChecked = ((CheckBox)row.FindControl("chkMenu")).Checked;
                    bool IsAddNew = ((CheckBox)row.FindControl("IsAddNew")).Checked;
                    bool IsEdit = ((CheckBox)row.FindControl("IsEdit")).Checked;
                    bool IsDelete = ((CheckBox)row.FindControl("IsDelete")).Checked;
                    bool IsView = ((CheckBox)row.FindControl("IsView")).Checked;

                    if (isChecked)
                    {
                        XmlElement AddMenuRollIDList = xmlAddMenuRoll.CreateElement("AddMenuRollIDList");
                        doc.AppendChild(AddMenuRollIDList);
                        AddMenuRollIDList.SetAttribute("MenuID", GridView1.DataKeys[row.DataItemIndex].Values[0].ToString());
                        AddMenuRollIDList.SetAttribute("IsAddNew", (IsAddNew == true) ? "1" : "0");
                        AddMenuRollIDList.SetAttribute("IsEdit", (IsEdit == true) ? "1" : "0");
                        AddMenuRollIDList.SetAttribute("IsDelete", (IsDelete == true) ? "1" : "0");
                        AddMenuRollIDList.SetAttribute("IsView", (IsView == true) ? "1" : "0");
                    }
                }
            }
            return xmlAddMenuRoll;
        }
        private XmlDocument CreateDocumentEditRoll()
        {
            XmlDocument xmlEditMenuRoll = new XmlDocument();
            XmlElement doc = xmlEditMenuRoll.CreateElement("doc");
            xmlEditMenuRoll.AppendChild(doc);
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    bool isChecked = ((CheckBox)row.FindControl("chkMenu")).Checked;
                    bool IsAddNew = ((CheckBox)row.FindControl("IsAddNew")).Checked;
                    bool IsEdit = ((CheckBox)row.FindControl("IsEdit")).Checked;
                    bool IsDelete = ((CheckBox)row.FindControl("IsDelete")).Checked;
                    bool IsView = ((CheckBox)row.FindControl("IsView")).Checked;
                    string lblFuncID = ((Label)row.FindControl("lblFuncID")).Text.ToString();
                    if (isChecked)
                    {
                        XmlElement DelMenuRollIDList = xmlEditMenuRoll.CreateElement("DelMenuRollIDList");
                        doc.AppendChild(DelMenuRollIDList);
                        DelMenuRollIDList.SetAttribute("ID", GridView1.DataKeys[row.DataItemIndex].Values[0].ToString());
                    }
                    else
                    {
                        XmlElement UpdateMenuRollIDList = xmlEditMenuRoll.CreateElement("UpdateMenuRollIDList");
                        doc.AppendChild(UpdateMenuRollIDList);
                        UpdateMenuRollIDList.SetAttribute("UserID", Request.QueryString["userid"]);
                        UpdateMenuRollIDList.SetAttribute("FuncID", lblFuncID);
                        UpdateMenuRollIDList.SetAttribute("ID", GridView1.DataKeys[row.DataItemIndex].Values[0].ToString());
                        UpdateMenuRollIDList.SetAttribute("IsAddNew", (IsAddNew == true) ? "1" : "0");
                        UpdateMenuRollIDList.SetAttribute("IsEdit", (IsEdit == true) ? "1" : "0");
                        UpdateMenuRollIDList.SetAttribute("IsDelete", (IsDelete == true) ? "1" : "0");
                        UpdateMenuRollIDList.SetAttribute("IsView", (IsView == true) ? "1" : "0");
                    }
                }
            }
            return xmlEditMenuRoll;
        }
        protected void cmdCapnhat_Click(object sender, EventArgs e)
        {

            string xmlUpdateMenuRoll = CreateDocumentEditRoll().OuterXml;

            tblRoleDetaiDB.UpdateXml(xmlUpdateMenuRoll);

            GetAddRole();
        }

        protected void cmdHuy_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?page=User&id=5");
        }
    }
}