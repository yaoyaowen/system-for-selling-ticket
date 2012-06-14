using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


using System.Configuration;
using System.Data.OleDb;
using System.Data;

namespace TicketBookWebSite
{
    /// <summary>
    /// 返回省份对应的城市信息
    /// </summary>
    public class getCity : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //context.Response.ContentType = "text/plain";
            //context.Response.Write("Hello World");
            string province = context.Request["province"];

            if (province == null || province == "")
                return;

            string conStr = ConfigurationManager.ConnectionStrings["AreaData"].ConnectionString;

            using (OleDbConnection connetion = new OleDbConnection(conStr))
            {
                string CommandText = "select cityname from city ,province  where province.provincename='" + province + "' and city.provinceid=province.provinceid";

                connetion.Open();

                OleDbDataAdapter da = new OleDbDataAdapter(CommandText, connetion);

                DataSet ds = new DataSet();

                da.Fill(ds);

                connetion.Close();

                DataTableReader dr = ds.CreateDataReader();
                while (dr.Read())
                {
                    context.Response.Write(dr[0] + " ");
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