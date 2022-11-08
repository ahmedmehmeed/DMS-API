using AutoMapper;
using Demo.Application.Contracts;
using MediatR;


namespace Demo.Application.Features.Items.Queries.GetItemsList
{
    public class GetItemsListQueryHandler : IRequestHandler<GetItemsListQuery, List<GetItemsListDto>>
    {
        private readonly IItemRepository itemRepository;
        private readonly IMapper mapper;

        public GetItemsListQueryHandler(IItemRepository itemRepository,IMapper mapper)
        {
            this.itemRepository = itemRepository;
            this.mapper = mapper;
        }
        public async  Task<List<GetItemsListDto>> Handle(GetItemsListQuery request, CancellationToken cancellationToken)
        {
            var items = await itemRepository.ListAllAsync();
            return mapper.Map<List<GetItemsListDto>>(items);
        }
    }
}
