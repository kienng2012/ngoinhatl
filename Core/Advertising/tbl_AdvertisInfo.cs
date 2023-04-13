using System;

namespace Core.Advertising
{
    public class tbl_AdvertisInfo
    {
        public static string BANNER_GIUA = "Banner Giữa";
        public static string BANNER_TRAI = "Banner Trái";
        public static string BANNER_PHAI = "Banner Phải";

        public static int FILE_ANH = 1;
        public static int FILE_FLASH = 0;

        private int _advID;
        public int AdvID
        {
            get { return _advID; }
            set { _advID = value; }
        }

        private string _fileName;
        public string FileName
        {
            get { return _fileName; }
            set { _fileName = value; }
        }

        private int _advWidth;
        public int AdvWidth
        {
            get { return _advWidth; }
            set { _advWidth = value; }
        }

        private int _advHeight;
        public int AdvHeight
        {
            get { return _advHeight; }
            set { _advHeight = value; }
        }

        private string _advURL;
        public string AdvURL
        {
            get { return _advURL; }
            set { _advURL = value; }
        }

        private string _advText;
        public string AdvText
        {
            get { return _advText; }
            set { _advText = value; }
        }

        private DateTime _addedDate;
        public DateTime AddedDate
        {
            get { return _addedDate; }
            set { _addedDate = value; }
        }

        private DateTime _expireDate;
        public DateTime ExpireDate
        {
            get { return _expireDate; }
            set { _expireDate = value; }
        }

        private int _clickCount;
        public int ClickCount
        {
            get { return _clickCount; }
            set { _clickCount = value; }
        }

        private string _advPosition;
        public string AdvPosition
        {
            get { return _advPosition; }
            set { _advPosition = value; }
        }

        private bool _isActive;
        public bool IsActive
        {
            get { return _isActive; }
            set { _isActive = value; }
        }

    }
}
