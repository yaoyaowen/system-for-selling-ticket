using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Web.SessionState;

using DAL.Handle;
using DAL;


namespace TicketBookWebSite
{
    /// <summary>
    /// 登录用处理程序
    /// </summary>
    public class login : IHttpHandler ,IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            string username = context.Request["username"];
            string password = context.Request["password"];


            if (username == null || username == "" || password == null || password == "")
            {
                context.Response.SetCookie(new HttpCookie("error login", "false"));
                context.Response.Redirect(context.Request.UrlReferrer.ToString());
                return;
            }


            //其中role标记成员的角色
            string role ="";
            bool flag = new UserSession().ValidateUser(username,password,out role);



            if (flag)
            {
                //登录成功
                context.Session["username"] = username;
                if (role == "manager")
                {
                    context.Session["role"] = role;
                    context.Response.Redirect("../manager/MainFrame.aspx");
                }
                else if (role == "seller")
                {

                }
                else {
                    context.Response.Redirect("../login.aspx");
                }
            }
            else
            {

                context.Response.Redirect(context.Request.UrlReferrer.ToString());

                //context.Response.SetCookie(new HttpCookie("error login", "false"));
            }
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