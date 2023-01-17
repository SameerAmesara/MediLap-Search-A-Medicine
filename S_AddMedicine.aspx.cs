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
    public partial class S_AddMedicine : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["MediDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (medicineexists())
            {
                Response.Write("<script>alert('Medicine ID already Exists.Please try another.');</script>");
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("INSERT INTO StoreMedicineInfo(MS_uid,med_id,med_name,med_mfg,med_type,med_expr,med_q,med_des) values (@MS_uid,@med_id,@med_name,@med_mfg,@med_type,@med_expr,@med_q,@med_des)", con);
                    cmd.Parameters.AddWithValue("@MS_uid", Session["username"].ToString());
                    cmd.Parameters.AddWithValue("@med_id", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@med_name", TextBox10.Text.Trim());
                    cmd.Parameters.AddWithValue("@med_mfg", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@med_type", DropDownList2.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@med_expr", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@med_q", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@med_des", TextBox5.Text.Trim());
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Medicine Added Successfully.');</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
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
    }
}