using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
//using Oracle.DataAccess.Client; 

namespace Core.User
{
    public class tbl_UserDB
    {
        public static DataTable GetAll()
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_Users_GetAll", dbConn);
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

        public static DataTable GetAllMoLogGW()
        {
            //OracleConnection con = new OracleConnection();

            ////using connection string attributes to connect to Oracle Database
            ////Data Source=REALTV;Persist Security Info=True;User ID=expc;Password=expc
            //DataTable retVal = null;
            //con.ConnectionString = "Data Source=REALTV;Persist Security Info=True;User ID=expc;Password=expc";
            //con.Open();
            //Console.WriteLine("Connected to Oracle" + con.ServerVersion);
            //SqlDataAdapter da = new ("select * from MO_LOG_GW", con);
            //retVal = new DataTable();
            //da.Fill(retVal);
            //return retVal;
            //// Close and Dispose OracleConnection object
            //con.Close();
            //con.Dispose();
            //Console.WriteLine("Disconnected");

            //            string oradb = "Data Source=ORCL;User Id=hr;Password=hr;";
            //OracleConnection conn = new OracleConnection(oradb);  // C#
            //conn.Open(); 
            //OracleCommand cmd = new OracleCommand();
            //cmd.Connection = conn;
            //cmd.CommandText = "select * from MO_LOG_GW";
            //cmd.CommandType = CommandType.Text; 
            //OracleDataReader dr = cmd.ExecuteReader();

            //dr.Read();

            //label1.Text = dr.GetString(0);
            //conn.Dispose();
            //            DataTable retVal = null;
            //            OracleConnection conn = new OracleConnection("Data Source=REALTV;Persist Security Info=True;User ID=expc;Password=expc");
            //conn.Open();
            //OracleCommand cmd = conn.CreateCommand();


            //cmd.CommandText = "Select * from mo_log_gw";
            //cmd.CommandType = CommandType.Text;
            //            retVal = new DataTable();
            //            OracleDataAdapter adapter = new OracleDataAdapter(cmd);
            //adapter.Fill(retVal);

            //              conn.Dispose();
            //            return retVal;
            return new DataTable();
        }
        public static DataTable GetAllWithGroup(int _g_ID)
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_Users_GetAll_GroupID", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@G_ID", _g_ID);
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
            SqlCommand dbCmd = new SqlCommand("tbl_Users_Delete", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@U_ID", _u_ID);
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
        public static int Insert(tbl_UserInfo _tbl_UserInfo)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_Users_Insert", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@U_UserName", _tbl_UserInfo.U_UserName);
            dbCmd.Parameters.AddWithValue("@U_Password", _tbl_UserInfo.U_Password);
            dbCmd.Parameters.AddWithValue("@U_FullName", _tbl_UserInfo.U_FullName);
            dbCmd.Parameters.AddWithValue("@U_Money", _tbl_UserInfo.U_Money);
            dbCmd.Parameters.AddWithValue("@U_Mobile", _tbl_UserInfo.U_Mobile);
            dbCmd.Parameters.AddWithValue("@U_Address", _tbl_UserInfo.U_Address);
            dbCmd.Parameters.AddWithValue("@U_GroupID", _tbl_UserInfo.U_GroupID);
            dbCmd.Parameters.AddWithValue("@U_CreateDate", _tbl_UserInfo.U_CreateDate);
            dbCmd.Parameters.AddWithValue("@U_BirthDay", _tbl_UserInfo.U_BirthDay);
            dbCmd.Parameters.AddWithValue("@U_Status", _tbl_UserInfo.Status);
            dbCmd.Parameters.AddWithValue("@U_Email", _tbl_UserInfo.U_Email);
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

