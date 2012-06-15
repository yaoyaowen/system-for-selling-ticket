using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.OleDb;
//using System.Data.SqlClient;
using System.Configuration;


namespace TicketBookWebSite
{
    /// <summary>
    /// 返回中国的省份信息
    /// </summary>
    public class getProvince : IHttpHandler
    {

        

        public void ProcessRequest(HttpContext context)
        {

            string conStr =  ConfigurationManager.ConnectionStrings["AreaData"].ConnectionString;

            using (OleDbConnection connetion = new OleDbConnection(conStr))
            {
                //SqlCommand cmd = connetion.CreateCommand();
                string CommandText = "select provincename from province";

                connetion.Open();

                OleDbDataAdapter da = new OleDbDataAdapter(CommandText, connetion);

                DataSet ds = new DataSet();

                da.Fill(ds);

                connetion.Close();

                DataTableReader dr = ds.CreateDataReader();
                while (dr.Read())
                {
                    context.Response.Write(dr[0]+" ");
                }

                context.Response.Flush();
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}