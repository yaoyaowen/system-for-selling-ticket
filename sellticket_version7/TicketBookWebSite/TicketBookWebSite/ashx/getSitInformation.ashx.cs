using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using DAL;
using DAL.Handle;


using System.Web.Script.Serialization;

namespace TicketBookWebSite.ashx
{
    /// <summary>
    /// getSitInformation 的摘要说明
    /// </summary>
    public class getSitInformation : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {


            string position = context.Request["position"];
            string date = context.Request["date"];
            string id  = context.Request["id"];

            ticketSession session = new ticketSession();

                JavaScriptSerializer ser= new JavaScriptSerializer();
            if (id != "")
            {
                ticket tic = session.getTicketByID(id);
                context.Response.Clear();

                List<ticket> t = new List<ticket>();
                t.Add(tic);
                context.Response.Write(ser.Serialize(t));
                return;
            }

            IList<ticket> list;

            if (date != "")
                list = session.getTicketByTimeAndPos(position, date);
            else {

                list = session.getTicketByEndPos(position);
            }

            if (list == null)
                return;

            context.Response.Clear();

            //JavaScriptSerializer ser = new JavaScriptSerializer();

            context.Response.Write(ser.Serialize(list));
          
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