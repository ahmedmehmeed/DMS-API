using Demo.Application.Features.Account.Commands.AccountLogin;
using Demo.Application.Features.Account.Commands.CreatAccount;
using Demo.Domain.Security;
using MediatR;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Demo.Api.Controllers
{

    public class AccountController :BaseApiController
    {
        private readonly IMediator mediator;

        public AccountController(IMediator mediator)
        {
            this.mediator = mediator;
        }

        [HttpPost("Register")]
        public async Task<ActionResult<AuthModel>> Register([FromBody] RegisterDto registerDto)
        {
            var result = await mediator.Send( new CreateAccountCommand { RegisterDto=registerDto});

            if (!result.IsAuthencated)
                return BadRequest(result.Message);
            return Ok(new { token = result.Token });

        }

        [HttpPost("Login")]
        public async Task<ActionResult<AuthModel>> Login([FromBody] LoginDto loginDto)
        {
            AuthModel result = await mediator.Send(new LoginAccountCommand { LoginDto = loginDto });

            if (!result.IsAuthencated)
                return BadRequest(result.Message);

            return Ok(result);

        }


    }
}
