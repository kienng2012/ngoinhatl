using System;
using System.Collections.Generic;

namespace Core.CategorySub
{
    public class CategorySubInfo
    {
        private int _cS_ID;
        public int CS_ID
        {
            get { return _cS_ID; }
            set { _cS_ID = value; }
        }

        private string _cS_Name;
        public string CS_Name
        {
            get { return _cS_Name; }
            set { _cS_Name = value; }
        }

        private string _cS_Description;
        public string CS_Description
        {
            get { return _cS_Description; }
            set { _cS_Description = value; }
        }

        private string _cS_ImageURL;
        public string CS_ImageURL
        {
            get { return _cS_ImageURL; }
            set { _cS_ImageURL = value; }
        }

        private int _c_ID;
        public int C_ID
        {
            get { return _c_ID; }
            set { _c_ID = value; }
        }

        private string _cS_Content;
        public string CS_Content
        {
            get { return _cS_Content; }
            set { _cS_Content = value; }
        }
        //new
        private string _cS_Cmd;
        public string CS_Cmd
        {
            get { return _cS_Cmd; }
            set { _cS_Cmd = value; }
        }

        private int _cS_TypeDisplay;
        public int CS_TypeDisplay
        {
            get { return _cS_TypeDisplay; }
            set { _cS_TypeDisplay = value; }
        }

        private DateTime _cS_CreateDate;
        public DateTime CS_CreateDate
        {
            get { return _cS_CreateDate; }
            set { _cS_CreateDate = value; }
        }

        private string _U_UserName;

        public string U_UserName
        {
            get { return _U_UserName; }
            set { _U_UserName = value; }
        }



        private int _output;

        public int Output
        {
            get { return _output; }
            set { _output = value; }
        }

        private string _C_Name;

        public string C_Name
        {
            get { return _C_Name; }
            set { _C_Name = value; }
        }



        private string _CS_ArticleImgs;
        public string CS_ArticleImgs { get => _CS_ArticleImgs; set => _CS_ArticleImgs = value; }

        private string[] _lstArticleImgs;
        public string[] lstArticleImgs { get => _lstArticleImgs; set => _lstArticleImgs = value; }

    }
}
