using System;
using System.Web.Security;
using WebMatrix.WebData;

namespace FalckNutecBachelor
{
    public partial class VisFinansieringsselskap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!WebSecurity.IsAuthenticated)
            {
                Response.Redirect("Login");
            }
            else
            {
                if (Roles.IsUserInRole("Reader"))
                {
                    //ACCESS DENIED SIDE
                    Response.Redirect("StartskjemaLes");
                }
            }
        }
    }
}