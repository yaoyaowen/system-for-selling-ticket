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

            string endPos = context.Request["endPos"];
            string date = context.Request["date"];

            ticketSession ts = new ticketSession();

            ticket tk = ts.getTicketByNameAndTime(endPos, date);

            string temp = JsonConvert.SerializeObject(tk);
            
            context.Response.Write(temp);
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