using Core.Menu;
using System;
using System.Data;
using System.Web.UI.WebControls;

namespace Web.Control
{
    public partial class MenuTrai : System.Web.UI.UserControl
    {
        private int _userID;
        public int UserID
        {
            get { return _userID; }
            set { _userID = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["UserName"] == null || Session["UserName"] == "")
            //{
            //    Response.Redirect("/Default.aspx?page=Login");
            //}
            //if (!IsPostBack)
            //{
            LoadMainMenu();
            //}
        }
        private void LoadMainMenu()
        {

            if (Session["UserID"] != null)
            {
                _userID = Convert.ToInt32(Session["UserID"]);
            }
            rptMain.DataSource = tblFunDB.GetParent(_userID);
            rptMain.DataBind();
        }
        protected void rptMain_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            RepeaterItem ri = e.Item;
            if ((ri.ItemType == ListItemType.Item) || (ri.ItemType == ListItemType.AlternatingItem))
            {
                DataRowView drv = (DataRowView)ri.DataItem;
                if (drv != null)
                {
                    Repeater rptChilden = e.Item.FindControl("rptChild") as Repeater;
                    String MenuID = Convert.ToString(drv["ID"].ToString());
                    if (Session["UserID"] != null)
                    {
                        _userID = Convert.ToInt32(Session["UserID"]);
                    }

                    rptChilden.DataSource = tblFunDB.GetChild(_userID, Convert.ToInt32(MenuID));
                    rptChilden.DataBind();
                }

            }
        }
    }
}