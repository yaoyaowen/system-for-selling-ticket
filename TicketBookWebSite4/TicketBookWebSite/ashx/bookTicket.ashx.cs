using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using DAL.Handle;
using DAL;

using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Serialization;
using Newtonsoft.Json;

namespace TicketBookWebSite.ashx
{
    /// <summary>
    /// 序列化Ticket对象返回到Html页面实现ajax效果
    /// </summary>
    public class bookTicket : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {

            string type = context.Request["type"];

            string id = context.Request["id"];

            string sitNum = context.Request["sitNum"];
            
            ticketSession tick = new ticketSession();

            bool flag = tick.takeTicket(Convert.ToInt32(sitNum), id,type);

            

            if (flag == true)
            {
                string id2 = id.Substring(0, 7);
                DAL.Handle.ticketfinanceSession Session2 = new DAL.Handle.ticketfinanceSession();
                bool mark2 = Session2.addsellNUM(id2, int.Parse(type)+1);
                if (mark2 == true)
                    context.Response.Write("ok"); 
            }
            else 
            {
                context.Response.Write("error");
            }

;
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