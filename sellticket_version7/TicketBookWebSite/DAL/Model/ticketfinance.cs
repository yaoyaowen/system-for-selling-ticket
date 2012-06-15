using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAL
{
   public class ticketfinance
    {
        public virtual string id { get; set; }
        public virtual string startPoint { get; set; }
        public virtual string endPoint { get; set; }
        public virtual int price { get; set; }
        public virtual int sellNum { get; set; }
        public virtual int undoNum { get; set; }
        public virtual float income { get; set; }
        
    }
}
