using System;
using System.Text;
using System.Text.RegularExpressions;

namespace Core.Utils
{
    public class RewriteUrl
    {
        public static string ConvertToUnSign(string text)
        {
            for (int i = 33; i < 48; i++)
            {
                text = text.Replace(((char)i).ToString(), "");
            }
            for (int i = 58; i < 65; i++)
            {
                text = text.Replace(((char)i).ToString(), "");
            }
            for (int i = 91; i < 97; i++)
            {
                text = text.Replace(((char)i).ToString(), "");
            }
            for (int i = 123; i < 127; i++)
            {
                text = text.Replace(((char)i).ToString(), "");
            }
            text = text.Replace(" ", "-");
            Regex regex = new Regex(@"\p{IsCombiningDiacriticalMarks}+");
            string strFormD = text.Normalize(System.Text.NormalizationForm.FormD);
            return regex.Replace(strFormD, String.Empty).Replace('\u0111', 'd').Replace('\u0110', 'D').ToLower();
        }


        /**
         * Kienng custom paging 
         */
        public static string generateTagPaging(int page, int pageSize, int totalRecord)
        {

            int maxPage = 1;
            if (totalRecord > pageSize && totalRecord % pageSize == 0)
            { maxPage = totalRecord / pageSize; }
            if (totalRecord > pageSize && totalRecord % pageSize != 0)
            { maxPage = (totalRecord / pageSize) + 1; }




            if (maxPage == 1)
            {
                return "";//Nếu chỉ có trang thì ko hiển thị phân trang
            }
            else
            {
                StringBuilder sb = new StringBuilder("<div class=\"col-sm-6 pagination-right\"><div class=\"pagination pagination-centered\"><ul>");
                if (page <= 1)
                {
                    sb.Append("<li class=\"disabled\"><a href=\"/Tin-tuc.htm\" class=\"btn btn-primary\"><span>1</span></a></li>");
                    //sb.Append("<li class=\"disabled\"><a href=\"#\" class=\"btn btn-primary\"><span>« Trang trước</span></a></li>");
                }
                else
                {
                    sb.Append("<li><a href=\"/Tin-tuc.htm\" class=\"btn btn-primary\"><span>1</span></a></li>");
                    string prePage = string.Format("<li><a href=\"/Tin-tuc-p{0}.htm\" class=\"btn btn-primary\"><span> « </span></a></li>", page - 1);
                    sb.Append(prePage);
                }
                //Trang hien tai
                if (page > 1 && page < maxPage)
                {
                    sb.Append(string.Format("<li class=\"disabled\"><a href=\"/Tin-tuc-p{0}.htm\" class=\"btn btn-primary\"><span>{1}</span></a></li>", page, page));
                }
                string nextPage;
                if (page < maxPage)
                {
                    nextPage = string.Format("<li><a href=\"/Tin-tuc-p{0}.htm\" class=\"btn btn-primary\"><span> » </span></a></li>", page + 1);
                    sb.Append(nextPage);
                    sb.Append(string.Format("<li><a href=\"/Tin-tuc-p{0}.htm\" class=\"btn btn-primary\"><span>{1}</span></a></li>", maxPage, maxPage));
                }
                else
                {
                    //nextPage = "<li class=\"disabled\"><a href=\"#\" class=\"btn btn-primary\"><span>« Trang sau</span></a></li>";
                    //sb.Append(nextPage);
                    sb.Append(string.Format("<li class=\"disabled\"><a href=\"/Tin-tuc-p{0}.htm\" class=\"btn btn-primary\"><span>{1}</span></a></li>", maxPage, maxPage));
                }



                sb.Append("</ul></div></div>");

                return sb.ToString();
            }


        }

