using Demo.Application.Features.Account.Commands.AccountLogin;
using Demo.Application.Features.Account.Commands.CreatAccount;
using Demo.Domain.Entities;
using Demo.Domain.Security;

namespace Demo.Application.Contracts
{
    public interface IIdentityRepository:IBaseRepository<AppUser>
    {
        Task<AuthModel> RegisterAsync(RegisterDto registerDto);
        Task<AuthModel> LoginAsync(LoginDto loginDto);
        Task<AppUser> GetByUserNameAsync(string Username);
    }
}
