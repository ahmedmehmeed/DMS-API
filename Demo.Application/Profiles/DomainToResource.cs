using AutoMapper;
using Demo.Application.Features.Items.Queries.GetItemsList;
using Demo.Application.Features.Orders.Queries.GetOrdersList;
using Demo.Domain.Entities;

namespace Demo.Application.Profiles
{
    public class DomainToResource:Profile
    {
        public DomainToResource()
        {
            CreateMap<Item, GetItemsListDto>();

            CreateMap<Order, GetOrdersListDto>()
                   .ForMember(dest => dest.ItemName, opt => opt.MapFrom(src => src.Item.Name))
                   .ForMember(dest => dest.ItemDescription, opt => opt.MapFrom(src => src.Item.Description))
                   .ForMember(dest => dest.ItemPrice, opt => opt.MapFrom(src => src.Item.Price))
                   .ForMember(dest => dest.UOM, opt => opt.MapFrom(src => src.Item.UOM.UOM))
                   .ForMember(dest => dest.Username, opt => opt.MapFrom(src => src.User.UserName));
        }
    }


}
