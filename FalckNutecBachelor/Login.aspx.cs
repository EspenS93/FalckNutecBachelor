using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMatrix;
using WebMatrix.WebData;

namespace FalckNutecBachelor
{
    public partial class Login : Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        { 
            if(WebSecurity.IsAuthenticated)
            {
                if (Roles.IsUserInRole("Admin"))
                {
                    Response.Redirect("AdminSkjema.aspx");
                }
                else
                {
                    Response.Redirect("Startskjema.aspx");
                }

            }
            con = new SqlConnection("Data Source = WIN-QT7KGL9HG25\\SQLEXPRESS;" +
            "Initial Catalog = AvtaleDatabase;" +
            "User Id=dbUser;" + "Password=Bachelor2016;");
        }

        protected void Login_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if(WebSecurity.Login(Login1.UserName, Login1.Password, Login1.RememberMeSet))
            {
                if(Roles.IsUserInRole("Admin"))
                {
                    Response.Redirect("AdminSkjema.aspx");
                }else
                {
                    Response.Redirect("Startskjema.aspx");
                }
            }
            else
            {
                Login1.FailureText = "Username and/or password is incorrect.";
            }
           
        }
    }
}