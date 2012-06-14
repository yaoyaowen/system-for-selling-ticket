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
    public partial class preferential : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            preferentialSession manager = new preferentialSession();
            DAL.preferential Manager = manager.getpreferentialByID("manager");
            Manager.person = float.Parse(TextBox1.Text.ToString());
            Manager.student = float.Parse(TextBox2.Text.ToString());
            Manager.soldier = float.Parse(TextBox3.Text.ToString());
            Manager.group = float.Parse(TextBox4.Text.ToString());
            Manager.undo = float.Parse(TextBox5.Text.ToString());
              bool flag =  manager.saveTicket(Manager);

              if (flag == false)
              {
                  Page.RegisterStartupScript("unitque1","<script>  alert('error')</script>");

                
              }
              else
              {
                  Page.RegisterStartupScript("unitque1", "<script>  alert('success')</script>");
              }


            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text ="";

        }
    }
}