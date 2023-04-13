using System;

namespace Core.Gold
{
    public class GoldInfo
    {
        private int _g_ID;
        public int G_ID
        {
            get { return _g_ID; }
            set { _g_ID = value; }
        }

        private string _g_Title;
        public string G_Title
        {
            get { return _g_Title; }
            set { _g_Title = value; }
        }

        private string _g_Mobile;
        public string G_Mobile
        {
            get { return _g_Mobile; }
            set { _g_Mobile = value; }
        }

        private string _g_Description;
        public string G_Description
        {
            get { return _g_Description; }
            set { _g_Description = value; }
        }

        private DateTime _g_CreateDate;
        public DateTime G_CreateDate
        {
            get { return _g_CreateDate; }
            set { _g_CreateDate = value; }
        }

        private int _output;

        public int Output
        {
            get { return _output; }
            set { _output = value; }
        }
        private string _g_Point;

        public string G_Point
        {
            get { return _g_Point; }
            set { _g_Point = value; }
        }

    }
}
