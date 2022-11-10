using Demo.Application.Pagination;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace Demo.Application.Extensions
{
    public static class HttpPaginationExtension
    {
        public static void AddPaginationToHeader(this HttpResponse httpResponse, int currentPage, int itemsPerPage, int totalItems, int totalPages)
        {
            var paginationHeader = new PaginationHeader(currentPage, itemsPerPage, totalItems, totalPages);
            var option = new JsonSerializerOptions
            {
                PropertyNamingPolicy = JsonNamingPolicy.CamelCase,
            };
            httpResponse.Headers.Add("Pagination", JsonSerializer.Serialize(paginationHeader, option));
            httpResponse.Headers.Add("Access-Control-Expose-Headers", "Pagination");

        }

    }
}
