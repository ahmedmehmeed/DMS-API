using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.Domain.Entities
{
    public class Order
    {
        public Guid Id { get; set; } = Guid.NewGuid();

        public string UserId { get; set; }
        public Guid ItemId { get; set; }

        public int Quantity { get; set; }=1;
        public DateTime OrderDate { get; set; } = DateTime.Now;
        public AppUser User { get; set; }
        /// <summary>
        /// It should be "many to many" relationship between order & item,
        /// but beacuse this sample demo does not have a cart, I make it "One to Many "
        /// </summary>
        public Item Item { get; set; }



    }
}
