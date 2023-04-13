using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
//using Oracle.DataAccess.Client; 

namespace Core.Reservation

{
    public class tbl_ReservationDB
    {
        public static DataTable GetAll()
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_Reservation_GetAll", dbConn);
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

        public static void Delete(int _u_ID)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_Reservation_Delete", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@R_ID", _u_ID);
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
        public static int Insert(tbl_ReservationInfo _tbl_UserInfo)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_Reservation_Insert", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@R_Name", _tbl_UserInfo.R_Name);
            dbCmd.Parameters.AddWithValue("@R_Email", _tbl_UserInfo.R_Email);
            dbCmd.Parameters.AddWithValue("@R_Phone", _tbl_UserInfo.R_Phone);
            dbCmd.Parameters.AddWithValue("@R_Content", _tbl_UserInfo.R_Content);
            dbCmd.Parameters.AddWithValue("@RETURN_VALUE", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
            try
            {
                dbConn.Open();
                dbCmd.ExecuteNonQuery();
                return (int)dbCmd.Parameters["@RETURN_VALUE"].Value;
                //return 1;
            }
            finally
            {
                dbConn.Close();
            }

        }

        public static Boolean Update(tbl_ReservationInfo _tbl_UserInfo)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_Reservation_Update", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@R_ID", _tbl_UserInfo.R_ID);
            dbCmd.Parameters.AddWithValue("@R_Name", _tbl_UserInfo.R_Name);
            dbCmd.Parameters.AddWithValue("@R_Email", _tbl_UserInfo.R_Email);
            dbCmd.Parameters.AddWithValue("@R_Phone", _tbl_UserInfo.R_Phone);
            dbCmd.Parameters.AddWithValue("@R_Status", _tbl_UserInfo.R_Status);
            dbCmd.Parameters.AddWithValue("@R_ResponseContent", _tbl_UserInfo.R_ResponseContent);
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

        public static tbl_ReservationInfo GetInfo(int _u_ID)
        {
            tbl_ReservationInfo retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_Reservation_GetInfo", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@R_ID", _u_ID);
            try
            {
                dbConn.Open();
                SqlDataReader dr = dbCmd.ExecuteReader();
                if (dr.Read())
                {
                    retVal = new tbl_ReservationInfo();
                    retVal.R_ID = Convert.ToInt32(dr["R_ID"]);
                    retVal.R_Name = Convert.ToString(dr["R_Name"]);
                    retVal.R_Email = Convert.ToString(dr["R_Email"]);
                    retVal.R_Phone = Convert.ToString(dr["R_Phone"]);
                    retVal.R_Content = Convert.ToString(dr["R_Content"]);
                    retVal.R_Status = Convert.ToBoolean(dr["R_Status"]);
                    retVal.R_CreateDate = Convert.ToDateTime(dr["R_CreateDate"]);
                    retVal.R_ResponseContent = Convert.ToString(dr["R_ResponseContent"]);
                    if (dr["R_ResponseDate"] != DBNull.Value)
                        retVal.R_ResponseDate = Convert.ToDateTime(dr["R_ResponseDate"]);
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
