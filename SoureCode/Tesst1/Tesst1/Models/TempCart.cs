using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Tesst1.Models
{
    public class TempCart
    {
        public int TempCartID { get; set; }
        public Nullable<int> ProductID { get; set; }
        public Nullable<int> Quantity { get; set; }
        public Nullable<decimal> TotalMoney { get; set; }
        public Nullable<decimal> Price { get; set; }

        public virtual Products Products { get; set; }
    }
}