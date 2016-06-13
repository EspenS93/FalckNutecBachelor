using System;
using System.Data;
using System.Data.SqlClient;


namespace FalckNutecBachelor
{
	public partial class LagNyFinansieringsselskap : System.Web.UI.Page
	{
        //Mangler exceptions
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!WebSecurity.IsAuthenticated)
            {
                Response.Redirect("Login");
            }
            con = new SqlConnection("Data Source = WIN-QT7KGL9HG25\\SQLEXPRESS;" +
            "Initial Catalog = AvtaleDatabase;" +
            "User Id=dbUser;" + "Password=Bachelor2016;");
        }

        protected void SubmitKnapp_Click(object sender, EventArgs e)
        {
            SqlCommand ins = new SqlCommand("LagNyFinansieringsselskap", con);
            ins.CommandType = CommandType.StoredProcedure;
            ins.Parameters.AddWithValue("@Navn", NavnText.Text);
            ins.Parameters.AddWithValue("@Adresse", AdresseText.Text);
            ins.Parameters.AddWithValue("@Postadresse", PostadresseText.Text);
            ins.Parameters.AddWithValue("@KontaktPerson", KontaktText.Text);
            ins.Parameters.AddWithValue("@Telefonnr", TLFText.Text);
            ins.Parameters.AddWithValue("@TeleFaksnr", FaksText.Text);
            ins.Parameters.AddWithValue("@Epost", EpostText.Text);
            con.Open();
            try
            {
                ins.ExecuteNonQuery();
                svar.Visible = true;
                svar.Text = NavnText.Text + " er lagt til";
            }
            catch (SqlException sqlEX)
            {

                throw;
            }
            con.Close();
        }
    }
}