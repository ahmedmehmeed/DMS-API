using Demo.Domain.Security;
using Microsoft.AspNetCore.Identity;


namespace Demo.Domain.Entities
{
    public class AppUser : IdentityUser
    {
        public AppUser()
        {
            Orders = new HashSet<Order>();
        }
        public ICollection<RefreshToken>? RefreshTokens { get; private set; }
        public ICollection<Order>? Orders { get; private set; }
    }
}
