using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAL.Model
{
    public class preferential
    {
        public virtual string id { get; set; }
        public virtual float person { get; set; }
        public virtual float student { get; set; }
        public virtual float soldier { get; set; }
        public virtual float group { get; set; }
        public virtual float undo { get; set; }
    }
}
