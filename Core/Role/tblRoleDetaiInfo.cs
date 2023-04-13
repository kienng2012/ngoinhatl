namespace Core.Role
{
    public class tblRoleDetaiInfo
    {
        private int _iD;
        public int ID
        {
            get { return _iD; }
            set { _iD = value; }
        }

        private int _userID;
        public int UserID
        {
            get { return _userID; }
            set { _userID = value; }
        }

        private int _funID;
        public int FunID
        {
            get { return _funID; }
            set { _funID = value; }
        }

        private bool _isDelete;
        public bool IsDelete
        {
            get { return _isDelete; }
            set { _isDelete = value; }
        }

        private bool _isUpdate;
        public bool IsUpdate
        {
            get { return _isUpdate; }
            set { _isUpdate = value; }
        }

        private bool _isAdd;
        public bool IsAdd
        {
            get { return _isAdd; }
            set { _isAdd = value; }
        }

        private bool _isView;
        public bool IsView
        {
            get { return _isView; }
            set { _isView = value; }
        }

    }
}
