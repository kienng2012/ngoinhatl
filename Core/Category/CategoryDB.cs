using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Core.Category
{
    public class CategoryDB
    {
        public static DataTable GetAll()
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("Category_GetAll", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            try
            {
                retVal = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(dbCmd);
                da.Fill(retVal);
            }
            finally
            {
                dbConn.Close();
            }
            return retVal;
        }
        public static void Delete(int _c_ID)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("Category_Delete", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add("@C_ID", _c_ID);
            try
            {
                dbConn.Open();
                dbCmd.ExecuteNonQuery();
            }
            finally
            {
                dbConn.Close();
            }
        }
        public static int Insert(CategoryInfo _categoryInfo)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("Category_Insert", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add("@C_Name", _categoryInfo.C_Name);
            dbCmd.Parameters.Add("@C_Description", _categoryInfo.C_Description);
            dbCmd.Parameters.Add("@C_BaseURL", _categoryInfo.C_BaseURL);
            dbCmd.Parameters.Add("@C_ImageURL", _categoryInfo.C_ImageURL);
            dbCmd.Parameters.Add("@C_MetaDesc", _categoryInfo.C_MetaDesc);
            dbCmd.Parameters.Add("@C_Keyword", _categoryInfo.C_Keyword);
            dbCmd.Parameters.Add("@RETURN_VALUE", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
            try
            {
                dbConn.Open();
                dbCmd.ExecuteNonQuery();
                return (int)dbCmd.Parameters["@RETURN_VALUE"].Value;
            }
            finally
            {
                dbConn.Close();
            }
        }

        public static bool Update(CategoryInfo _categoryInfo)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("Category_Update", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add("@C_ID", _categoryInfo.C_ID);
            dbCmd.Parameters.Add("@C_Name", _categoryInfo.C_Name);
            dbCmd.Parameters.Add("@C_BaseURL", _categoryInfo.C_BaseURL);
            dbCmd.Parameters.Add("@C_ImageURL", _categoryInfo.C_ImageURL);
            dbCmd.Parameters.Add("@C_Description", _categoryInfo.C_Description);
            dbCmd.Parameters.Add("@C_MetaDesc", _categoryInfo.C_MetaDesc);
            dbCmd.Parameters.Add("@C_Keyword", _categoryInfo.C_Keyword);
            
            try
            {
                dbConn.Open();
                dbCmd.ExecuteNonQuery();
                return true;
            }
            finally
            {
                dbConn.Close();
            }
            return false;
        }

        public static CategoryInfo GetInfo(int _c_ID)
        {
            CategoryInfo retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("Category_GetInfo", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add("@C_ID", _c_ID);
            try
            {
                dbConn.Open();
                SqlDataReader dr = dbCmd.ExecuteReader();
                if (dr.Read())
                {
                    retVal = new CategoryInfo();
                    retVal.C_ID = Convert.ToInt32(dr["C_ID"]);
                    retVal.C_ParentID = Convert.ToInt32(dr["C_ParentID"]);
                    retVal.C_Name = Convert.ToString(dr["C_Name"]);
                    retVal.C_BaseURL = Convert.ToString(dr["C_BaseURL"]);
                    retVal.C_ImageURL = Convert.ToString(dr["C_ImageURL"]);
                    retVal.C_Keyword = Convert.ToString(dr["C_Keyword"]);
                    retVal.C_MetaDesc = Convert.ToString(dr["C_MetaDesc"]);
                    retVal.C_Description = Convert.ToString(dr["C_Description"]);
                }
                if (dr != null) dr.Close();
            }
            finally
            {
                dbConn.Close();
            }
            return retVal;
        }

        //return: 1-tồn tại   2-chưa tồn tại
        public static int CheckExistsName_Category(string C_Name)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("CheckExistsName_Category", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@C_Name", C_Name);
            dbCmd.Parameters.Add(new SqlParameter("@output", SqlDbType.Int, 4, ParameterDirection.Output, false, 0, 0, "", DataRowVersion.Proposed, 0));
            try
            {
                dbConn.Open();
                dbCmd.ExecuteNonQuery();
                return (int)dbCmd.Parameters["@output"].Value;
            }
            finally
            {

                dbConn.Close();
            }
        }

        public static DataTable Category_GetDistinctName()
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("Category_GetDistinctName", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            try
            {
                retVal = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(dbCmd);
                da.Fill(retVal);
            }
            finally
            {
                dbConn.Close();
            }
            return retVal;
        }

        public static DataTable Category_GetDistinctTypeDisplay()
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("Category_GetDistinctTypeDisplay", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            try
            {
                retVal = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(dbCmd);
                da.Fill(retVal);
            }
            finally
            {
                dbConn.Close();
            }
            return retVal;
        }

        //Lay thong tin ten danh muc theo id 
        public static string Category_GetCateName_ByID(int _c_ID)
        {
            CategoryInfo retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("Category_GetCateName_ByID", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add("@C_ID", _c_ID);
            try
            {
                dbConn.Open();
                SqlDataReader dr = dbCmd.ExecuteReader();
                if (dr.Read())
                {
                    retVal = new CategoryInfo();

                    retVal.C_Name = Convert.ToString(dr["C_Name"]);
                }
                if (dr != null) dr.Close();
            }
            finally
            {
                dbConn.Close();
            }
            return retVal.C_Name;
        }



    }
}
