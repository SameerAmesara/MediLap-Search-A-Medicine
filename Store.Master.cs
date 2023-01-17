using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedilapFinal
{
    public partial class Store : System.Web.UI.MasterPage
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
                        LinkButton2.Visible = true;
                        LinkButton3.Visible = false;
                        LinkButton4.Visible = false;
                        LinkButton5.Enabled = false;
                    }
                    else if (Session["S1"].Equals("Store"))
                    {
                        LinkButton.Visible = true;
                        LinkButton1.Visible = true;
                        LinkButton2.Visible = true;
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

            getuserstatus();
            try
            {
                if (string.IsNullOrEmpty((string)Session["S1"]))
                {
                    LinkButton6.Text = " ";
                }
                else if (Session["S1"].Equals("Store"))
                {
                    LinkButton6.Text = "Welcome, " + Session["fullname"].ToString();
                    Label1.Text = Session["status"].ToString();
                }
            }
            catch (Exception E)
            {
                Response.Write("<script>alert('" + E.Message + "');</script>");
            }
        }

        void getuserstatus()
        {
            Label1.Text = Session["status"].ToString();

            if (Session["status"].ToString().Trim() == "Active")
            {
                Label1.Attributes.Add("class", "badge badge-pill badge-success");
            }
            else if (Session["status"].ToString().Trim() == "Pending")
            {
                Label1.Attributes.Add("class", "badge badge-pill badge-warning");
            }
            else if (Session["status"].ToString().Trim() == "Deactive")
            {
                Label1.Attributes.Add("class", "badge badge-pill badge-danger");
            }
            else
            {
                Label1.Attributes.Add("class", "badge badge-pill badge-info");
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
            Response.Redirect("S_Dashboard.aspx");
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session["S1"] = "";
            Response.Redirect("index.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("S_Edit-Profile.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("S_AddMedicine.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("S_MedicineInventory.aspx");
        }
        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("S_UpdateStock.aspx");
        }
    }
}