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
    public partial class ForgotPassword : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["MediDB"].ConnectionString;
        string pw;
        string name;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {
                sendcode();
                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('Password has been sent to your Registered Email.');");
                Response.Write("document.location.href='U_Login.aspx';");
                Response.Write("</script>");
            }
            else
            {
                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('This Email Id is not registered.');");
                Response.Write("document.location.href='U_Login.aspx';");
                Response.Write("</script>");
            }
        }


        bool checkMemberExists()
        {
            if (Request.QueryString["Type"] == "User")
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("SELECT M_pw, M_name from MemberInfo where M_mail='" + TextBox1.Text.Trim() + "' and M_uid='" + Request.QueryString["M_uid"] + "'", con);
                    SqlDataReader ds = cmd.ExecuteReader();

                    if (ds.HasRows)
                    {
                        while (ds.Read())
                        {
                            pw = ds.GetValue(0).ToString();
                            name = ds.GetValue(1).ToString();
                        }
                        return true;

                    }
                    else
                    {
                        return false;
                    }
                    ds.Close();
                    ds.Dispose();

                    con.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                    return false;
                }
            }
            else if (Request.QueryString["Type"] == "Store")
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("SELECT S_pw, S_name from MedicalStoreInfo where S_mail='" + TextBox1.Text.Trim() + "' and S_uid='" + Request.QueryString["S_uid"] + "'", con);
                    SqlDataReader ds = cmd.ExecuteReader();

                    if (ds.HasRows)
                    {
                        while (ds.Read())
                        {
                            pw = ds.GetValue(0).ToString();
                            name = ds.GetValue(1).ToString();
                        }
                        return true;

                    }
                    else
                    {
                        return false;
                    }
                    ds.Close();
                    ds.Dispose();

                    con.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

        private void sendcode()
        {

            var fromAddress = new MailAddress("sohamp583@gmail.com", "Medilap");
            var toAddress = new MailAddress(TextBox1.Text.Trim(), "User");
            const string fromPassword = "Vivek123!";
            const string subject = "Password For MediLap Account";
            string body = "Dear " + name + ", \n Your Password is " + pw;

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