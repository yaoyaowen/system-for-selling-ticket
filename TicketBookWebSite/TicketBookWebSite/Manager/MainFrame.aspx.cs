using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TicketBookWebSite
{
    public partial class MainFrame : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if ((string)Context.Session["role"] != "manager")
             //  Context.Response.Redirect("~/login.htm");
        }
    }
}