using Demo.Domain.Security;
using MediatR;

namespace Demo.Application.Features.Account.Commands.AccountLogin
{
    public class LoginAccountCommand :IRequest<AuthModel>
    {
        public LoginDto LoginDto { get; set; }
    }
}
