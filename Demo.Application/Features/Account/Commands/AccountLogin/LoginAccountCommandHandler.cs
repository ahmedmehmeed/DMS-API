using Demo.Application.Contracts;
using Demo.Domain.Security;
using MediatR;
using Microsoft.AspNetCore.Http;


namespace Demo.Application.Features.Account.Commands.AccountLogin
{
    public class LoginAccountCommandHandler : IRequestHandler<LoginAccountCommand, AuthModel>
    {
        private readonly IIdentityRepository identityRepository;
        private readonly IHttpContextAccessor httpContextAccessor;

        public LoginAccountCommandHandler(IIdentityRepository identityRepository,IHttpContextAccessor httpContextAccessor)
        {
            this.identityRepository = identityRepository;
            this.httpContextAccessor = httpContextAccessor;
        }
        public async Task<AuthModel> Handle(LoginAccountCommand request, CancellationToken cancellationToken)
        {
            var result= await  identityRepository.LoginAsync(request.LoginDto);
            if (!string.IsNullOrEmpty(result.RefreshToken))
                SetRefreshTokenInCookies(result.RefreshToken, result.RefreshTokenEXpiration);
            return result;
        }

        private void SetRefreshTokenInCookies(string refreshTokenModel, DateTime ExpireOn)
        {
            //setting cookies 
            CookieOptions cookiesOption = new()
            {
                HttpOnly = true,
                Expires = ExpireOn.ToLocalTime(),

            };

            httpContextAccessor.HttpContext.Response.Cookies.Append("RefreshToken", refreshTokenModel, cookiesOption);

        }
    }
}
