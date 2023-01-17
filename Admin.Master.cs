using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedilapFinal
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    if (string.IsNullOrEmpty((string)Session["S1"]))
                    {
                        LinkButton.Visible = true;
                        LinkButton1.Visible = true;
                        LinkButton2.Visible = false;
                        LinkButton3.Visible = false;
                        LinkButton4.Visible = false;
                        LinkButton5.Enabled = false;
                    }
                    else if (Session["S1"].Equals("Admin"))
                    {
                        LinkButton.Visible = true;
                        LinkButton1.Visible = true;
                        LinkButton2.Visible = false;
                        LinkButton3.Visible = true;
                        LinkButton4.Visible = true;
                        LinkButton5.Enabled = false;
                    }
                }
                catch (Exception E)
                {
                    Response.Write("<script>alert('" + E.Message + "')</script>");
                }
            }

            try
            {
                if (string.IsNullOrEmpty((string)Session["S1"]))
                {
                    LinkButton6.Text = " ";
                }
                else if (Session["S1"].Equals("Admin"))
                {
                    LinkButton6.Text = "Welcome, " + Session["S1"].ToString();
                }
            }
            catch (Exception E)
            {
                Response.Write("<script>alert('" + E.Message + "');</script>");
            }
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("A_User_Management.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("A_Store_Management.aspx");
        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("A_User_list.aspx");
        }

        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            Response.Redirect("A_Store_list.aspx");
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
            Response.Redirect("A_Dashboard.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session["S1"] = "";
            Response.Redirect("index.aspx");
        }
    }
}