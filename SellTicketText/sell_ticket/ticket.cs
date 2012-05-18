using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace sell_ticket
{
    public class ticket
    {
        public virtual string id { get; set; }
        public virtual string startpos { get; set; }
        public virtual string endpos { get; set; }
        public virtual int ticketMoney { get; set; }
        public virtual int totalseat { get; set; }
        public virtual int remainseat { get; set; }
        public virtual string date { get; set; }
        public virtual string time { get; set; }
    
    }
}
