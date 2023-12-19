using Core.Category;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web.Http;
using System.Web.Http.Results;

namespace Web
{
    public class QuayThuongController : ApiController
    {
        // GET api/<controller>
        //public IHttpActionResult Get()
        //{
        //    var result = new
        //    {
        //        x = "hello",
        //        y = "world"
        //    };
        //    return Ok(JsonConvert.SerializeObject(result));
        //}



        // POST api/<controller>

        public IHttpActionResult Get()

        {
            List<int> list = new List<int>() { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };

            List<string> listStr = new List<string>() {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9" };
            List<int> randomNumberList = new List<int>();
           // randomNumberList = GetRandomElements(list, 12);
            StringBuilder sb = new StringBuilder();
           
            /*
            sb.AppendLine("List int result:");
            foreach (var i in randomNumberList)
            {
                sb.Append(i.ToString() + "; ");
            }
            List<string> randomListStr = new List<string>();
            randomListStr = GetRandomElements(listStr, 10);
            sb.AppendLine("List str result:");
            foreach (var j in randomListStr)
            {
                sb.Append(j + "; ");
            }
            */
            //tREN LA TEST CHOI CHOI
            randomNumberList = GetRandomElements(list, 13);
            sb = new StringBuilder();
            foreach (var i in randomNumberList)
            {
                sb.Append(i.ToString());
            }
            var result = new
            {
                giainhat = sb.ToString(),

            };
            return Ok(JsonConvert.SerializeObject(result));
            //return sb.ToString();
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
        }
        public List<t> GetRandomElements<t>(IEnumerable<t> list, int elementsCount)
        {
            return list.OrderBy(x => Guid.NewGuid()).Take(elementsCount).ToList();
        }
    }
}