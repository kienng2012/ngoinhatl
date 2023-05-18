using Core.Category;
using Core.CategorySub;
using System;
using System.Data;
using System.Web.UI.WebControls;


namespace Web.Control.nmn
{
    public partial class HomeHT : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //LoadDataByCategory();
        }
        ////Ham load du lieu theo category 
        //private void LoadDataByCategory()
        //{

        //    rptCate.DataSource = CategoryDB.GetAll();

        //    rptCate.DataBind();
        //}

        //protected void rptCate_ItemDataBound(object sender, RepeaterItemEventArgs e)
        //{
        //    RepeaterItem ri = e.Item;
        //    if ((ri.ItemType == ListItemType.Item) || (ri.ItemType == ListItemType.AlternatingItem))
        //    {
        //        DataRowView drv = (DataRowView)ri.DataItem;
        //        if (drv != null)
        //        {

        //            Repeater rptChilden = e.Item.FindControl("rptChild") as Repeater;
        //            String MenuID = Convert.ToString(drv["C_ID"].ToString());

        //            //Lay ra thong tinn 
        //            rptChilden.DataSource = CategorySubDB.CategorySubDB_GetByCategory(Convert.ToInt32(MenuID));
        //            rptChilden.DataBind();
        //        }


        //    }
        //}

    }
}