using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace btl_CSLT3.Database
{
    public class RunData
    {
        String connStr = @"Server=DATNGUYEN\MSSQLSERVER01;Database=QL_sinh_vien;User ID=nmdatt;Password=nmdat2000";
        SqlConnection conn;
        SqlCommand command;
        SqlDataAdapter adapter;



        public DataTable GetData(string strSQL)
        {
            

            DataTable dt = new DataTable();
   
            conn = new SqlConnection(connStr);
            conn.Open();

            adapter = new SqlDataAdapter(strSQL, connStr);
            adapter.Fill(dt);
            conn.Close();
            return dt;
        }
        public void Execute(string strSQL)
        {
            

            
            conn = new SqlConnection(connStr);
            conn.Open();

            command = new SqlCommand(strSQL, conn);
            command.ExecuteNonQuery();
            conn.Close();
        }

        public int GetNumber(string strSQL)
        {
            

            
            conn = new SqlConnection(connStr);
            conn.Open();

            command = new SqlCommand(strSQL, conn);

            return (int)command.ExecuteScalar();
            conn.Close();

        }
    }
}