        public static Boolean Update(tbl_UserInfo _tbl_UserInfo)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_Users_Update", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@U_ID", _tbl_UserInfo.U_ID);
            dbCmd.Parameters.AddWithValue("@U_UserName", _tbl_UserInfo.U_UserName);
            dbCmd.Parameters.AddWithValue("@U_Password", _tbl_UserInfo.U_Password);
            dbCmd.Parameters.AddWithValue("@U_FullName", _tbl_UserInfo.U_FullName);
            dbCmd.Parameters.AddWithValue("@U_Money", _tbl_UserInfo.U_Money);
            dbCmd.Parameters.AddWithValue("@U_Mobile", _tbl_UserInfo.U_Mobile);
            dbCmd.Parameters.AddWithValue("@U_Address", _tbl_UserInfo.U_Address);
            dbCmd.Parameters.AddWithValue("@U_GroupID", _tbl_UserInfo.U_GroupID);
            dbCmd.Parameters.AddWithValue("@U_CreateDate", _tbl_UserInfo.U_CreateDate);
            dbCmd.Parameters.AddWithValue("@U_BirthDay", _tbl_UserInfo.U_BirthDay);
            dbCmd.Parameters.AddWithValue("@U_Status", _tbl_UserInfo.Status);
            dbCmd.Parameters.AddWithValue("@U_Email", _tbl_UserInfo.U_Email);
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

        public static tbl_UserInfo GetInfo(int _u_ID)
        {
            tbl_UserInfo retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_Users_GetInfo", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@U_ID", _u_ID);
            try
            {
                dbConn.Open();
                SqlDataReader dr = dbCmd.ExecuteReader();
                if (dr.Read())
                {
                    retVal = new tbl_UserInfo();
                    retVal.U_ID = Convert.ToInt32(dr["U_ID"]);
                    retVal.U_UserName = Convert.ToString(dr["U_UserName"]);
                    retVal.U_Password = Convert.ToString(dr["U_Password"]);
                    retVal.U_FullName = Convert.ToString(dr["U_FullName"]);
                    retVal.U_Money = Convert.ToDouble(dr["U_Money"]);
                    retVal.U_Mobile = Convert.ToString(dr["U_Mobile"]);
                    retVal.U_Address = Convert.ToString(dr["U_Address"]);
                    retVal.U_GroupID = Convert.ToInt32(dr["U_GroupID"]);
                    retVal.U_CreateDate = Convert.ToDateTime(dr["U_CreateDate"]);
                    retVal.U_BirthDay = Convert.ToDateTime(dr["U_BirthDay"]);
                    retVal.U_Email = Convert.ToString(dr["U_Email"]);
                    retVal.Status = Convert.ToBoolean(dr["U_Status"]);
                }
                if (dr != null) dr.Close();
            }
            finally
            {
                dbConn.Close();
            }
            return retVal;
        }

        public static tbl_UserInfo GetInfoAdmin(int _u_ID)
        {
            tbl_UserInfo retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_Users_GetInfo_Admin", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@U_ID", _u_ID);
            try
            {
                dbConn.Open();
                SqlDataReader dr = dbCmd.ExecuteReader();
                if (dr.Read())
                {
                    retVal = new tbl_UserInfo();
                    retVal.U_ID = Convert.ToInt32(dr["U_ID"]);
                    retVal.U_UserName = Convert.ToString(dr["U_UserName"]);
                    retVal.U_Password = Convert.ToString(dr["U_Password"]);
                    retVal.U_FullName = Convert.ToString(dr["U_FullName"]);
                    retVal.U_Money = Convert.ToDouble(dr["U_Money"]);
                    retVal.U_Mobile = Convert.ToString(dr["U_Mobile"]);
                    retVal.U_Address = Convert.ToString(dr["U_Address"]);
                    retVal.U_GroupID = Convert.ToInt32(dr["U_GroupID"]);
                    retVal.U_CreateDate = Convert.ToDateTime(dr["U_CreateDate"]);
                    retVal.U_BirthDay = Convert.ToDateTime(dr["U_BirthDay"]);
                    retVal.U_Email = Convert.ToString(dr["U_Email"]);
                    retVal.Status = Convert.ToBoolean(dr["U_Status"]);
                }
                if (dr != null) dr.Close();
            }
            finally
            {
                dbConn.Close();
            }
            return retVal;
        }


        public static int ChangePass(string UserName, string PassWordOld, string PassWordNew)
        {
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_Users_ChangePass", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@U_UserName", UserName);
            dbCmd.Parameters.AddWithValue("@U_PasswordOld", PassWordOld);
            dbCmd.Parameters.AddWithValue("@U_PasswordNew", PassWordNew);
            dbCmd.Parameters.AddWithValue("@Output", SqlDbType.Int).Direction = ParameterDirection.Output;
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

        public static DataTable CheckLogin(tbl_UserInfo _tblUseInfo)
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_Users_CheckLogin", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@U_Email", _tblUseInfo.U_Email);
            dbCmd.Parameters.AddWithValue("@U_Password", _tblUseInfo.U_Password);
            dbCmd.Parameters.Add("@Output", SqlDbType.Int).Direction = ParameterDirection.Output;
            try
            {
                retVal = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(dbCmd);
                da.Fill(retVal);

                _tblUseInfo.Output = (int)dbCmd.Parameters["@Output"].Value;
            }
            finally
            {
                dbConn.Close();
            }
            return retVal;
        }

        public static DataTable CheckLoginAdmin(tbl_UserInfo _tblUseInfo)
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_Users_CheckLoginAdmin", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@U_UserName", _tblUseInfo.U_UserName);
            dbCmd.Parameters.AddWithValue("@U_Password", _tblUseInfo.U_Password);
            dbCmd.Parameters.Add("@Output", SqlDbType.Int).Direction = ParameterDirection.Output;
            try
            {
                retVal = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(dbCmd);
                da.Fill(retVal);

                _tblUseInfo.Output = (int)dbCmd.Parameters["@Output"].Value;
            }
            finally
            {
                dbConn.Close();
            }
            return retVal;
        }

        //Check Username Register
        public static DataTable CheckExistUserName(tbl_UserInfo _tblUseInfo)
        {
            DataTable retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_Users_CheckExistUserName", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@U_UserName", _tblUseInfo.U_UserName);
            dbCmd.Parameters.Add("@Output", SqlDbType.Int).Direction = ParameterDirection.Output;
            try
            {
                retVal = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(dbCmd);
                da.Fill(retVal);

                _tblUseInfo.Output = (int)dbCmd.Parameters["@Output"].Value;
            }
            finally
            {
                dbConn.Close();
            }
            return retVal;
        }


        public static tbl_UserInfo GetInfoByEmail(string _u_Email)
        {
            tbl_UserInfo retVal = null;
            SqlConnection dbConn = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLGamePortalHTS"].ToString());
            SqlCommand dbCmd = new SqlCommand("tbl_Users_GetInfo_ByEmail", dbConn);
            dbCmd.CommandType = CommandType.StoredProcedure;
            dbCmd.Parameters.AddWithValue("@U_Email", _u_Email);
            try
            {
                dbConn.Open();
                SqlDataReader dr = dbCmd.ExecuteReader();
                if (dr.Read())
                {
                    retVal = new tbl_UserInfo();
                    retVal.U_ID = Convert.ToInt32(dr["U_ID"]);
                    retVal.U_UserName = Convert.ToString(dr["U_UserName"]);
                    retVal.U_Password = Convert.ToString(dr["U_Password"]);
                    retVal.U_FullName = Convert.ToString(dr["U_FullName"]);
                    retVal.U_Money = Convert.ToDouble(dr["U_Money"]);
                    retVal.U_Mobile = Convert.ToString(dr["U_Mobile"]);
                    retVal.U_Address = Convert.ToString(dr["U_Address"]);
                    retVal.U_GroupID = Convert.ToInt32(dr["U_GroupID"]);
                    retVal.U_CreateDate = Convert.ToDateTime(dr["U_CreateDate"]);
                    retVal.U_BirthDay = Convert.ToDateTime(dr["U_BirthDay"]);
                    retVal.U_Email = Convert.ToString(dr["U_Email"]);
                    retVal.Status = Convert.ToBoolean(dr["U_Status"]);
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
