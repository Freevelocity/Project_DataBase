using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Security.Authentication;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace Project_DataBase.Services
{
    public  class WebRequestService
    {
        public  HttpClient ApiClient { get; set; }
        public string WebClientResponse { get; set; }

        private HttpClientHandler GetHttpHandle()
        {
            HttpClientHandler clientHandler = new HttpClientHandler();
            clientHandler.ServerCertificateCustomValidationCallback = (sender, cert, chain, sslPolicyErrors) => { return true; };
            return clientHandler;
        }

        public async Task<List<T>> GetWebRequestListData<T>(Uri pUrl)
        {


            List<T> oWebResponse = default(List<T>);

            try
            {
                using (var oWeb = new HttpClient(GetHttpHandle()))
                {
                    var oResponse = await oWeb.GetAsync(pUrl);
                    if (oResponse.IsSuccessStatusCode)
                    {
                        string sResponseData = await oResponse.Content.ReadAsStringAsync();

                        if (!string.IsNullOrEmpty(sResponseData))
                        {
                            oWebResponse = JsonConvert.DeserializeObject<List<T>>(sResponseData);
                        }
                    }
                    else
                    {
                        string sResponseData = await oResponse.Content.ReadAsStringAsync();
                        if (!string.IsNullOrEmpty(sResponseData))
                        {

                            WebClientResponse = sResponseData;
                        }
                    }
                }
            }
            catch (Exception Ex)
            {
                // error not going anywhere just for  debugging
                WebClientResponse = Ex.Message;
                Ex.Data.Clear();
            }
            return oWebResponse;
        }

    }
}
