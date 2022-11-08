using AutoMapper;
using Demo.Application.Contracts;
using Demo.Domain.Security;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.Application.Features.Account.Commands.CreatAccount
{
    public class CreateAccountCommandHandler : IRequestHandler<CreateAccountCommand, AuthModel>
    {
        private readonly IIdentityRepository identityRepository;

        public CreateAccountCommandHandler(IIdentityRepository identityRepository)
        {
            this.identityRepository = identityRepository;
        }

       public async Task<AuthModel> Handle(CreateAccountCommand request, CancellationToken cancellationToken)
        {
          return  await identityRepository.RegisterAsync(request.RegisterDto);

        }
    }
}
