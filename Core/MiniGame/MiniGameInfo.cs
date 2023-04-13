using System;

namespace Core.MiniGame
{
    public class MiniGameInfo
    {
        private int _mG_ID;
        public int MG_ID
        {
            get { return _mG_ID; }
            set { _mG_ID = value; }
        }

        private string _mG_Name;
        public string MG_Name
        {
            get { return _mG_Name; }
            set { _mG_Name = value; }
        }

        private string _mG_Description;
        public string MG_Description
        {
            get { return _mG_Description; }
            set { _mG_Description = value; }
        }

        private string _mG_Help;
        public string MG_Help
        {
            get { return _mG_Help; }
            set { _mG_Help = value; }
        }

        private string _mG_ImageUrl;
        public string MG_ImageUrl
        {
            get { return _mG_ImageUrl; }
            set { _mG_ImageUrl = value; }
        }

        private string _mG_LinkGame;
        public string MG_LinkGame
        {
            get { return _mG_LinkGame; }
            set { _mG_LinkGame = value; }
        }

        private DateTime _mG_CreateDate;
        public DateTime MG_CreateDate
        {
            get { return _mG_CreateDate; }
            set { _mG_CreateDate = value; }
        }

        private int _mG_ClickCount;
        public int MG_ClickCount
        {
            get { return _mG_ClickCount; }
            set { _mG_ClickCount = value; }
        }

        private int _mG_CateID;
        public int MG_CateID
        {
            get { return _mG_CateID; }
            set { _mG_CateID = value; }
        }


    }
}
