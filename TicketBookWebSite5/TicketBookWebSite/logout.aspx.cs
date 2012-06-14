using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using DAL;
using DAL.Handle;

namespace TicketBookWebSite
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //取消当前的回话Session
            new UserSession().changeStatus((string)Context.Session["username"], 0);            
            Context.Session.Clear();
            Context.Session.Abandon();
            

        }
    }
}