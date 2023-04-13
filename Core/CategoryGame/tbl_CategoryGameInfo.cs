namespace Core.CategoryGame
{
    public class tbl_CategoryGameInfo
    {
        private int _cG_ID;
        public int CG_ID
        {
            get { return _cG_ID; }
            set { _cG_ID = value; }
        }

        private string _cG_Name;
        public string CG_Name
        {
            get { return _cG_Name; }
            set { _cG_Name = value; }
        }

        private string _cG_Description;
        public string CG_Description
        {
            get { return _cG_Description; }
            set { _cG_Description = value; }
        }

        private int outputCount;

        public int OutputCount
        {
            get { return outputCount; }
            set { outputCount = value; }
        }

    }
}
