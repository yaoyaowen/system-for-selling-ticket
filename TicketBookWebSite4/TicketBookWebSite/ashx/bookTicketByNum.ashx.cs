using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using DAL.Handle;
using DAL;


namespace TicketBookWebSite.ashx
{
    /// <summary>
    /// bookTicketByNum 的摘要说明
    /// </summary>
    public class bookTicketByNum : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string id = context.Request["id"];

            string sitNum = context.Request["sitNum"];

            char[] splitC = { ' ' };
            string[] sitNums = sitNum.Split(splitC,StringSplitOptions.RemoveEmptyEntries);

            List<int> number = new List<int>();

            for (int i = 0; i < sitNums.Length; i++)
            {
                number.Add(Convert.ToInt32(sitNums[i]));
            }

            ticketSession tic = new ticketSession();

               bool flag =  tic.takeTicket(number, id);

               if (flag == true)
               {
                   string id2 = id.Substring(0,7);
                   DAL.Handle.ticketfinanceSession Session2 = new DAL.Handle.ticketfinanceSession();
                   bool mark2 = Session2.addsellNUM(id2, sitNums.Length);
                   if (mark2 == true)
                   context.Response.Write("ok");
               }
               else
               {
                   context.Response.Write("error");
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