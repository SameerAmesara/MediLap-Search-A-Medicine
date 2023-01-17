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
    public partial class U_Edit_Profile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["MediDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["username"].ToString() == "" || Session["username"] == null)
                {
                    Response.Write("<script>alert('Session Expired Login Again');</script>");
                    Response.Redirect("U_Login.aspx");
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
                Response.Redirect("U_Login.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Session["username"].ToString() == "" || Session["username"] == null)
            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("U_Login.aspx");
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


                SqlCommand cmd = new SqlCommand("update MemberInfo set M_name=@M_name, M_dob=@M_dob, M_cn=@M_cn, M_mail=@M_mail, M_state=@M_state, M_city=@M_city, M_pc=@M_pc, M_fa=@M_fa, M_pw=@M_pw, ac_stat=@ac_stat WHERE M_uid='" + Session["username"].ToString().Trim() + "'", con);

                cmd.Parameters.AddWithValue("@M_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@M_dob", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@M_cn", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@M_mail", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@M_state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@M_city", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@M_pc", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@M_fa", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@M_pw", password);
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

                SqlCommand cmd = new SqlCommand("SELECT * from MemberInfo where M_uid='" + Session["username"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox1.Text = dt.Rows[0]["M_name"].ToString();
                TextBox2.Text = dt.Rows[0]["M_dob"].ToString();
                TextBox3.Text = dt.Rows[0]["M_cn"].ToString();
                TextBox4.Text = dt.Rows[0]["M_mail"].ToString();
                DropDownList1.SelectedValue = dt.Rows[0]["M_state"].ToString().Trim();
                TextBox5.Text = dt.Rows[0]["M_city"].ToString();
                TextBox6.Text = dt.Rows[0]["M_pc"].ToString();
                TextBox7.Text = dt.Rows[0]["M_fa"].ToString();
                TextBox8.Text = dt.Rows[0]["M_uid"].ToString();
                TextBox9.Text = dt.Rows[0]["M_pw"].ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }
}