        /**
         * Vi du Full phan trang la = Tin-tuc-p2.htm ==> Base URL = "Tin-tuc"
         * */
        public static string generateTagPaging(string baseUrl, int page, int pageSize, int totalRecord)
        {

            int maxPage = 1;
            if (totalRecord > pageSize && totalRecord % pageSize == 0)
            { maxPage = totalRecord / pageSize; }
            if (totalRecord > pageSize && totalRecord % pageSize != 0)
            { maxPage = (totalRecord / pageSize) + 1; }


            if (maxPage == 1)
            {
                return "";//Nếu chỉ có trang thì ko hiển thị phân trang
            }
            StringBuilder sb = new StringBuilder("<div class=\"col-sm-6 pagination-right\"><div class=\"pagination pagination-centered\"><ul>");

            if (page <= 1)
            {
                sb.Append(string.Format("<li class=\"disabled\"><a href=\"/{0}-p{1}.htm\" class=\"btn btn-primary\"><span>{2}</span></a></li>", baseUrl, 1, 1));
            }
            else
            {
                sb.Append(string.Format("<li><a href=\"/{0}-p{1}.htm\" class=\"btn btn-primary\"><span>{2}</span></a></li>", baseUrl, 1, 1));
                sb.Append(string.Format("<li><a href=\"/{0}-p{1}.htm\" class=\"btn btn-primary\"><span> « </span></a></li>", baseUrl, page - 1));
            }
            //Trang hien tai
            if (page > 1 && page < maxPage)
            {
                sb.Append(string.Format("<li class=\"disabled\"><a href=\"/{0}-p{1}.htm\" class=\"btn btn-primary\"><span>{2}</span></a></li>", baseUrl, page, page));
            }
            if (page < maxPage)
            {
                sb.Append(string.Format("<li><a href=\"/{0}-p{1}.htm\" class=\"btn btn-primary\"><span> » </span></a></li>", baseUrl, page + 1));
                sb.Append(string.Format("<li><a href=\"/{0}-p{1}.htm\" class=\"btn btn-primary\"><span>{2}</span></a></li>", baseUrl, maxPage, maxPage));
            }
            else
            {
                sb.Append(string.Format("<li class=\"disabled\"><a href=\"/{0}-p{1}.htm\" class=\"btn btn-primary\"><span>{2}</span></a></li>", baseUrl, maxPage, maxPage));
            }
            sb.Append("</ul></div></div>");


            return sb.ToString();
        }
        /**
      * Vi du Full phan trang la = Tin-tuc-p2.htm ==> Base URL = "Tin-tuc"
      * */
        public static string generateTagPagingNodric(string baseUrl, int page, int pageSize, int totalRecord)
        {
            StringBuilder sb = new StringBuilder("<div class=\"wp-pagenavi\" role=\"navigation\">");
            int maxPage = 1;
            if (totalRecord > pageSize && totalRecord % pageSize == 0)
            { maxPage = totalRecord / pageSize; }
            if (totalRecord > pageSize && totalRecord % pageSize != 0)
            { maxPage = (totalRecord / pageSize) + 1; }


            if (maxPage <= 1)
            {
                return "";//Nếu chỉ có trang thì ko hiển thị phân trang
            }

            else
            {
                sb.Append(string.Format("<span class=\"pages\">Trang {0} trên {1}</span>", page, maxPage));
                if (page <= 1)
                {

                    sb.Append(string.Format("<span aria-current=\"page\" class=\"current\">{0}</span>", page));
                    if (page < maxPage)
                    {
                        sb.Append(string.Format("<a class=\"nextpostslink\" rel=\"next\" aria-label=\"Trang sau\" href=\"/{0}-p{1}.htm\">{2}</a>", baseUrl, page + 1, page + 1));
                        if (page <= maxPage - 2)
                        {
                            sb.Append(string.Format("<a class=\"nextpostslink\" rel=\"next\" aria-label=\"Trang sau\" href=\"/{0}-p{1}.htm\">{2}</a>", baseUrl, page + 2, page + 2));
                        }
                        sb.Append(string.Format("<a class=\"last\" aria-label=\"Last Page\" href=\"/{0}-p{1}.htm\">Trang cuối »</a>", baseUrl, maxPage));
                    }
                }
                else
                {
                    sb.Append(string.Format("<a class=\"first\" aria-label=\"First Page\" href=\"/{0}.htm\">« Trang đầu</a>", baseUrl));
                    if (page > 2)
                    {
                        sb.Append(string.Format("<a class=\"previouspostslink\" rel=\"prev\" aria-label=\"Trang trước\" href=\"/{0}-p{1}.htm\">{2}</a>", baseUrl, page - 2, page - 2));
                    }
                    sb.Append(string.Format("<a class=\"previouspostslink\" rel=\"prev\" aria-label=\"Trang trước\" href=\"/{0}-p{1}.htm\">{2}</a>", baseUrl, page - 1, page - 1));
                    sb.Append(string.Format("<span aria-current=\"page\" class=\"current\">{0}</span>", page));
                    if (page < maxPage)
                    {
                        sb.Append(string.Format("<a class=\"nextpostslink\" rel=\"next\" aria-label=\"Trang sau\" href=\"/{0}-p{1}.htm\">{2}</a>", baseUrl, page + 1, page + 1));
                        if (page <= maxPage - 2)
                        {
                            sb.Append(string.Format("<a class=\"nextpostslink\" rel=\"next\" aria-label=\"Trang sau\" href=\"/{0}-p{1}.htm\">{2}</a>", baseUrl, page + 2, page + 2));
                        }
                        sb.Append(string.Format("<a class=\"last\" aria-label=\"Last Page\" href=\"/{0}-p{1}.htm\">Trang cuối »</a>", baseUrl, maxPage));
                    }
                }
            }

            sb.Append("</div>");


            return sb.ToString();
        }
    }
}
