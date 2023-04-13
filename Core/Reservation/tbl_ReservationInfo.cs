using System;

namespace Core.Reservation
{
    public class tbl_ReservationInfo
    {
        private int _r_ID;
        private string _r_Name;
        private string _r_Email;
        private string _r_Phone;
        private string _r_Content;
        private DateTime _r_CreateDate;
        private bool _r_Status;
        private string _r_ResponseContent;
        private DateTime _r_ResponseDate;

        public int R_ID { get => _r_ID; set => _r_ID = value; }
        public string R_Name { get => _r_Name; set => _r_Name = value; }
        public string R_Email { get => _r_Email; set => _r_Email = value; }
        public string R_Phone { get => _r_Phone; set => _r_Phone = value; }
        public string R_Content { get => _r_Content; set => _r_Content = value; }
        public DateTime R_CreateDate { get => _r_CreateDate; set => _r_CreateDate = value; }
        public bool R_Status { get => _r_Status; set => _r_Status = value; }
        public string R_ResponseContent { get => _r_ResponseContent; set => _r_ResponseContent = value; }
        public DateTime R_ResponseDate { get => _r_ResponseDate; set => _r_ResponseDate = value; }
    }
}
