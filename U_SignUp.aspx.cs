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
    public partial class U_SignUp : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["MediDB"].ConnectionString;
        static String activationcode;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {

                Response.Write("<script>alert('Member Already Exist with this Member ID, try other ID');</script>");
            }
            else
            {
                signUpNewMember();
                clearform();
            }
        }

        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from MemberInfo where M_uid='" + TextBox8.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void signUpNewMember()
        {
            Random random = new Random();
            activationcode = random.Next(1001, 9999).ToString();

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO MemberInfo(M_name,M_dob,M_cn,M_mail,M_state,M_city,M_pc,M_fa,M_uid,M_pw,ac_stat,activationcode,emailverify) values (@M_name,@M_dob,@M_cn,@M_mail,@M_state,@M_city,@M_pc,@M_fa,@M_uid,@M_pw,@ac_stat,@activationcode,@emailverify)", con);
                cmd.Parameters.AddWithValue("@M_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@M_dob", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@M_cn", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@M_mail", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@M_state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@M_city", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@M_pc", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@M_fa", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@M_uid", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@M_pw", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@ac_stat", "Pending");
                cmd.Parameters.AddWithValue("@activationcode", activationcode);
                cmd.Parameters.AddWithValue("@emailverify", "Pending");
                cmd.ExecuteNonQuery();
                sendcode();
                con.Close();

                Response.Write("<script type='text/javascript'>");
                Response.Write("alert('Activation Code Sent. Please Check your mail.');");
                Response.Write("document.location.href='Activate.aspx?Type=User&email=" + TextBox4.Text.Trim() + "';");
                Response.Write("</script>");


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        private void sendcode()
        {

            var fromAddress = new MailAddress("sohamp583@gmail.com", "MediLap");
            var toAddress = new MailAddress(TextBox4.Text.Trim(), TextBox1.Text.Trim());
            const string fromPassword = "Vivek123!";
            const string subject = "Activation Code to Verify Email.";
            string body = "Dear " + TextBox1.Text.Trim() + ", Your Activation Code for MediLap is " + activationcode + "\n\n\n Thank You for using MediLap,\n MediLap Team. ";

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

        void clearform()
        {
            TextBox1.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            DropDownList1.SelectedValue = "State";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
        }
    }
}