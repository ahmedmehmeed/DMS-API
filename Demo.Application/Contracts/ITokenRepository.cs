using Demo.Domain.Entities;
using Demo.Domain.Security;
using System.IdentityModel.Tokens.Jwt;

namespace Demo.Application.Contracts
{
    public interface ITokenRepository
    {
        Task<JwtSecurityToken> CreateJwtToken(AppUser user);
        RefreshToken CreateRefreshToken();
    }
}
