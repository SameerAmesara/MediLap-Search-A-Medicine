using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedilapFinal
{
    public partial class A_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim() == "Admin" && TextBox2.Text.Trim() == "Admin123")
            {
                Session["S1"] = "Admin";
                Response.Redirect("A_Dashboard.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Username or Password!!!')</script>");
            }
        }
    }
}