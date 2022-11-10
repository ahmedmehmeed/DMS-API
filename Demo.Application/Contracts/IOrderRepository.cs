﻿using Demo.Application.Features.Orders.Queries.GetOrdersList;
using Demo.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.Application.Contracts
{
    public interface IOrderRepository :IBaseRepository<Order>
    {
        /// <summary>
        /// Include all relation tables
        /// </summary>
        Task<IReadOnlyList<Order>> GetAllOrdersLists();
    }
}
