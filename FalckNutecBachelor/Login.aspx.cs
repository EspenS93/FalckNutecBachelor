using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FalckNutecBachelor
{
    public partial class Login : Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(Session["username"] != null)
            {
                if (Session["username"] == "admin")
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
            e.Authenticated = false;
            int valid = 0;
            using (SqlCommand cmd = new SqlCommand("Validate_User", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@NOnr", Login1.UserName);
                cmd.Parameters.AddWithValue("@Passord", Login1.Password);
                cmd.Connection = con;
                con.Open();
                valid = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();
            }
            if (valid == -1)
            {
                Login1.FailureText = "Username and/or password is incorrect.";
            }
            else {
                Session["Username"] = Login1.UserName;
                if (Login1.UserName == "admin")
                {
                    Response.Redirect("AdminSkjema.aspx");

                }
                else {
                    Response.Redirect("Startskjema.aspx");
                }
            }
        }
    }
}