using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;


using DAL;
using DAL.Handle;

namespace View
{
    public partial class login : Form
    {
        public login()
        {
            InitializeComponent();
        }

        private void loginBtn_Click(object sender, EventArgs e)
        {
            //验证登录是否成功
            if (new UserSession().ValidateUser(usernameArea.Text, passwordArea.Text))
            {

            }
            else
            { 
            
            }
        }
    }
}
