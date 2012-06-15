using System;
using System.Web;

using System.Web.SessionState;

namespace TicketBookWebSite
{
    public class AuthorityModule : IHttpModule,IRequiresSessionState
    {
        /// <summary>
        /// 您将需要在您网站的 web.config 文件中配置此模块，
        /// 并向 IIS 注册此模块，然后才能使用。有关详细信息，
        /// 请参见下面的链接: http://go.microsoft.com/?linkid=8101007
        /// </summary>
        #region IHttpModule Members

        public void Dispose()
        {
            //此处放置清除代码。
        }

        public void Init(HttpApplication context)
        {
            // 下面是如何处理 LogRequest 事件并为其
            // 提供自定义日志记录实现的示例
            //context.LogRequest += new EventHandler(OnLogRequest);
            context.AcquireRequestState += new EventHandler(context_BeginRequest);
        
        }

        #endregion

        public void context_BeginRequest(Object source, EventArgs e)
        {
            //在这里进行用户权限的认证
            HttpApplication ha = (HttpApplication)source;

            HttpContext hc = ha.Context;

            //判断session存在，并且有将username写入session中,否则返回

            if (hc.Session == null)
                return;

            if (hc.Session["username"] == null)
                return;

  
            //得到用户的role
            string role = (string)hc.Session["role"];


            if (role == "seller")
            {
                if (hc.Request.Url.AbsolutePath.ToLower().StartsWith("/manager"))
                {
                    hc.Response.Redirect("~/error.htm");

                }
            }
            else if (role == "manager")
            {
                if (hc.Request.Url.AbsolutePath.ToLower().StartsWith("/seller"))
                {
                    hc.Response.Redirect("~/error.htm");
                }

            }
            else
            {
                        
                hc.Response.Redirect("~/login.aspx");
            }
                
                


        }
    }
}
