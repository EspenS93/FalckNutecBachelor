using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMatrix.WebData;

namespace FalckNutecBachelor
{
    public partial class AdministrereBruker : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!WebSecurity.IsAuthenticated)
            {
                Response.Redirect("Login");
            }
            if(WebSecurity.CurrentUserId.ToString()!=Request.QueryString["AnsattID"]){
                //access denied
                Response.Redirect("Login");
            }
           // SqlDataSource1.SelectParameters.Add("@AnsattID", WebSecurity.CurrentUserId.ToString());
        }
    }
}