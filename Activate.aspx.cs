using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedilapFinal
{
    public partial class Activate : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["MediDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
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
                    SqlCommand cmd = new SqlCommand("Select * from MemberInfo where M_mail='" + Request.QueryString["email"] + "'", con);
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        String activationcode;
                        activationcode = ds.Tables[0].Rows[0]["activationcode"].ToString();
                        if (activationcode == TextBox1.Text.ToString())
                        {
                            changestatus();

                            Response.Write("<script type='text/javascript'>");
                            Response.Write("alert('Account Verified. Please Login to continue.');");
                            Response.Write("document.location.href='U_Login.aspx';");
                            Response.Write("</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('Invalid Code');</script>");
                            Response.Write("<script>alert('" + activationcode + "');</script>");
                            Response.Write("<script>alert('" + TextBox1.Text.ToString() + "');</script>");
                        }
                    }
                    con.Close();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
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
                    SqlCommand cmd = new SqlCommand("Select activationcode from MedicalStoreInfo where S_mail='" + Request.QueryString["email"] + "'", con);
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        String activationcode;
                        activationcode = ds.Tables[0].Rows[0]["activationcode"].ToString();
                        if (activationcode == TextBox1.Text.ToString())
                        {
                            changestatus();

                            Response.Write("<script type='text/javascript'>");
                            Response.Write("alert('Account Verified. Please Login to continue.');");
                            Response.Write("document.location.href='U_Login.aspx';");
                            Response.Write("</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('Invalid Code');</script>");
                            Response.Write("<script>alert('" + activationcode + "');</script>");
                            Response.Write("<script>alert('" + TextBox1.Text.ToString() + "');</script>");
                        }
                    }
                    con.Close();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Hello');</script>");
            }
        }
        private void changestatus()
        {
            if (Request.QueryString["Type"] == "User")
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Update Memberinfo set emailverify='Active' where M_mail='" + Request.QueryString["email"] + "'", con);
                cmd.ExecuteNonQuery();
            }
            else if (Request.QueryString["Type"] == "Store")
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Update MedicalStoreinfo set emailverify='Active' where S_mail='" + Request.QueryString["email"] + "'", con);
                cmd.ExecuteNonQuery();
            }
            else
            {
                Response.Write("<script>alert('Invaliasfafasfd Code');</script>");
            }
        }
    }
}