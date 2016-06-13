using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;


namespace FalckNutecBachelor
{
	public partial class LagNyLokasjon : System.Web.UI.Page
	{
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!WebSecurity.IsAuthenticated)
            {
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
            con = new SqlConnection("Data Source = WIN-QT7KGL9HG25\\SQLEXPRESS;" +
            "Initial Catalog = AvtaleDatabase;" +
            "User Id=dbUser;" + "Password=Bachelor2016;");
        }

        protected void SubmitKnapp_Click(object sender, EventArgs e)
        {
            SqlCommand ins = new SqlCommand("LagNyLokasjon", con);
            ins.CommandType = CommandType.StoredProcedure;
            ins.Parameters.AddWithValue("@Navn", LokasjonText.Text);
            con.Open();
            try
            {
                ins.ExecuteNonQuery();
                svar.Visible = true;
                svar.Text = LokasjonText.Text + " er lagt til";
            }
            catch (SqlException sqlEX)
            {

                throw;
            }
            con.Close();
        }
    }
}