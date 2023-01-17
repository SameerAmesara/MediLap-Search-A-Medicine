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
    public partial class S_UpdateStock : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["MediDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            getMedicineByID();
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            if (Session["username"].ToString() == "" || Session["username"] == null)
            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("Memberlogin.aspx");
            }
            else
            {
                updateMedicineDetails();
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            if (Session["username"].ToString() == "" || Session["username"] == null)
            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("Memberlogin.aspx");
            }
            else
            {
                deleteMedicine();
            }
        }

        void getMedicineByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from StoreMedicineInfo where MS_uid='" + Session["username"].ToString() + "' AND med_id='" + TextBox1.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox2.Text = dr.GetValue(2).ToString();
                        TextBox3.Text = dr.GetValue(3).ToString();
                        DropDownList1.SelectedValue = dr.GetValue(4).ToString();
                        TextBox4.Text = dr.GetValue(5).ToString();
                        TextBox5.Text = dr.GetValue(6).ToString();
                        TextBox6.Text = dr.GetValue(7).ToString();
                    }

                }
                else
                {
                    Response.Write("<script>alert('Invalid Medicine ID');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void updateMedicineDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("update StoreMedicineInfo set med_expr=@med_expr, med_q=@med_q WHERE MS_uid='" + Session["username"].ToString().Trim() + "' AND med_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@med_expr", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@med_q", TextBox5.Text.Trim());


                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {
                    Response.Write("<script>alert('Medicine Details Updated Successfully');</script>");

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

        void deleteMedicine()
        {
            if (medicineexists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from StoreMedicineInfo WHERE MS_uid='" + Session["username"].ToString().Trim() + "' AND med_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Medicine Deleted Successfully');</script>");
                    clearForm();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Medicine ID');</script>");
            }
        }

        bool medicineexists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from StoreMedicineInfo where MS_uid='" + Session["username"].ToString().Trim() + "' AND med_id='" + TextBox1.Text.Trim() + "'", con);
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

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            DropDownList1.SelectedValue = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }
    }
}