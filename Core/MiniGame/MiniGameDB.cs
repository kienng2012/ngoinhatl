using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Core.MiniGame
{
    public class MiniGameDB
    {
        public static DataTable GetAll()
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_MiniGame_GetAll", dbConn);
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
        public static void Delete(int _mG_ID)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_MiniGame_Delete", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@MG_ID", _mG_ID);
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
        public static int Insert(MiniGameInfo _MiniGameInfo)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_MiniGame_Insert", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@MG_Name", _MiniGameInfo.MG_Name);
            dbCmd.Parameters.AddWithValue("@MG_Description", _MiniGameInfo.MG_Description);
            dbCmd.Parameters.AddWithValue("@MG_Help", _MiniGameInfo.MG_Help);
            dbCmd.Parameters.AddWithValue("@MG_ImageUrl", _MiniGameInfo.MG_ImageUrl);
            dbCmd.Parameters.AddWithValue("@MG_LinkGame", _MiniGameInfo.MG_LinkGame);
            dbCmd.Parameters.AddWithValue("@MG_CreateDate", _MiniGameInfo.MG_CreateDate);
            dbCmd.Parameters.AddWithValue("@MG_ClickCount", _MiniGameInfo.MG_ClickCount);
            dbCmd.Parameters.AddWithValue("@MG_CateID", _MiniGameInfo.MG_CateID);
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

        public static bool Update(MiniGameInfo _MiniGameInfo)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_MiniGame_Update", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@MG_ID", _MiniGameInfo.MG_ID);
            dbCmd.Parameters.AddWithValue("@MG_Name", _MiniGameInfo.MG_Name);
            dbCmd.Parameters.AddWithValue("@MG_Description", _MiniGameInfo.MG_Description);
            dbCmd.Parameters.AddWithValue("@MG_Help", _MiniGameInfo.MG_Help);
            dbCmd.Parameters.AddWithValue("@MG_ImageUrl", _MiniGameInfo.MG_ImageUrl);
            dbCmd.Parameters.AddWithValue("@MG_LinkGame", _MiniGameInfo.MG_LinkGame);
            dbCmd.Parameters.AddWithValue("@MG_CreateDate", _MiniGameInfo.MG_CreateDate);
            dbCmd.Parameters.AddWithValue("@MG_ClickCount", _MiniGameInfo.MG_ClickCount);
            dbCmd.Parameters.AddWithValue("@MG_CateID", _MiniGameInfo.MG_CateID);
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

        public static MiniGameInfo GetInfo(int _mG_ID)
        {
            MiniGameInfo retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_MiniGame_GetInfo", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@MG_ID", _mG_ID);
            try
            {
                dbConn.Open();
                SqlDataReader dr = dbCmd.ExecuteReader();
                if (dr.Read())
                {
                    retVal = new MiniGameInfo();
                    retVal.MG_ID = Convert.ToInt32(dr["MG_ID"]);
                    retVal.MG_Name = Convert.ToString(dr["MG_Name"]);
                    retVal.MG_Description = Convert.ToString(dr["MG_Description"]);
                    retVal.MG_Help = Convert.ToString(dr["MG_Help"]);
                    retVal.MG_ImageUrl = Convert.ToString(dr["MG_ImageUrl"]);
                    retVal.MG_LinkGame = Convert.ToString(dr["MG_LinkGame"]);
                    retVal.MG_CreateDate = Convert.ToDateTime(dr["MG_CreateDate"]);
                    retVal.MG_ClickCount = Convert.ToInt32(dr["MG_ClickCount"]);
                    retVal.MG_CateID = Convert.ToInt32(dr["MG_CateID"]);
                }
                if (dr != null) dr.Close();
            }
            finally
            {
                dbConn.Close();
            }
            return retVal;
        }

        //ham de lay thong tin game 
        public static DataTable GetMiniGameInfo(int _mG_ID)
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_MiniGame_GetInfo", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@MG_ID", _mG_ID);
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


    }


}
