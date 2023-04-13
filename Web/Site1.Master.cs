using System;

namespace Web
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Server.Transfer("/Login.aspx");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserName"] == null)
                {
                    login.Visible = false;

                }
                else
                {
                    login.Visible = true;
                    lblUser.Text = Session["UserName"].ToString();
                    lblUserLogin.Text = Session["UserName"].ToString();

                }
            }
        }
    }
}
