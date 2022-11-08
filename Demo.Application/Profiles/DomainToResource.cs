using AutoMapper;
using Demo.Application.Features.Items.Queries.GetItemsList;
using Demo.Domain.Entities;

namespace Demo.Application.Profiles
{
    public class DomainToResource:Profile
    {
        public DomainToResource()
        {
            CreateMap<Item, GetItemsListDto>();
        }
    }


}
