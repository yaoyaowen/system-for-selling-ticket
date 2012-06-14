using System;
using System.Web;

using System.Web.SessionState;

namespace TicketBookWebSite
{
    public class ValidateUser : IHttpModule,IRequiresSessionState 
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



            //beginrequest的时候还未加载Session信息 所以是不能取得的
            context.AcquireRequestState += new EventHandler(context_BeginRequest);
        }

        #endregion

        public void OnLogRequest(Object source, EventArgs e)
        {
            //可以在此放置自定义日志记录逻辑
        }


        public void context_BeginRequest(Object source, EventArgs e)
        {
            //在这里验证用户是否登录
            HttpApplication application = (HttpApplication)source;

            HttpContext context = HttpContext.Current;


            //请求html文件可能没有session，静态文件，不允许
            if (!context.Request.Url.AbsolutePath.ToLower().EndsWith("aspx"))
                return;


            //用户已经登录了
            if (context.Session!=null && context.Session["username"] != null)
            {
                //if (context.Request.Url.AbsolutePath.ToString() == "/logout.aspx")

                return;
            }
            else {
                if (context.Request.Url.AbsolutePath.ToString() != "/login.aspx" && context.Request.Url.AbsolutePath.ToString() != "/ashx/login.ashx")
                        context.Response.Redirect("~/login.aspx");
            }

        }
    }
}
