using FluentValidation;


namespace Demo.Application.Features.Account.Commands.AccountLogin
{
    public class LoginAccountValidator : AbstractValidator<LoginAccountCommand>
    {
        public LoginAccountValidator()
        {
            RuleFor(p => p.LoginDto.Email)
                 .NotEmpty().WithMessage("Email is required")
                 .NotNull().WithMessage("Email is required");


            RuleFor(p => p.LoginDto.Password)
                .NotEmpty().WithMessage("Password is required")
                .NotNull().WithMessage("Password is required");


        }
    }
}
