using Core.CategorySub;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Core.Comment
{
    public class CommentDB
    {
        public static DataTable GetAll()
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("Comment_GetAll", dbConn);
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
            SqlCommand dbCmd = new SqlCommand("Comment_Delete", dbConn);
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
        public static int Insert(CommentInfo _CommentInfo)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("Comment_Insert", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add("@C_Name", _CommentInfo.C_Name);
            dbCmd.Parameters.Add("@C_Description", _CommentInfo.C_Description);
            //dbCmd.Parameters.Add("@C_BaseURL", _CommentInfo.C_BaseURL);
            dbCmd.Parameters.Add("@C_ImageURL", _CommentInfo.C_ImageURL);
            dbCmd.Parameters.Add("@C_Company", _CommentInfo.C_Company);
            dbCmd.Parameters.Add("@C_Major", _CommentInfo.C_Major);
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

        public static bool Update(CommentInfo _CommentInfo)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("Comment_Update", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add("@C_ID", _CommentInfo.C_ID);
            dbCmd.Parameters.Add("@C_Name", _CommentInfo.C_Name);
            //dbCmd.Parameters.Add("@C_BaseURL", _CommentInfo.C_BaseURL);
            dbCmd.Parameters.Add("@C_ImageURL", _CommentInfo.C_ImageURL);
            dbCmd.Parameters.Add("@C_Description", _CommentInfo.C_Description);
            dbCmd.Parameters.Add("@C_Company", _CommentInfo.C_Company);
            dbCmd.Parameters.Add("@C_Major", _CommentInfo.C_Major);

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

        public static CommentInfo GetInfo(int _c_ID)
        {
            CommentInfo retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("Comment_GetInfo", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add("@C_ID", _c_ID);
            try
            {
                dbConn.Open();
                SqlDataReader dr = dbCmd.ExecuteReader();
                if (dr.Read())
                {
                    retVal = new CommentInfo();
                    retVal.C_ID = Convert.ToInt32(dr["C_ID"]);
                    //retVal.C_ParentID = Convert.ToInt32(dr["C_ParentID"]);
                    retVal.C_Name = Convert.ToString(dr["C_Name"]);
                    //retVal.C_BaseURL = Convert.ToString(dr["C_BaseURL"]);
                    retVal.C_ImageURL = Convert.ToString(dr["C_ImageURL"]);
                    retVal.C_Major = Convert.ToString(dr["C_Major"]);
                    retVal.C_Company = Convert.ToString(dr["C_Company"]);
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
        public static int CheckExistsName_Comment(string C_Name)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("CheckExistsName_Comment", dbConn);
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

        public static DataTable Comment_GetDistinctName()
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("Comment_GetDistinctName", dbConn);
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

        public static DataTable Comment_GetDistinctTypeDisplay()
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("Comment_GetDistinctTypeDisplay", dbConn);
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
        public static string Comment_GetCateName_ByID(int _c_ID)
        {
            CommentInfo retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("Comment_GetCateName_ByID", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add("@C_ID", _c_ID);
            try
            {
                dbConn.Open();
                SqlDataReader dr = dbCmd.ExecuteReader();
                if (dr.Read())
                {
                    retVal = new CommentInfo();

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
        public static DataTable Comment_GetCateName_ByID(int page, int pageSize, CategorySubInfo info)
        {
            DataTable dt = null;

            SqlConnection dbconn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbcmd = new SqlCommand("Comment_GetAll_ByCate_Pager", dbconn);
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

        public static DataTable Comment_GetAll_ByCate_Pager(int page, int pageSize, CommentInfo info)
        {
            DataTable dt = null;

            SqlConnection dbconn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbcmd = new SqlCommand("Comment_GetAll_ByCate_Pager", dbconn);
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

    }
}
