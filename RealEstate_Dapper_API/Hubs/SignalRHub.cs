﻿using Microsoft.AspNetCore.SignalR;

namespace RealEstate_Dapper_Api.Hubs
{
    public class SignalRHub:Hub
    {
        private readonly IHttpClientFactory _httpClientFactory;

        public SignalRHub(IHttpClientFactory httpClientFactory)
        {
            _httpClientFactory = httpClientFactory;
        }


        public async Task SendCategoryCount()
        {
            var client7 = _httpClientFactory.CreateClient();
            var responseMessage7 = await client7.GetAsync("https://localhost:44341/api/Statistics/CategoryCount");
            var jsonData7 = await responseMessage7.Content.ReadAsStringAsync();
            await Clients.All.SendAsync("ReceiveCategoryCount" ,jsonData7);

        }

    }
}
