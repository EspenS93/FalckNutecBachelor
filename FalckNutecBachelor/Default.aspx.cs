using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Oving1
{
    public partial class _Default : Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source = WIN-QT7KGL9HG25\\SQLEXPRESS;" +
            "Initial Catalog = AvtaleDatabase;" +
            "User Id=dbUser;" + "Password=Bachelor2016;");
        }

        protected void Login_Authenticate(object sender, AuthenticateEventArgs e)
        {
            SqlCommand Auth = new SqlCommand("SELECT NOnr FROM BRUKERE WHERE NOnr="+Login.UserName+" AND Passord="+Login.Password, con);
            con.Open();
            try
            {
                Auth.ExecuteNonQuery();
                e.Authenticated = true;

            }
            catch (SqlException sqlEX)
            {
                if (sqlEX.Message.StartsWith("saf"))
                {
                    Login.FailureText = "Wrong Username or Password";
                    System.Diagnostics.Debug.WriteLine(sqlEX.);
                }
            }
            con.Close();
        }
    }
}