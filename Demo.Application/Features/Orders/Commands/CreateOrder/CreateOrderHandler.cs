using Demo.Application.Contracts;
using Demo.Domain.Entities;
using MediatR;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace Demo.Application.Features.Orders.Commands.CreateOrder
{
    public class CreateOrderHandler : IRequestHandler<CreateOrderCommand>
    {
        private readonly IOrderRepository orderRepository;
        private readonly IIdentityRepository identityRepository;
        private readonly IHttpContextAccessor httpContextAccessor;

        public CreateOrderHandler(IOrderRepository orderRepository,IIdentityRepository identityRepository, IHttpContextAccessor httpContextAccessor)
        {
            this.orderRepository = orderRepository;
            this.identityRepository = identityRepository;
            this.httpContextAccessor = httpContextAccessor;
        }
        public async Task<Unit> Handle(CreateOrderCommand request, CancellationToken cancellationToken)
        {
            var userName = httpContextAccessor.HttpContext.User.FindFirst(ClaimTypes.NameIdentifier).Value;
            var user = await identityRepository.GetByUserNameAsync(userName);
            var order = new Order { ItemId=request.ItemId,UserId=user.Id};
            //await orderRepository.AddAsync(order);
            await orderRepository.AddOrderAsync(order);
            return Unit.Value;
        }
    }
}
