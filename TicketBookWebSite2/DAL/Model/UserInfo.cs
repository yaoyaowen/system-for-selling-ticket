using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAL
{
    public class UserInfo
    {
        public virtual int ID { set; get; }
        public virtual string userName { set; get; }
        public virtual string passWord { set; get; }
        public virtual string Status { set; get; }
        public virtual string Role { set; get; }

        
    }
}
