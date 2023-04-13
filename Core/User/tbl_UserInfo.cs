using System;

namespace Core.User
{
    public class tbl_UserInfo
    {
        private int _u_ID;
        public int U_ID
        {
            get { return _u_ID; }
            set { _u_ID = value; }
        }

        private string _u_UserName;
        public string U_UserName
        {
            get { return _u_UserName; }
            set { _u_UserName = value; }
        }

        private string _u_Password;
        public string U_Password
        {
            get { return _u_Password; }
            set { _u_Password = value; }
        }

        private string _u_FullName;
        public string U_FullName
        {
            get { return _u_FullName; }
            set { _u_FullName = value; }
        }

        private double _u_Money;
        public double U_Money
        {
            get { return _u_Money; }
            set { _u_Money = value; }
        }

        private string _u_Mobile;
        public string U_Mobile
        {
            get { return _u_Mobile; }
            set { _u_Mobile = value; }
        }

        private string _u_Address;
        public string U_Address
        {
            get { return _u_Address; }
            set { _u_Address = value; }
        }

        private int _u_GroupID;
        public int U_GroupID
        {
            get { return _u_GroupID; }
            set { _u_GroupID = value; }
        }

        private DateTime _u_CreateDate;
        public DateTime U_CreateDate
        {
            get { return _u_CreateDate; }
            set { _u_CreateDate = value; }
        }

        private DateTime _u_BirthDay;
        public DateTime U_BirthDay
        {
            get { return _u_BirthDay; }
            set { _u_BirthDay = value; }
        }

        private string _secretKey;
        public string SecretKey
        {
            get { return _secretKey; }
            set { _secretKey = value; }
        }

        private bool _status;
        public bool Status
        {
            get { return _status; }
            set { _status = value; }
        }

        private int _Output;
        public int Output
        {
            get { return _Output; }
            set { _Output = value; }
        }

        private string _u_Email;
        public string U_Email
        {
            get { return _u_Email; }
            set { _u_Email = value; }
        }
    }
}
