using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMatrix.WebData;

namespace FalckNutecBachelor
{

    public partial class AdminSkjema : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!WebSecurity.IsAuthenticated){
                Response.Redirect("Login");
            }
            else
            {
            if (!Roles.IsUserInRole("Admin"))
            {
                //ACCESS DENIED SIDE
                Response.Redirect("Startskjema");
            }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Button1.PostBackUrl = "~/"+LagNyListe.SelectedValue+".aspx";
        }

        protected void LagNyListe_SelectedIndexChanged(object sender, EventArgs e)
        {
            Button1.PostBackUrl = "~/" + LagNyListe.SelectedValue + ".aspx";
        }
    }
}