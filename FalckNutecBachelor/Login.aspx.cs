﻿using System;
using System.Data.SqlClient;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
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
                    Response.Redirect("~/AdminSkjema.aspx");
                }
                else if(Roles.IsUserInRole("Writer"))
                {
                    Response.Redirect("~/Startskjema.aspx");
                }else
                {
                    Response.Redirect("~/StartskjemaLes.aspx");
                }

            }
            con = new SqlConnection("Data Source = WIN-QT7KGL9HG25\\SQLEXPRESS;" +
            "Initial Catalog = AvtaleDatabase;" +
            "User Id=dbUser;" + "Password=Bachelor2016;");
        }

        protected void Login_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (WebSecurity.Login(Login1.UserName, Login1.Password, Login1.RememberMeSet))
            {
                if (Roles.IsUserInRole(Login1.UserName,"Admin"))
                {
                    Response.Redirect("~/AdminSkjema.aspx");
                }else if(Roles.IsUserInRole(Login1.UserName, "Writer"))
                {
                    Response.Redirect("~/Startskjema.aspx");
                }
                else
                {
                    Response.Redirect("~/StartskjemaLes.aspx");
                }
            }
            else
            {
                Login1.FailureText = "Username and/or password is incorrect.";
            }
           
        }
    }
}