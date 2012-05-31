using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TicketBookWebSite.Manager
{
    public partial class addTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Calendar1.SelectionChanged +=new EventHandler(Calendar1_SelectionChanged);
        }

        public void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            date.Value = Calendar1.SelectedDate.ToLongDateString();
        }



    }
}