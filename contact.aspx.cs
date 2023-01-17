using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace MedilapFinal
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            sendcode();
            Response.Write("<script type='text/javascript'>");
            Response.Write("alert('Your Response has been received.\n Thank You for Contacting Us');");
            Response.Write("</script>");
        }
        private void sendcode()
        {

            var fromAddress = new MailAddress("sohamp583@gmail.com", "MediLap");
            var toAddress = new MailAddress("sohamp583@gmail.com", TextBox1.Text.Trim());
            const string fromPassword = "Vivek123!";
            const string subject = "Message From MediLap User";
            string body = "Message From: " + TextBox1.Text.Trim() + "\nEmail Address: " + TextBox2.Text + "\nPhone: " + TextBox3.Text + " \n Message: " + TextBox7.Text;
            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                Credentials = new NetworkCredential(fromAddress.Address, fromPassword),
                Timeout = 20000
            };
            using (var message = new MailMessage(fromAddress, toAddress)
            {
                Subject = subject,
                Body = body
            })
            {
                smtp.Send(message);
            }

        }
    }
}