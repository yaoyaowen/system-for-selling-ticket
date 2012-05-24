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
    public partial class FindTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Calendar1.SelectionChanged +=new EventHandler(Calendar1_SelectionChanged);
            endPosTextBox.TextChanged +=new EventHandler(endPosTextBox_TextChanged);
        }


        public void endPosTextBox_TextChanged(object sender, EventArgs e)
        {

            IList<ticket> list = new ticketSession().getTicketByEndPos(endPosTextBox.Text);

            //没有找到车票
            if (list == null)
                return;

            ticket tic = new ticketSession().getTicketByEndPos(endPosTextBox.Text)[0];
            //没有座位了
            if (tic.remainseat == 0)
                return;

            int i = tic.remainseat;

            if (tic.seatPosition == null)
                return;

            for (int j = 0; j < tic.totalseat; j++)
            {
                if (tic.seatPosition[j] == '0')
                {
                    seatRemain.Items.Add(new ListItem(j.ToString(),j.ToString()));
                }
            }
        }




        public void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            timeTextBox.Text = Calendar1.SelectedDate.ToLongDateString();
        }
    }
}