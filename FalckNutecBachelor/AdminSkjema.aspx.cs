using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FalckNutecBachelor
{

    public partial class AdminSkjema : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Button1.PostBackUrl = "~/"+LagNyListe.SelectedValue+".aspx";
        }
    }
}