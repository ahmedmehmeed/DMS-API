using MediatR;

namespace Demo.Application.Features.Orders.Queries.GetOrdersList
{
    public class GetOrdersListQuery:IRequest<List<GetOrdersListDto>>
    {
        public OrderFilterDto OrderFilter { get; set; }
    }
}
