using AutoMapper;
using Demo.Application.Contracts;
using Demo.Application.Extensions;
using MediatR;
using Microsoft.AspNetCore.Http;

namespace Demo.Application.Features.Orders.Queries.GetOrdersList
{
    public class GetOrdersListQueryHandler : IRequestHandler<GetOrdersListQuery, List<GetOrdersListDto>>
    {
        private readonly IOrderRepository orderRepository;
        private readonly IMapper mapper;
        private readonly IHttpContextAccessor httpContextAccessor;

        public GetOrdersListQueryHandler(IOrderRepository orderRepository, IMapper mapper, IHttpContextAccessor httpContextAccessor)
        {
            this.orderRepository = orderRepository;
            this.mapper = mapper;
            this.httpContextAccessor = httpContextAccessor;
        }
        public async Task<List<GetOrdersListDto>> Handle(GetOrdersListQuery request, CancellationToken cancellationToken)
        {
    
            var orders = await orderRepository.GetAllOrdersLists(request.OrderFilter);
            httpContextAccessor.HttpContext.Response.AddPaginationToHeader(orders.CurrentPage, orders.PageSize, orders.TotalCount, orders.TotalPages);
            return mapper.Map<List<GetOrdersListDto>>(orders);
        }
    }
}
