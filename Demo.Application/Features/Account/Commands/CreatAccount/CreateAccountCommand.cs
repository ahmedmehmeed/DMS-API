using AutoMapper;
using Demo.Application.Contracts;
using Demo.Domain.Security;
using MediatR;


namespace Demo.Application.Features.Account.Commands.CreatAccount
{


    public class CreateAccountCommand:IRequest<AuthModel>
    {
   
        public RegisterDto RegisterDto { get; set; }

    }
}
