using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedilapFinal
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty((string)Session["S1"]))
            {
                Session["S1"] = "Search";
                Response.Redirect("SearchMedicine.aspx");
            }

            else if (Session["S1"].Equals("User"))
            {
                Response.Redirect("U_SearchMedicine.aspx");

            }
            else
            {
                Response.Redirect("SearchMedicine.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            Response.Redirect("about.aspx");
        }
    }
}