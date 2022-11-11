using AutoMapper;
using Demo.Application.Contracts;
using Demo.Application.Features.Account.Commands.AccountLogin;
using Demo.Application.Features.Account.Commands.CreatAccount;
using Demo.Domain.Entities;
using Demo.Domain.Security;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using System.IdentityModel.Tokens.Jwt;


namespace Demo.Persistence.Repositories
{
    public class IdentityRepository : BaseRepository<AppUser>, IIdentityRepository
    {
        private readonly UserManager<AppUser> userManager;
        private readonly IMapper mapper;
        private readonly ITokenRepository tokenRepository;

        public IdentityRepository(UserManager<AppUser> userManager, IMapper mapper, ITokenRepository tokenRepository, DemoContext demoContext) : base(demoContext)
        {
            this.userManager = userManager;
            this.mapper = mapper;
            this.tokenRepository = tokenRepository;
        }


        public async Task<AuthModel> LoginAsync(LoginDto loginDto)
        {
            AuthModel authModel = new AuthModel();
            var user = await userManager.FindByEmailAsync(loginDto.Email);

            if (user is null || !await userManager.CheckPasswordAsync(user, loginDto.Password))
            {
                authModel.Message = "Email Or Password invalid";
                authModel.IsSuccess = false;
                return authModel;
            }




            var JwtToken = await tokenRepository.CreateJwtToken(user);
            var UserRoles = await userManager.GetRolesAsync(user);

            authModel.IsAuthencated = true;
            authModel.IsSuccess = true;
            authModel.Email = user.Email;
            authModel.Username = user.UserName;
            authModel.UserId = user.Id;
            authModel.Token = new JwtSecurityTokenHandler().WriteToken(JwtToken);
            authModel.Roles = UserRoles.ToList();

            if (user.RefreshTokens.Any(t => t.IsActive))
            {
                var ActiveRefreshToken = user.RefreshTokens.FirstOrDefault(t => t.IsActive);
                authModel.RefreshToken = ActiveRefreshToken?.Token;
                authModel.RefreshTokenEXpiration = ActiveRefreshToken.ExpiresOn;
            }
            else
            {
                var NewRefreshToken = tokenRepository.CreateRefreshToken();
                authModel.RefreshToken = NewRefreshToken?.Token;
                authModel.RefreshTokenEXpiration = NewRefreshToken.ExpiresOn;
                //in memeory
                user.RefreshTokens.Add(NewRefreshToken);
                //save in database 
                await userManager.UpdateAsync(user);
            }

            return authModel;
        }

        public async Task<AuthModel> RegisterAsync(RegisterDto registerDto)
        {

            if (await userManager.FindByEmailAsync(registerDto.Email) is not null)
                return new AuthModel { Message = "Email is already registerd! " };
            if (await userManager.FindByNameAsync(registerDto.UserName) is not null)
                return new AuthModel { Message = "Username is already registerd! " };

            var user = mapper.Map<AppUser>(registerDto);


            var result = await userManager.CreateAsync(user, registerDto.Password);

            if (!result.Succeeded)
            {
                var errors = string.Empty;
                foreach (var error in result.Errors)
                {
                    errors += $"{error.Code} - {error.Description}";
                }
                return new AuthModel { Message = errors, IsSuccess = false };
            }

            await userManager.AddToRoleAsync(user, "Customer");

            var JwtSecurityToken = await tokenRepository.CreateJwtToken(user);

            return new AuthModel
            {
                Email = user.Email,
                IsAuthencated = true,
                Roles = (List<string>)await userManager.GetRolesAsync(user),
                Token = new JwtSecurityTokenHandler().WriteToken(JwtSecurityToken),
                Username = user.UserName,
                IsSuccess = true
            };

        }

        public async Task<AppUser> GetByUserNameAsync(string Username)
        {
            return await demoContext.Users.FirstOrDefaultAsync(u => u.UserName==Username);
        }

    }
}
