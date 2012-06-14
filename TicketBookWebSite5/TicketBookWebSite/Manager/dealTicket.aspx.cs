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
    public partial class dealTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListView1.ItemUpdated+=new EventHandler<ListViewUpdatedEventArgs>(ListView1_ItemUpdated);
        }

        void ListView1_ItemUpdated(object sender, ListViewUpdatedEventArgs ergs)
        {
            /*
             string idkey = (string)ListView1.DataKeys[0].Value;

             

            //ListViewItem it = ListView1.InsertItem;
            //  Label lb = (Label)it.FindControl("IDLabel1");
           //   TextBox priceBox = (TextBox) it.FindControl("ticketMoneyTextBox");

             string id = idkey.Substring(0, 7);
             string price="0"; 


              ticketfinanceSession session = new ticketfinanceSession();

              ticketfinance tf = session.getTicketfinanceByID(id);
              tf.price = Convert.ToInt32(price);

              session.saveTicketfinance(tf);
            */
        }
    }
}