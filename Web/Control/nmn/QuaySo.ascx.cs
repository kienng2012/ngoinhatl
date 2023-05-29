using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Services;

/**
 * REf quay so : https://stackoverflow.com/questions/20618091/infinite-loop-showing-random-numbers-js
 * Call ajax codebehind : https://stackoverflow.com/questions/18236634/asp-net-jquery-ajax-calling-code-behind-method
 * Create api : https://www.c-sharpcorner.com/article/create-simple-web-api-in-asp-net-mvc/
 * */
namespace Web.Control.nmn
{
    public partial class QuaySo : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            List<int> list = new List<int>() { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 };

            List<string> listStr = new List<string>() { "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12" };
            List<int> randomNumberList = new List<int>();
            randomNumberList = GetRandomElements(list, 3);
            StringBuilder sb = new StringBuilder();
            sb.AppendLine("List int result:");
            foreach (var i in randomNumberList)
            {
                sb.Append(i.ToString() + "; ");
            }
           

            List<string> randomListStr = new List<string>();
            randomListStr = GetRandomElements(listStr, 2);
            sb.AppendLine("List str result:");
            foreach ( var j in randomListStr)
            {
                sb.Append(j +"; ");
            }    
            lblResult.Text = sb.ToString();
        }

        public List<t> GetRandomElements<t>(IEnumerable<t> list, int elementsCount)
        {
            return list.OrderBy(x => Guid.NewGuid()).Take(elementsCount).ToList();
        }
        [WebMethod]
        public  string OnSubmit(string name, bool isGoing, string returnAddress)
        {
            List<int> list = new List<int>() { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 };

            List<string> listStr = new List<string>() { "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12" };
            List<int> randomNumberList = new List<int>();
            randomNumberList = GetRandomElements(list, 3);
            StringBuilder sb = new StringBuilder();
            sb.AppendLine("List int result:");
            foreach (var i in randomNumberList)
            {
                sb.Append(i.ToString() + "; ");
            }


            List<string> randomListStr = new List<string>();
            randomListStr = GetRandomElements(listStr, 2);
            sb.AppendLine("List str result:");
            foreach (var j in randomListStr)
            {
                sb.Append(j + "; ");
            }
            lblResult.Text = sb.ToString();
            return sb.ToString();
        }



    }
}