using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Core.Menu
{
    public class tblFunDB
    {
        public static DataTable GetAll()
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tblFunc_GetAll", dbConn);
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

        public static DataTable GetParent(int _userID)
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tblFunc_GetParent", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@UserID", _userID);
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
        public static DataTable GetChild(int _userID, int _parentID)
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tblFunc_GetChildel", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@UserID", _userID);
            dbCmd.Parameters.AddWithValue("@ParentID", _parentID);
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
        public static void Delete(int _iD)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tblFunc_Delete", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@ID", _iD);
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
        public static int Insert(tblFunInfo _tblFunInfo)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tblFunc_Insert", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@Name", _tblFunInfo.Name);
            dbCmd.Parameters.AddWithValue("@Url", _tblFunInfo.Url);
            dbCmd.Parameters.AddWithValue("@Thutu", _tblFunInfo.Thutu);
            dbCmd.Parameters.AddWithValue("@ParentID", _tblFunInfo.ParentID);
            dbCmd.Parameters.AddWithValue("@Status", _tblFunInfo.Status);
            dbCmd.Parameters.AddWithValue("@RETURN_VALUE", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
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

        public static void Update(tblFunInfo _tblFunInfo)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tblFunc_Update", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@ID", _tblFunInfo.ID);
            dbCmd.Parameters.AddWithValue("@Name", _tblFunInfo.Name);
            dbCmd.Parameters.AddWithValue("@Url", _tblFunInfo.Url);
            dbCmd.Parameters.AddWithValue("@Thutu", _tblFunInfo.Thutu);
            dbCmd.Parameters.AddWithValue("@ParentID", _tblFunInfo.ParentID);
            dbCmd.Parameters.AddWithValue("@Status", _tblFunInfo.Status);
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

        public static tblFunInfo GetInfo(int _iD)
        {
            tblFunInfo retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tblFunc_GetInfo", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@ID", _iD);
            try
            {
                dbConn.Open();
                SqlDataReader dr = dbCmd.ExecuteReader();
                if (dr.Read())
                {
                    retVal = new tblFunInfo();
                    retVal.ID = Convert.ToInt32(dr["ID"]);
                    retVal.Name = Convert.ToString(dr["Name"]);
                    retVal.Url = Convert.ToString(dr["Url"]);
                    retVal.Thutu = Convert.ToInt32(dr["Thutu"]);
                    retVal.ParentID = Convert.ToInt32(dr["ParentID"]);
                    retVal.Status = Convert.ToBoolean(dr["Status"]);
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
