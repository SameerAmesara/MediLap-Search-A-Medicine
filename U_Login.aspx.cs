using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace MedilapFinal
{
    public partial class Login : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["MediDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Value == "User")
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }
                    SqlCommand cmd = new SqlCommand("select * from MemberInfo where M_uid='" + TextBox1.Text.Trim() + "' AND M_pw='" + TextBox2.Text.Trim() + "' AND emailverify='Active'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            Response.Write("<script>alert('Login Successful');</script>");
                            Session["username"] = dr.GetValue(8).ToString();
                            Session["fullname"] = dr.GetValue(0).ToString();
                            Session["S1"] = "User";
                            Session["status"] = dr.GetValue(10).ToString();
                        }
                        Response.Redirect("U_Dashboard.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid Login credentials');</script>");
                    }

                }
                catch (Exception ex)
                {

                }
            }

            else if (DropDownList1.SelectedItem.Value == "Medical Store")
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }
                    SqlCommand cmd = new SqlCommand("select * from MedicalStoreInfo where S_uid='" + TextBox1.Text.Trim() + "' AND S_pw='" + TextBox2.Text.Trim() + "' AND emailverify='Active'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            Response.Write("<script>alert('Login Successful');</script>");
                            Session["username"] = dr.GetValue(7).ToString();
                            Session["fullname"] = dr.GetValue(0).ToString();
                            Session["S1"] = "Store";
                            Session["status"] = dr.GetValue(9).ToString();
                        }
                        Response.Redirect("S_Dashboard.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid Login credentials');</script>");
                    }

                }
                catch (Exception ex)
                {

                }
            }
            else
            {
                Response.Write("<script>alert('Please Select Valid Account Type');</script>");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("U_SignUp.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("S_SignUp.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Value == "User")
            {
                Response.Redirect("ForgotPassword.aspx?Type=User&M_uid=" + TextBox1.Text.ToString());
            }
            else if (DropDownList1.SelectedItem.Value == "Medical Store")
            {
                Response.Redirect("ForgotPassword.aspx?Type=Store&S_uid=" + TextBox1.Text.ToString());
            }
        }
    }
}