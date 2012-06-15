using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using DAL;
using DAL.Handle;


namespace TicketBookWebSite.ashx
{
    /// <summary>
    /// addTicket 的摘要说明
    /// </summary>
    public class addTicket : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            /*
            ticketSession tic = new ticketSession();

            tic.addTicketInfo(new ticket
            {
                 date = context.Request["date"],
                 remainseat =Convert.ToInt32( context.Request["total"]),
                 totalseat =Convert.ToInt32( context.Request["total"]),
                  endpos = context.Request["endpos"],
                   startpos = context.Request["startpos"],
                    seatPosition="00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
                     ticketMoney = 
                      

            });
            
            */

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