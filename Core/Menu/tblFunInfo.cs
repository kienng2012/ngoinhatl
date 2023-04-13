namespace Core.Menu
{
    public class tblFunInfo
    {
        private int _iD;
        public int ID
        {
            get { return _iD; }
            set { _iD = value; }
        }

        private string _name;
        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }

        private string _url;
        public string Url
        {
            get { return _url; }
            set { _url = value; }
        }

        private int _thutu;
        public int Thutu
        {
            get { return _thutu; }
            set { _thutu = value; }
        }

        private int _parentID;
        public int ParentID
        {
            get { return _parentID; }
            set { _parentID = value; }
        }

        private bool _status;
        public bool Status
        {
            get { return _status; }
            set { _status = value; }
        }

    }
}
