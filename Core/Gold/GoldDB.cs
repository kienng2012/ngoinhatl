using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Core.Gold
{
    public class GoldDB
    {
        public static DataTable GetAll()
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("Gold_GetAll", dbConn);
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
        public static void Delete(int _g_ID)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("Gold_Delete", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add("@G_ID", _g_ID);
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
        public static int Insert(GoldInfo _goldInfo)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("Gold_Insert", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add("@G_Title", _goldInfo.G_Title);
            dbCmd.Parameters.Add("@G_Mobile", _goldInfo.G_Mobile);
            dbCmd.Parameters.Add("@G_Point", _goldInfo.G_Point);
            dbCmd.Parameters.Add("@G_Description", _goldInfo.G_Description);

            //dbCmd.Parameters.Add("@Output", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
            dbCmd.Parameters.Add(new SqlParameter("@Output", SqlDbType.Int, 4, ParameterDirection.Output, false, 0, 0, "", DataRowVersion.Proposed, 0));
            try
            {
                dbConn.Open();
                dbCmd.ExecuteNonQuery();
                return (int)dbCmd.Parameters["@Output"].Value;
            }
            finally
            {
                dbConn.Close();
            }
        }

        public static int Update(GoldInfo _goldInfo)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("Gold_Update", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add("@G_ID", _goldInfo.G_ID);
            dbCmd.Parameters.Add("@G_Title", _goldInfo.G_Title);
            dbCmd.Parameters.Add("@G_Mobile", _goldInfo.G_Mobile);
            dbCmd.Parameters.Add("@G_Point", _goldInfo.G_Point);
            dbCmd.Parameters.Add("@G_Description", _goldInfo.G_Description);

            //dbCmd.Parameters.Add("@Output", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
            dbCmd.Parameters.Add(new SqlParameter("@Output", SqlDbType.Int, 4, ParameterDirection.Output, false, 0, 0, "", DataRowVersion.Proposed, 0));
            try
            {
                dbConn.Open();
                dbCmd.ExecuteNonQuery();
                return (int)dbCmd.Parameters["@Output"].Value;
            }
            finally
            {
                dbConn.Close();
            }
        }

        public static GoldInfo GetInfo(int _g_ID)
        {
            GoldInfo retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("Gold_GetInfo", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.Add("@G_ID", _g_ID);
            try
            {
                dbConn.Open();
                SqlDataReader dr = dbCmd.ExecuteReader();
                if (dr.Read())
                {
                    retVal = new GoldInfo();
                    retVal.G_ID = Convert.ToInt32(dr["G_ID"]);
                    retVal.G_Title = Convert.ToString(dr["G_Title"]);
                    retVal.G_Mobile = Convert.ToString(dr["G_Mobile"]);
                    retVal.G_Point = Convert.ToString(dr["G_Point"]);
                    retVal.G_Description = Convert.ToString(dr["G_Description"]);
                    retVal.G_CreateDate = Convert.ToDateTime(dr["G_CreateDate"]);
                }
                if (dr != null) dr.Close();
            }
            finally
            {
                dbConn.Close();
            }
            return retVal;
        }
        //Lay thong tin du lieu theo cate
        public static DataTable Gold_GetAll_Pager(int page, int pageSize, GoldInfo info)
        {
            DataTable dt = null;

            SqlConnection dbconn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbcmd = new SqlCommand("Gold_GetAll_Pager", dbconn);
            //dbcmd.Parameters.Add("@C_ID", info.C_ID);
            dbcmd.Parameters.Add("@page", page);
            dbcmd.Parameters.Add("@pageSize", pageSize);
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
        public static DataTable GetTop6()
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("Gold_GetTop6", dbConn);
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

    }
}
