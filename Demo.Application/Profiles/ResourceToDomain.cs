using AutoMapper;
using Demo.Application.Features.Account.Commands.CreatAccount;
using Demo.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.Application.Profiles
{
    public class ResourceToDomain : Profile
    {
        public ResourceToDomain()
        {
            CreateMap<RegisterDto, AppUser>();
        
        }
        
    }
}
