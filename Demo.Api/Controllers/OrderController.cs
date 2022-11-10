﻿using Demo.Application.Features.Orders.Commands.CreateOrder;
using Demo.Application.Features.Orders.Queries.GetOrdersList;
using MediatR;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Demo.Api.Controllers
{

    public class OrderController : BaseApiController
    {
        private readonly IMediator mediator;

        public OrderController(IMediator mediator)
        {
            this.mediator = mediator;
        }


        [HttpGet("GetAllOrders")]

        public async Task<ActionResult<List<GetOrdersListDto>>> Get()
        {
            var orders = await mediator.Send(new GetOrdersListQuery());
            return Ok(orders);
        }

        [HttpPost("AddOrder")]

        public async Task<ActionResult> post(Guid itemId)
        {
            await mediator.Send(new CreateOrderCommand() {ItemId=itemId});
            return Ok();
        }
    }
}