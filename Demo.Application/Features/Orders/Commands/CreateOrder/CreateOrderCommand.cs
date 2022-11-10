using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.Application.Features.Orders.Commands.CreateOrder
{
    public class CreateOrderCommand:IRequest
    {
        public Guid ItemId { get; set; }
    }
}
