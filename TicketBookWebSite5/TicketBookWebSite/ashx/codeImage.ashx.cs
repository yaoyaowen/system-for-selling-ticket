using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;

using System.Drawing;

namespace TicketBookWebSite
{
    /// <summary>
    /// 产生图片验证码
    /// </summary>
    public class codeImage : IHttpHandler,IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "image/jpeg";

            Bitmap bitmap = new Bitmap(200,50);
            string temp="";
            using (Graphics gh = Graphics.FromImage(bitmap))
            {
                Random random = new Random();

                for (int i = 0; i < 8; i++)
                {
                     temp += (char)(byte)(random.Next(26)+97);
                }

                context.Session["codeImage"] = temp;

                gh.DrawString(temp, new Font("宋体",15),Brushes.Yellow, new Point(20, 20));
                gh.Save();
            }

            bitmap.Save(context.Response.OutputStream, System.Drawing.Imaging.ImageFormat.Jpeg);

            context.Response.Flush();
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