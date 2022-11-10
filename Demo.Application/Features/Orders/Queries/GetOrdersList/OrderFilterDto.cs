using Demo.Application.Pagination;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.Application.Features.Orders.Queries.GetOrdersList
{
    public class OrderFilterDto:BasePaginationDto
    {
        public string? Username { get; set; }
        public string? ItemName { get; set; }
        public decimal ItemPrice { get; set; }

    }
}
