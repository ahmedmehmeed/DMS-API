using AutoMapper;
using Demo.Application.Contracts;
using MediatR;

namespace Demo.Application.Features.Orders.Queries.GetOrdersList
{
    public class GetOrdersListQueryHandler : IRequestHandler<GetOrdersListQuery, List<GetOrdersListDto>>
    {
        private readonly IOrderRepository orderRepository;
        private readonly IMapper mapper;

        public GetOrdersListQueryHandler(IOrderRepository orderRepository, IMapper mapper)
        {
            this.orderRepository = orderRepository;
            this.mapper = mapper;
        }
        public async Task<List<GetOrdersListDto>> Handle(GetOrdersListQuery request, CancellationToken cancellationToken)
        {
           var orders = await orderRepository.GetAllOrdersLists();
            return mapper.Map<List<GetOrdersListDto>>(orders);
        }
    }
}
