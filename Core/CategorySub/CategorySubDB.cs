using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;

namespace Core.CategorySub
{
    public class CategorySubDB
    {
        public static DataTable GetAll()
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("CategorySub_GetAll", dbConn);
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
        public static DataTable CategorySub_GetAll_GetCateName()
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("CategorySub_GetAll_GetCateName", dbConn);
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

        // Ham lay ten the theo category  tbl_CardType_GetByCategory
        public static DataTable CategorySubDB_GetByCategory(int _C_ID)
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("CategorySubDB_GetByCategory", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@C_ID", _C_ID);
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
        public static void Delete(int _cS_ID)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("CategorySub_Delete", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add("@CS_ID", _cS_ID);
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
        public static int Insert(CategorySubInfo _categorySubInfo)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("CategorySub_Insert", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add("@CS_Name", _categorySubInfo.CS_Name);
            dbCmd.Parameters.Add("@CS_Description", _categorySubInfo.CS_Description);
            dbCmd.Parameters.Add("@CS_ImageURL", _categorySubInfo.CS_ImageURL);
            dbCmd.Parameters.Add("@C_ID", _categorySubInfo.C_ID);
            dbCmd.Parameters.Add("@C_ParentID", _categorySubInfo.C_ParentID);
            dbCmd.Parameters.Add("@CS_Content", _categorySubInfo.CS_Content);
            dbCmd.Parameters.Add("@CS_Cmd", _categorySubInfo.CS_Cmd);
            dbCmd.Parameters.Add("@CS_TypeDisplay", _categorySubInfo.CS_TypeDisplay);
            dbCmd.Parameters.Add("@CS_CreateDate", _categorySubInfo.CS_CreateDate);
            dbCmd.Parameters.Add("@CS_ArticleImgs", _categorySubInfo.CS_ArticleImgs);
            dbCmd.Parameters.Add("@U_UserName", _categorySubInfo.U_UserName);
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

        public static bool Update(CategorySubInfo _categorySubInfo)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("CategorySub_Update", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add("@CS_ID", _categorySubInfo.CS_ID);
            dbCmd.Parameters.Add("@CS_Name", _categorySubInfo.CS_Name);
            dbCmd.Parameters.Add("@CS_Description", _categorySubInfo.CS_Description);
            dbCmd.Parameters.Add("@CS_ImageURL", _categorySubInfo.CS_ImageURL);
            dbCmd.Parameters.Add("@C_ID", _categorySubInfo.C_ID);
            dbCmd.Parameters.Add("@C_ParentID", _categorySubInfo.C_ParentID);
            dbCmd.Parameters.Add("@CS_Content", _categorySubInfo.CS_Content);
            dbCmd.Parameters.Add("@CS_Cmd", _categorySubInfo.CS_Cmd);
            dbCmd.Parameters.Add("@CS_TypeDisplay", _categorySubInfo.CS_TypeDisplay);
            dbCmd.Parameters.Add("@CS_CreateDate", _categorySubInfo.CS_CreateDate);
            dbCmd.Parameters.Add("@CS_ArticleImgs", _categorySubInfo.CS_ArticleImgs);
            dbCmd.Parameters.Add("@U_UserName", _categorySubInfo.U_UserName);
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

        public static CategorySubInfo GetInfo(int _cS_ID)
        {
            CategorySubInfo retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("CategorySub_GetInfo", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add("@CS_ID", _cS_ID);
            try
            {
                dbConn.Open();
                SqlDataReader dr = dbCmd.ExecuteReader();
                if (dr.Read())
                {
                    retVal = new CategorySubInfo();
                    retVal.CS_ID = Convert.ToInt32(dr["CS_ID"]);
                    retVal.CS_Name = Convert.ToString(dr["CS_Name"]);
                    retVal.CS_Description = Convert.ToString(dr["CS_Description"]);
                    retVal.CS_ImageURL = Convert.ToString(dr["CS_ImageURL"]);
                    retVal.C_ID = Convert.ToInt32(dr["C_ID"]);

                    if (dr["C_ParentID"] != DBNull.Value) { retVal.C_ParentID = Convert.ToInt32(dr["C_ParentID"]); }
                    retVal.CS_Content = Convert.ToString(dr["CS_Content"]);
                    retVal.CS_Cmd = Convert.ToString(dr["CS_Cmd"]);
                    retVal.CS_TypeDisplay = Convert.ToInt32(dr["CS_TypeDisplay"]);
                    retVal.CS_CreateDate = Convert.ToDateTime(dr["CS_CreateDate"]);
                    retVal.U_UserName = Convert.ToString(dr["U_UserName"]);
                    retVal.C_Name = Convert.ToString(dr["C_Name"]);
                    retVal.CS_ArticleImgs = Convert.ToString(dr["CS_ArticleImgs"]);
                }
                if (dr != null) dr.Close();
            }
            finally
            {
                dbConn.Close();
            }
            return retVal;
        }
        public static DataTable CategorySubDB_GetById(int _CS_ID)
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("CategorySub_GetInfo", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@CS_ID", _CS_ID);
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

        public static DataTable CategorySubDB_GetByID(int _CS_ID)
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("CategorySub_GetInfo", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@CS_ID", _CS_ID);
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
        //return: 1-tồn tại   2-chưa tồn tại
        public static int CheckExistsName_CategorySub(string CS_Name)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("CheckExistsName_CategorySub", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@CS_Name", CS_Name);
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
        //return: 1-tồn tại   2-chưa tồn tại
        public static int CheckExistsNameInCate_CategorySub(string CS_Name, int cateID)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("CheckExistsNameAndCate_CategorySub", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@CS_Name", CS_Name);
            dbCmd.Parameters.AddWithValue("@C_ID", cateID);
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

        //Lay thong tin du lieu theo cate
        public static DataTable CategorySub_GetAll_ByCate_Pager(int page, int pageSize, CategorySubInfo info)
        {
            DataTable dt = null;

            SqlConnection dbconn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbcmd = new SqlCommand("CategorySub_GetAll_ByCate_Pager", dbconn);
            dbcmd.Parameters.AddWithValue("@C_ParentID", info.C_ParentID);
            dbcmd.Parameters.AddWithValue("@CS_TypeDisplay", info.CS_TypeDisplay);
            dbcmd.Parameters.AddWithValue("@C_ID", info.C_ID);
            dbcmd.Parameters.AddWithValue("@page", page);
            dbcmd.Parameters.AddWithValue("@pageSize", pageSize);
            dbcmd.Parameters.Add(new SqlParameter("@OutputCount", SqlDbType.Int, 4, ParameterDirection.Output, false, 0, 0, "", DataRowVersion.Proposed, info.Output));
            dbcmd.CommandType = CommandType.StoredProcedure;
            try
            {
                dbconn.Open();
                dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(dbcmd);
                da.Fill(dt);
                info.Output = (int)dbcmd.Parameters["@OutputCount"].Value;
            }
            catch (Exception ex)
            {

                throw (new Exception(ex.Message));
            }
            finally
            {
                dbconn.Close();
            }

            return dt;
        }

        public static DataTable CategorySubsByCateWithoutCurrentID(int page, int pageSize, CategorySubInfo info, int currentID)
        {
            DataTable dt = null;

            SqlConnection dbconn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbcmd = new SqlCommand("CategorySubsByCateWithoutCurrentID", dbconn);
            dbcmd.Parameters.AddWithValue("@CS_ID", currentID);
            dbcmd.Parameters.AddWithValue("@C_ID", info.C_ID);
            dbcmd.Parameters.AddWithValue("@C_ParentID", info.C_ParentID);
            dbcmd.Parameters.AddWithValue("@page", page);
            dbcmd.Parameters.AddWithValue("@pageSize", pageSize);
            dbcmd.Parameters.Add(new SqlParameter("@OutputCount", SqlDbType.Int, 4, ParameterDirection.Output, false, 0, 0, "", DataRowVersion.Proposed, info.Output));
            dbcmd.CommandType = CommandType.StoredProcedure;
            try
            {
                dbconn.Open();
                dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(dbcmd);
                da.Fill(dt);
                info.Output = (int)dbcmd.Parameters["@OutputCount"].Value;
            }
            catch (Exception ex)
            {

                throw (new Exception(ex.Message));
            }
            finally
            {
                dbconn.Close();
            }

            return dt;
        }

        //Lay top 1 loai tru articleID. 
        public static DataTable CategorySub_GetTop1ByCateId(int cateID, Int32 articleID)
        {
            DataTable dt = null;

            SqlConnection dbconn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbcmd = new SqlCommand("CategorySub_GetTop1ByCateId", dbconn);
            dbcmd.Parameters.AddWithValue("@C_ID", cateID);
            dbcmd.Parameters.AddWithValue("@CS_ID", articleID);
            dbcmd.CommandType = CommandType.StoredProcedure;
            try
            {
                dbconn.Open();
                dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(dbcmd);
                da.Fill(dt);
            }
            catch (Exception ex)
            {

                throw (new Exception(ex.Message));
            }
            finally
            {
                dbconn.Close();
            }

            return dt;
        }
        public static DataTable GetTop3_ByNews()
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("GetTop3_ByNews", dbConn);
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

        public static CategorySubInfo GetNewsTop1Home()
        {
            CategorySubInfo retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("GetNewsTop1Home", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;

            try
            {
                dbConn.Open();
                SqlDataReader dr = dbCmd.ExecuteReader();
                if (dr.Read())
                {
                    retVal = new CategorySubInfo();
                    retVal.CS_ID = Convert.ToInt32(dr["CS_ID"]);
                    retVal.CS_Name = Convert.ToString(dr["CS_Name"]);
                    retVal.CS_Description = Convert.ToString(dr["CS_Description"]);
                    retVal.CS_ImageURL = Convert.ToString(dr["CS_ImageURL"]);
                    retVal.C_ID = Convert.ToInt32(dr["C_ID"]);
                    retVal.CS_Content = Convert.ToString(dr["CS_Content"]);
                    retVal.CS_Cmd = Convert.ToString(dr["CS_Cmd"]);
                    retVal.CS_TypeDisplay = Convert.ToInt32(dr["CS_TypeDisplay"]);
                    retVal.CS_CreateDate = Convert.ToDateTime(dr["CS_CreateDate"]);
                    retVal.U_UserName = Convert.ToString(dr["U_UserName"]);



                }
                if (dr != null) dr.Close();
            }
            finally
            {
                dbConn.Close();
            }
            return retVal;
        }
    }

}

