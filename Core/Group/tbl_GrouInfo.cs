namespace Core.Group
{
    public class tbl_GrouInfo
    {
        private int _g_ID;
        public int G_ID
        {
            get { return _g_ID; }
            set { _g_ID = value; }
        }

        private string _g_Name;
        public string G_Name
        {
            get { return _g_Name; }
            set { _g_Name = value; }
        }

        private string _g_Description;
        public string G_Description
        {
            get { return _g_Description; }
            set { _g_Description = value; }
        }

    }
}
