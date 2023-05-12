using System;

namespace Web
{
    public partial class Index : System.Web.UI.Page
    {
        const string pageQuery = "page";
        const string basePath = "~/Control/nmn";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                ModulePages page = ModulePages.Home;//Default is "Home" page
                if (Request.QueryString[pageQuery] != null)
                {
                    page = (ModulePages)Enum.Parse(typeof(ModulePages), Request.QueryString[pageQuery], true);
                }
                // Hien thi cac User Control theo ten 
                string src = string.Format("{0}/{1}.ascx", basePath, page);
                pnlHolder1.Controls.Add(this.LoadControl(src));
            }
            catch (NullReferenceException ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        public enum ModulePages
        {
            Home,
            //ListNews,
            //ListSubject,
            ArticleTop,
            ArticleList,
            NewsDetails,
            Reservation,
            ReservationForm,
            ArticleProduct,
            Projects,
            ProjectDetail,
            ProjectDetail2,
            ProjectTop,
            Styles,
            StyleTop,
            StyleDetail,
            About,
            Recruitment,
            RecruitmentDetail,
            BannerContact,
            //SubjectDetails,
            //BangVang,
            //BangVangCT,
            //ListByCategory,
            //ServiceDetails,
        }
    }
}