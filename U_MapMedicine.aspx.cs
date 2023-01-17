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
using System.IO;

namespace MedilapFinal
{
    public partial class U_MapMedicine : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["MediDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            getMemberByID();
        }

        void getMemberByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }

                SqlCommand cmd = new SqlCommand("SELECT S_name, S_cn, S_mail, S_city, med_name, med_mfg, med_type, med_expr,S_fa FROM StoreMedicineInfo, MedicalStoreInfo  WHERE  (StoreMedicineInfo.MS_uid = MedicalStoreInfo.S_uid AND StoreMedicineInfo.med_name ='" + Request.QueryString["mname"] + "' AND MedicalStoreInfo.S_name = '" + Request.QueryString["sname"] + "');", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Label2.Text = dr.GetValue(0).ToString();
                        Label4.Text = dr.GetValue(1).ToString();
                        Label6.Text = dr.GetValue(2).ToString();
                        Label8.Text = dr.GetValue(3).ToString();
                        Label10.Text = dr.GetValue(4).ToString();
                        Label12.Text = dr.GetValue(5).ToString();
                        Label14.Text = dr.GetValue(6).ToString();
                        Label16.Text = dr.GetValue(7).ToString();
                        txt_location.Value = dr.GetValue(8).ToString();
                    }

                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {


            if (sendcode())
            {
                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('Your Medicine has been prebooked. \n Please, Visit the store within a span of 24 hours');");
                Response.Write("</script>");
                insertPrebookDetails();
            }
        }


        void insertPrebookDetails()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO UserMedicineInfo(US_uid, Ustore_name, Umed_name, Umed_q, Umed_date) values (@US_uid, @Ustore_name, @Umed_name, @Umed_q, @Umed_date)", con);
                cmd.Parameters.AddWithValue("@US_uid", Session["username"].ToString());
                cmd.Parameters.AddWithValue("@Ustore_name", Label2.Text.Trim());
                cmd.Parameters.AddWithValue("@Umed_name", Label10.Text.Trim());
                cmd.Parameters.AddWithValue("@Umed_q", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Umed_date", DateTime.Now.ToString("yyyy-MM-dd"));

                cmd.ExecuteNonQuery();

                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        private bool sendcode()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from MemberInfo where M_uid='" + Session["username"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                string username = dt.Rows[0]["M_name"].ToString();
                var fromAddress = new MailAddress("sohamp583@gmail.com", "MediLap");
                var toAddress = new MailAddress(Label6.Text.Trim(), Label2.Text.Trim());
                const string fromPassword = "Vivek123!";
                string subject = "MediLap - PreBook Order From " + username;


                string FilePath = "D:\\MediLapFinal\\PreOrderMail.html";
                StreamReader str = new StreamReader(FilePath);
                string MailText = str.ReadToEnd();
                str.Close();

                MailText = MailText.Replace("[abc]", Label10.Text.Trim());
                MailText = MailText.Replace("[def]", Label12.Text.Trim());
                MailText = MailText.Replace("[ghi]", TextBox2.Text.Trim());
                MailText = MailText.Replace("[jkl]", DateTime.Now.ToString("yyyy-MM-dd"));

                string body = MailText;
                var smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    Credentials = new NetworkCredential(fromAddress.Address, fromPassword),
                    Timeout = 20000
                };


                MailMessage _mailmsg = new MailMessage();
                _mailmsg.IsBodyHtml = true;

                //Set From Email ID  
                _mailmsg.From = new MailAddress(fromAddress.ToString());

                //Set To Email ID  
                _mailmsg.To.Add(toAddress);

                //Set Subject  
                _mailmsg.Subject = subject;

                //Set Body Text of Email   
                _mailmsg.Body = body;
                smtp.Send(_mailmsg);
                return true;
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
    }
}