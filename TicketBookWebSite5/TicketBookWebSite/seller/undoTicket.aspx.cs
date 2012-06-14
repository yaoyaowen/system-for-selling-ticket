using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;


namespace TicketBookWebSite.seller
{
    public partial class undoTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int status=1;
            bool mark2 = false;
            if (RadioButton2.Checked == true) { status = 2; }
            if (RadioButton3.Checked == true) { status = 3; }
            if (RadioButton4.Checked == true) { status = 4; }
            
            string id = TextBox1.Text.ToString();
            string id2 = id.Substring(0,7);
            int num =int.Parse(TextBox2.Text.ToString());
            bool mark=SaleOff.undoticket(num ,id);
            if (mark == false) TextBox3.Text = "退票失败！";
            else
            {
                TextBox3.Text = "退票成功！";
                mark2 = SaleOff.undofinance(id2, status);
            }
            if(mark2==true)
                TextBox3.Text = "退票成功,并录入财务！";
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
           
        }
    }
}