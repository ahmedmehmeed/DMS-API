using Demo.Application.Features.Account.Commands.AccountLogin;
using Demo.Application.Features.Account.Commands.CreatAccount;
using Demo.Domain.Security;

namespace Demo.Application.Contracts
{
    public interface IIdentityRepository
    {
        Task<AuthModel> RegisterAsync(RegisterDto registerDto);
        Task<AuthModel> LoginAsync(LoginDto loginDto);
    }
}
