using Demo.Application.Contracts;
using Demo.Domain.Entities;
using Demo.Domain.Security;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using System.Security.Cryptography;

namespace Demo.Persistence.Repositories
{
    public class TokenRepository : ITokenRepository
    {
        private readonly UserManager<AppUser> userManager;
        private readonly JWT Jwt;
        public TokenRepository(UserManager<AppUser> userManager, IOptions<JWT> jwt)
        {
            this.userManager = userManager;
            this.Jwt = jwt.Value;
        }


        public async Task<JwtSecurityToken> CreateJwtToken(AppUser user)
        {
            var UserClaims = await userManager.GetClaimsAsync(user);
            var UserRoles = await userManager.GetRolesAsync(user);
            var RoleClaims = new List<Claim>();
            foreach (var role in UserRoles)
            {
                RoleClaims.Add(new Claim("Role", role));
            }

            var claims = new[]
            {
                new Claim(JwtRegisteredClaimNames.Sub,user.UserName),
                new Claim(JwtRegisteredClaimNames.Jti,Guid.NewGuid().ToString()),
                new Claim(JwtRegisteredClaimNames.Email,user.Email),
                new Claim("UserId",user.Id),
            }.Union(UserClaims).Union(RoleClaims);

            var SymmetricSecurityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(Jwt.Key));
            var SigningCredentials = new SigningCredentials(SymmetricSecurityKey, SecurityAlgorithms.HmacSha256);

            var JwtSecurityToken = new JwtSecurityToken(issuer: Jwt.Issuer, audience: Jwt.Audience, claims: claims, expires: DateTime.Now.
                AddDays(Jwt.DurationInDays), signingCredentials: SigningCredentials);
            return JwtSecurityToken;

        }

        public RefreshToken CreateRefreshToken()
        {
            var RandomNumber = new byte[32];
            using var generator = new RNGCryptoServiceProvider();
            generator.GetBytes(RandomNumber);
            return new RefreshToken
            {
                Token = Convert.ToBase64String(RandomNumber),
                ExpiresOn = DateTime.UtcNow.AddMinutes(1),
                Createdon = DateTime.UtcNow,
            };


        }
    }
}
