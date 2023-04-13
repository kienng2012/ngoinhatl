using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Core.Advertising
{
    public class tbl_AdvertisDB
    {

        public static DataTable GetAll()
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_Advertise_GetAll", dbConn);
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

        ////lay ra du lieu combobox
        //public static DataTable GetAll()
        //{
        //    DataTable retVal = null;
        //    SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
        //    SqlCommand dbCmd = new SqlCommand("tbl_Advertise_GetAll", dbConn);
        //    dbCmd.CommandType = CommandType.StoredProcedure;
        //    try
        //    {
        //        retVal = new DataTable();
        //        SqlDataAdapter da = new SqlDataAdapter(dbCmd);
        //        da.Fill(retVal);
        //    }
        //    finally
        //    {
        //        dbConn.Close();
        //    }
        //    return retVal;
        //}


        //
        public static DataTable GetByActive(int _top, string _AdvPosition, int _typeFile)
        {
            // _AdvPosition :1- Menu trái 
            // _AdvPosition: 2- Banner quảng cáo chạy bên trái
            // _AdvPosition: 3- Banner quảng cáo chạy bên phải

            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_Advertise_GetByActive", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add("@Top", _top);
            dbCmd.Parameters.Add("@AdvPosition", _AdvPosition);
            dbCmd.Parameters.Add("@TypeFile", _typeFile);
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
        public static void Delete(int _advID)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_Advertise_Delete", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add("@AdvID", _advID);
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
        public static int Insert(tbl_AdvertisInfo _tbl_AdvertisInfo)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_Advertise_Insert", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add("@FileName", _tbl_AdvertisInfo.FileName);
            dbCmd.Parameters.Add("@AdvWidth", _tbl_AdvertisInfo.AdvWidth);
            dbCmd.Parameters.Add("@AdvHeight", _tbl_AdvertisInfo.AdvHeight);
            dbCmd.Parameters.Add("@AdvURL", _tbl_AdvertisInfo.AdvURL);
            dbCmd.Parameters.Add("@AdvText", _tbl_AdvertisInfo.AdvText);
            dbCmd.Parameters.Add("@AddedDate", _tbl_AdvertisInfo.AddedDate);
            dbCmd.Parameters.Add("@ExpireDate", _tbl_AdvertisInfo.ExpireDate);
            dbCmd.Parameters.Add("@ClickCount", _tbl_AdvertisInfo.ClickCount);
            dbCmd.Parameters.Add("@AdvPosition", _tbl_AdvertisInfo.AdvPosition);
            dbCmd.Parameters.Add("@IsActive", _tbl_AdvertisInfo.IsActive);
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

        public static bool Update(tbl_AdvertisInfo _tbl_AdvertisInfo)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_Advertise_Update", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add("@AdvID", _tbl_AdvertisInfo.AdvID);
            dbCmd.Parameters.Add("@FileName", _tbl_AdvertisInfo.FileName);
            dbCmd.Parameters.Add("@AdvWidth", _tbl_AdvertisInfo.AdvWidth);
            dbCmd.Parameters.Add("@AdvHeight", _tbl_AdvertisInfo.AdvHeight);
            dbCmd.Parameters.Add("@AdvURL", _tbl_AdvertisInfo.AdvURL);
            dbCmd.Parameters.Add("@AdvText", _tbl_AdvertisInfo.AdvText);
            dbCmd.Parameters.Add("@AddedDate", _tbl_AdvertisInfo.AddedDate);
            dbCmd.Parameters.Add("@ExpireDate", _tbl_AdvertisInfo.ExpireDate);
            dbCmd.Parameters.Add("@ClickCount", _tbl_AdvertisInfo.ClickCount);
            dbCmd.Parameters.Add("@AdvPosition", _tbl_AdvertisInfo.AdvPosition);
            dbCmd.Parameters.Add("@IsActive", _tbl_AdvertisInfo.IsActive);
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

        public static tbl_AdvertisInfo GetInfo(int _advID)
        {
            tbl_AdvertisInfo retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_Advertise_GetInfo", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add("@AdvID", _advID);
            try
            {
                dbConn.Open();
                SqlDataReader dr = dbCmd.ExecuteReader();
                if (dr.Read())
                {
                    retVal = new tbl_AdvertisInfo();
                    retVal.AdvID = Convert.ToInt32(dr["AdvID"]);
                    retVal.FileName = Convert.ToString(dr["FileName"]);
                    retVal.AdvWidth = Convert.ToInt32(dr["AdvWidth"]);
                    retVal.AdvHeight = Convert.ToInt32(dr["AdvHeight"]);
                    retVal.AdvURL = Convert.ToString(dr["AdvURL"]);
                    retVal.AdvText = Convert.ToString(dr["AdvText"]);
                    retVal.AddedDate = Convert.ToDateTime(dr["AddedDate"]);
                    retVal.ExpireDate = Convert.ToDateTime(dr["ExpireDate"]);
                    retVal.ClickCount = Convert.ToInt32(dr["ClickCount"]);
                    retVal.AdvPosition = Convert.ToString(dr["AdvPosition"]);
                    retVal.IsActive = Convert.ToBoolean(dr["IsActive"]);
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
