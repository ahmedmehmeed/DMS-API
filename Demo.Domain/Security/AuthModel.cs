using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json.Serialization;


namespace Demo.Domain.Security
{
    public class AuthModel
    {
        public string UserId { get; set; }
        public string? Message { get; set; }
        public string? Username { get; set; }
        public string? Email { get; set; }
        public string? Token { get; set; }
        public List<string>? Roles { get; set; }
        public bool IsAuthencated { get; set; }
        [JsonIgnore]
        public string? RefreshToken { get; set; }
        public DateTime RefreshTokenEXpiration { get; set; }
        public bool IsSuccess { get; set; }
    }
}
