using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedilapFinal
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    if (string.IsNullOrEmpty((string)Session["S1"]))
                    {
                        LinkButton.Visible = false;
                        LinkButton1.Visible = true;
                        LinkButton2.Visible = true;
                        LinkButton3.Visible = false;
                        LinkButton4.Visible = false;
                        LinkButton8.Visible = false;
                        LinkButton5.Visible = true;
                        LinkButton6.Visible = false;
                        LinkButton5.Enabled = true;
                    }
                    else if (Session["S1"].Equals("User"))
                    {
                        LinkButton.Visible = true;
                        LinkButton1.Visible = true;
                        LinkButton2.Visible = true;
                        LinkButton3.Visible = true;
                        LinkButton4.Visible = false;
                        LinkButton8.Visible = false;
                        LinkButton5.Visible = false;
                        LinkButton6.Visible = true;
                        LinkButton7.Enabled = false;
                    }
                    else if (Session["S1"].Equals("Admin"))
                    {
                        LinkButton.Visible = true;
                        LinkButton1.Visible = true;
                        LinkButton2.Visible = false;
                        LinkButton3.Visible = false;
                        LinkButton4.Visible = false;
                        LinkButton8.Visible = true;
                        LinkButton5.Visible = false;
                        LinkButton6.Visible = true;
                        LinkButton7.Enabled = true;
                    }
                    else if (Session["S1"].Equals("Store"))
                    {
                        LinkButton.Visible = true;
                        LinkButton1.Visible = true;
                        LinkButton2.Visible = true;
                        LinkButton3.Visible = false;
                        LinkButton4.Visible = true;
                        LinkButton8.Visible = false;
                        LinkButton5.Visible = false;
                        LinkButton6.Visible = true;
                        LinkButton7.Enabled = false;
                    }
                    else if (Session["S1"].Equals("Search"))
                    {
                        LinkButton.Visible = true;
                        LinkButton1.Visible = true;
                        LinkButton2.Visible = true;
                        LinkButton3.Visible = false;
                        LinkButton4.Visible = false;
                        LinkButton8.Visible = false;
                        LinkButton5.Visible = true;
                        LinkButton6.Visible = false;
                    }
                }
                catch (Exception E)
                {
                    Response.Write("<script>alert('" + E.Message + "')</script>");
                }
            }
        }

        protected void LinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("about.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("U_Dashboard.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("S_Dashboard.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("U_login.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Session["S1"] = "";
            Response.Redirect("index.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("A_login.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("A_Dashboard.aspx");
        }
    }
}