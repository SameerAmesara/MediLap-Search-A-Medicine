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
    
    public partial class MapMedicine : System.Web.UI.Page
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
    }
}