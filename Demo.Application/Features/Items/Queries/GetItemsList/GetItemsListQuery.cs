using MediatR;

namespace Demo.Application.Features.Items.Queries.GetItemsList
{
    public class GetItemsListQuery:IRequest<List<GetItemsListDto>>
    {
    }
}
