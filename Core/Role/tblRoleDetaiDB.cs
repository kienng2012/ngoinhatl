using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Core.Role
{
    public class tblRoleDetaiDB
    {
        public static DataTable GetAll()
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tblRoleDetail_GetAll", dbConn);
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
        public static DataTable GetAllByUserID(int _UserID)
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tblRoleDetail_GetAllByUser", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@UserID", _UserID);
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
            SqlCommand dbCmd = new SqlCommand("tblRoleDetail_Delete", dbConn);
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
        public static int Insert(tblRoleDetaiInfo _tblRoleDetaiInfo)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tblRoleDetail_Insert", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@UserID", _tblRoleDetaiInfo.UserID);
            dbCmd.Parameters.AddWithValue("@FunID", _tblRoleDetaiInfo.FunID);
            dbCmd.Parameters.AddWithValue("@IsDelete", _tblRoleDetaiInfo.IsDelete);
            dbCmd.Parameters.AddWithValue("@IsUpdate", _tblRoleDetaiInfo.IsUpdate);
            dbCmd.Parameters.AddWithValue("@IsAdd", _tblRoleDetaiInfo.IsAdd);
            dbCmd.Parameters.AddWithValue("@IsView", _tblRoleDetaiInfo.IsView);
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

        public static void Update(tblRoleDetaiInfo _tblRoleDetaiInfo)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tblRoleDetail_Update", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@ID", _tblRoleDetaiInfo.ID);
            dbCmd.Parameters.AddWithValue("@UserID", _tblRoleDetaiInfo.UserID);
            dbCmd.Parameters.AddWithValue("@FunID", _tblRoleDetaiInfo.FunID);
            dbCmd.Parameters.AddWithValue("@IsDelete", _tblRoleDetaiInfo.IsDelete);
            dbCmd.Parameters.AddWithValue("@IsUpdate", _tblRoleDetaiInfo.IsUpdate);
            dbCmd.Parameters.AddWithValue("@IsAdd", _tblRoleDetaiInfo.IsAdd);
            dbCmd.Parameters.AddWithValue("@IsView", _tblRoleDetaiInfo.IsView);
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

        public static void UpdateXml(string XML)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tblRoleDetail_UpdateMenuRoll", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@MenuRollTable", XML);
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


        public static tblRoleDetaiInfo GetInfo(int _iD)
        {
            tblRoleDetaiInfo retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tblRoleDetail_GetInfo", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@ID", _iD);
            try
            {
                dbConn.Open();
                SqlDataReader dr = dbCmd.ExecuteReader();
                if (dr.Read())
                {
                    retVal = new tblRoleDetaiInfo();
                    retVal.ID = Convert.ToInt32(dr["ID"]);
                    retVal.UserID = Convert.ToInt32(dr["UserID"]);
                    retVal.FunID = Convert.ToInt32(dr["FunID"]);
                    retVal.IsDelete = Convert.ToBoolean(dr["IsDelete"]);
                    retVal.IsUpdate = Convert.ToBoolean(dr["IsUpdate"]);
                    retVal.IsAdd = Convert.ToBoolean(dr["IsAdd"]);
                    retVal.IsView = Convert.ToBoolean(dr["IsView"]);
                }
                if (dr != null) dr.Close();
            }
            finally
            {
                dbConn.Close();
            }
            return retVal;
        }
        public static tblRoleDetaiInfo CheckPermisionByUserAndFunc(int _userID, int _FuncID)
        {
            tblRoleDetaiInfo retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tblFunc_CheckPermision", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@UserID", _userID);
            dbCmd.Parameters.AddWithValue("@FuncID", _FuncID);
            try
            {
                dbConn.Open();
                SqlDataReader dr = dbCmd.ExecuteReader();
                if (dr.Read())
                {
                    retVal = new tblRoleDetaiInfo();
                    retVal.ID = Convert.ToInt32(dr["ID"]);
                    retVal.UserID = Convert.ToInt32(dr["UserID"]);
                    retVal.FunID = Convert.ToInt32(dr["FunID"]);
                    retVal.IsDelete = Convert.ToBoolean(dr["IsDelete"]);
                    retVal.IsUpdate = Convert.ToBoolean(dr["IsUpdate"]);
                    retVal.IsAdd = Convert.ToBoolean(dr["IsAdd"]);
                    retVal.IsView = Convert.ToBoolean(dr["IsView"]);
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
