using Core.Comment;
using System;
using System.Data;

namespace Web.Control.nmn
{
    public partial class Testimonial : System.Web.UI.UserControl
    {
        const int _TypeDisplayHome = 1;
        protected int _cateID;
        protected string _cateName;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDataByCate(1);
            }
        }
        protected void LoadDataByCate(int page)
        {
            _cateName = "Dự án";
            if (Request.QueryString["cateID"] != null)
            {
                _cateID = Convert.ToInt32(Request.QueryString["cateID"]);
            }
            else { _cateID = 1; }

            CommentInfo info = new CommentInfo();
            DataTable dt = CommentDB.Comment_GetAll_ByCate_Pager(page, 12, info);
            rptComment.DataSource = dt;
            rptComment.DataBind();
        }
    }

}