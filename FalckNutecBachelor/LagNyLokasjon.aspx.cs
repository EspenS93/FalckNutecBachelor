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
	public partial class LagNyLokasjon : System.Web.UI.Page
	{
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("login.aspx");
            }
            con = new SqlConnection("Data Source = WIN-QT7KGL9HG25\\SQLEXPRESS;" +
            "Initial Catalog = AvtaleDatabase;" +
            "User Id=dbUser;" + "Password=Bachelor2016;");
        }

        protected void SubmitKnapp_Click(object sender, EventArgs e)
        {
            SqlCommand ins = new SqlCommand("LagNyLokasjon", con);
            ins.CommandType = CommandType.StoredProcedure;
            ins.Parameters.AddWithValue("@Lokasjon", LokasjonText.Text);
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