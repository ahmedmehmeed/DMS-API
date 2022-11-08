using Demo.Domain.Entities;
using Demo.Domain.Security;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.Application.Contracts
{
    public interface ITokenRepository
    {
        Task<JwtSecurityToken> CreateJwtToken(AppUser user);
        RefreshToken CreateRefreshToken();
    }
}
