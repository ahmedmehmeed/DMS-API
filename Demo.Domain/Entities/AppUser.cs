using Demo.Domain.Security;
using Microsoft.AspNetCore.Identity;


namespace Demo.Domain.Entities
{
    public class AppUser : IdentityUser
    {
        public ICollection<RefreshToken>? RefreshTokens { get; private set; }
    }
}
