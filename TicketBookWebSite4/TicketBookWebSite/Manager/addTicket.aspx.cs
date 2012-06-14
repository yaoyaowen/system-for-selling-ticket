using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using DAL;
using DAL.Handle;

namespace TicketBookWebSite.Manager
{
    public partial class addTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                  string id = Context.Request["id"];
                  string site = Context.Request["site"];
                  string endPos = Context.Request["EndPos"];
                  string date = Context.Request["date"];
                  string time = Context.Request["time"];
                  string money = Context.Request["money"];
                  
                ticketSession session = new ticketSession();

                  ticket tic = new ticket();
                  tic.endpos = endPos;
                  tic.startpos = " ";
                  tic.id = id;
                  tic.date = date;
                  tic.time = time;
                  tic.startpos = "珠海";
                  tic.totalseat = tic.remainseat= Convert.ToInt32(site);
                  tic.ticketMoney = Convert.ToInt32(money);
                  tic.seatPosition = "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
                  session.addTicketInfo(tic);

                  if (tic.id.Length < 7)
                      return;
                  if (new ticketfinanceSession().getTicketfinanceByID(tic.id.Substring(0, 7))==null)
                  {
                      new ticketfinanceSession().addTicketfinance(new DAL.ticketfinance
                      {
                            endPoint = tic.endpos,
                             income =0,
                              price=0,
                               sellNum=0,
                                startPoint=tic.startpos,
                                 undoNum = 0,
                                 id= tic.id.Substring(0,7)
                      });
                  }
                  
            }
        }



    }
}