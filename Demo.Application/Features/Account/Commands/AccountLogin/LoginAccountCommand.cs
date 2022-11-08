using Demo.Domain.Security;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.Application.Features.Account.Commands.AccountLogin
{
    public class LoginAccountCommand :IRequest<AuthModel>
    {
        public LoginDto LoginDto { get; set; }
    }
}
