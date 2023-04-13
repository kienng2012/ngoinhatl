using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace Core.Utils
{
    /*
     * https://stackoverflow.com/questions/26742054/the-client-and-server-cannot-communicate-because-they-do-not-possess-a-common-a
     * https://www.c-sharpcorner.com/UploadFile/0c1bb2/sending-emails-with-mutilple-bcc-and-cc-using-Asp-Net-C-Sharp/
     * https://www.codeproject.com/Articles/700211/Csharp-SMTP-Configuration-for-Outlook-Com-SMTP-Hos
     * https://www.c-sharpcorner.com/blogs/send-email-using-gmail-smtp
     * https://codepedia.info/how-to-send-email-with-google-gmail-account-in-asp-net
     * 
     * */
    public class OutlookEmail
    {
        public static bool Send(string to, string[] cc, string Subject, string Body, bool IsHtml, string AttachmentPath)
        {
            try
            {
                //    string GmailAccount = "nmnchinhhang68@gmail.com"; // must change "your_gmail_account@gmail.com"
                //    string GmailPassword = "AIzaSyCTYFpH4q9mji2yfw7o1sSKuxHB0mJC3r4";//"nMn@2023G#"; // must change to Gmail account password
                //    string ToEmails = "kienng2012@gmail.com"; // this is the addresses to send the email to; can be the same Gmail account or another email address; separate multiple emails with commas

                string GmailAccount = System.Configuration.ConfigurationManager.AppSettings["emailSender"];// "nmnchinhhang@outlook.com"; // must change "your_gmail_account@gmail.com"
                string GmailPassword = System.Configuration.ConfigurationManager.AppSettings["passwordSender"];// "nMn@2023G#";//"nMn@2023G#"; // must change to Gmail account password
                ////Important fix error :System.Net.Mail.SmtpException: 'Failure sending mail.' Win32Exception: The client and server cannot communicate, because
                ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;

                MailMessage mail = new MailMessage(GmailAccount, to);
                mail.Subject = Subject;
                mail.IsBodyHtml = IsHtml;
                mail.Body = Body;
                if (!string.IsNullOrWhiteSpace(AttachmentPath))
                {
                    Attachment attachment = new Attachment(AttachmentPath);
                    mail.Attachments.Add(attachment);
                    mail.Priority = MailPriority.High; // optional
                }
                if (cc != null && cc.Length > 0)
                {
                    foreach (string str in cc)
                    {
                        mail.CC.Add(new MailAddress(str));
                    }
                }
                string hostEmail = System.Configuration.ConfigurationManager.AppSettings["hostEmail"];
                SmtpClient smtp = new SmtpClient(hostEmail, 587);//smtp-mail.outlook.com
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new System.Net.NetworkCredential(GmailAccount, GmailPassword);

                smtp.Send(mail);
                return true; // return nothing when it is successful
            }
            catch (Exception ex)
            {
                Console.WriteLine("An error occured while sending your message. " + ex.Message);
            }
            return false;
        }
    }
}
