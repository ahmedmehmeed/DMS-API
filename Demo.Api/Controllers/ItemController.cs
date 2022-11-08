using Demo.Application.Features.Items.Queries.GetItemsList;
using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Demo.Api.Controllers
{
    public class ItemController : BaseApiController
    {
        private readonly IMediator mediator;

        public ItemController(IMediator mediator)
        {
            this.mediator = mediator;
        }

        [HttpGet("GetAllItems")]

        public async Task<ActionResult<List<GetItemsListDto>>> Get()
        {
            var items = await mediator.Send(new GetItemsListQuery());
            return Ok(items);
        }



    }
}
