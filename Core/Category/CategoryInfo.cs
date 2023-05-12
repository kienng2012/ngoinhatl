﻿namespace Core.Category
{
    public class CategoryInfo
    {
        private int _c_ID;
        public int C_ID
        {
            get { return _c_ID; }
            set { _c_ID = value; }
        }

        private string _c_Name;
        public string C_Name
        {
            get { return _c_Name; }
            set { _c_Name = value; }
        }

        private string _c_Description;
        public string C_Description
        {
            get { return _c_Description; }
            set { _c_Description = value; }
        }
        private string _C_BaseURL;
        public string C_BaseURL { get => _C_BaseURL; set => _C_BaseURL = value; }



        private int _output;

        public int Output
        {
            get { return _output; }
            set { _output = value; }
        }
        private string _C_ImageURL;
        public string C_ImageURL { get => _C_ImageURL; set => _C_ImageURL = value; }
    }

}
