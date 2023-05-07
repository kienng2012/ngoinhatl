using System;
using Core.Reservation;
using Core.Utils;

namespace Web.Control.nmn
{
    public partial class ReservationForm : System.Web.UI.UserControl
    {
        const string _tempReservation = "<html><body><h1>Xin chào, có {0} liên hệ/đặt lịch </h1><table width=\"80%\" border=\"1px solid\"><tr><td width=\"20%\">Tên khách hàng: </td><td>{1}</td><tr/><tr><td width=\"20%\">Email: </td><td>{2}</td><tr/><tr><td width=\"20%\">Số điện thoại:</td><td>{3}</td><tr/><tr><td width=\"20%\">Nội dung:</td><td>{4}</td><tr/></table></body></html>";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblResultReservation.Text = "";
            }
        }

        protected void btnSubmitReservation_Click(object sender, EventArgs e)
        {
            tbl_ReservationInfo dto = new tbl_ReservationInfo();
            dto.R_Name = rName.Text;
            dto.R_Email = rEmail.Text;
            dto.R_Phone = rPhone.Text;
            dto.R_Content = rContent.Text;

            int statusInsert = tbl_ReservationDB.Insert(dto);
            _ = statusInsert > 0 ? lblResultReservation.Text = "<span class=\"greenColor\"> Gửi yêu cầu thành công! </span>"
                : lblResultReservation.Text = "<span class=\"redColor\"> Gửi yêu cầu thất bại, vui lòng thử lại sau!</span>";
            //Page.RegisterStartupScript("UserMsg", "<script>alert('Mail sent thank you...');if(alert){ window.location='SendMail.aspx';}</script>");
            string destinationTo = System.Configuration.ConfigurationManager.AppSettings["destinationTo"];
            string destinationCC = System.Configuration.ConfigurationManager.AppSettings["destinationCC"];
            string[] destCCEmail = null;
            if (!string.IsNullOrWhiteSpace(destinationCC))
            {
                if (destinationCC.Contains(","))
                {
                    destCCEmail = destinationCC.Split(',');
                }
                else if (destinationCC.Contains(";"))
                {
                    destCCEmail = destinationCC.Split(';');
                }
                else { destCCEmail = null; }

            }
            String templateEmail = string.Format(_tempReservation, rName.Text, rName.Text, rEmail.Text, rPhone.Text, rContent.Text);
            OutlookEmail.Send(destinationTo, destCCEmail, "[ngoinhatuonglai.vn] Khách hàng liên hệ/đặt lịch", templateEmail, true, null);
        }

    }
}