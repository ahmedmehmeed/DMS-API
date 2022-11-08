using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.Application.Features.Items.Queries.GetItemsList
{
    public class GetItemsListQuery:IRequest<List<GetItemsListDto>>
    {
    }
}
