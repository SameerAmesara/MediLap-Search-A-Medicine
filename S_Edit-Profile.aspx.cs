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
    public partial class S_Edit_Profile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["MediDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["username"].ToString() == "" || Session["username"] == null)
                {
                    Response.Write("<script>alert('Session Expired Login Again');</script>");
                    Response.Redirect("Memberlogin.aspx");
                }
                else
                {

                    if (!Page.IsPostBack)
                    {
                        getUserPersonalDetails();
                    }

                }
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("Memberlogin.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Session["username"].ToString() == "" || Session["username"] == null)
            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("Memberlogin.aspx");
            }
            else
            {
                updateUserPersonalDetails();

            }
        }

        void updateUserPersonalDetails()
        {
            string password = "";
            if (TextBox10.Text.Trim() == "")
            {
                password = TextBox9.Text.Trim();
            }
            else
            {
                password = TextBox10.Text.Trim();
            }
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("update MedicalStoreInfo set S_name=@S_name, S_cn=@S_cn, S_mail=@S_mail, S_state=@S_state, S_city=@S_city, S_pc=@S_pc, S_fa=@S_fa, S_pw=@S_pw, ac_stat=@ac_stat WHERE S_uid='" + Session["username"].ToString().Trim() + "'", con);

                cmd.Parameters.AddWithValue("@S_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@S_cn", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@S_mail", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@S_state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@S_city", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@S_pc", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@S_fa", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@S_pw", password);
                cmd.Parameters.AddWithValue("@ac_stat", "Pending");

                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {
                    Response.Write("<script>alert('Your Details Updated Successfully');</script>");
                    getUserPersonalDetails();
                }
                else
                {
                    Response.Write("<script>alert('Invalid entry');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void getUserPersonalDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from MedicalStoreInfo where S_uid='" + Session["username"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox1.Text = dt.Rows[0]["S_name"].ToString();
                TextBox3.Text = dt.Rows[0]["S_cn"].ToString();
                TextBox4.Text = dt.Rows[0]["S_mail"].ToString();
                DropDownList1.SelectedValue = dt.Rows[0]["S_state"].ToString().Trim();
                TextBox5.Text = dt.Rows[0]["S_city"].ToString();
                TextBox6.Text = dt.Rows[0]["S_pc"].ToString();
                TextBox7.Text = dt.Rows[0]["S_fa"].ToString();
                TextBox8.Text = dt.Rows[0]["S_uid"].ToString();
                TextBox9.Text = dt.Rows[0]["S_pw"].ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }
}