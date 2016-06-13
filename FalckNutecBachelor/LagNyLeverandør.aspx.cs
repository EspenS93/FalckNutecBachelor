using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMatrix.WebData;

namespace FalckNutecBachelor
{
	public partial class LagNyLeverandør : System.Web.UI.Page
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
            SqlCommand ins = new SqlCommand("LagNyLeverandør", con);
            ins.CommandType = CommandType.StoredProcedure;
            ins.Parameters.AddWithValue("@Navn", NavnText.Text);
            ins.Parameters.AddWithValue("@Underleverandør", int.Parse(ULevDDL.SelectedValue));
            ins.Parameters.AddWithValue("@Organisasjonsnr", int.Parse(OrgNrText.Text));
            ins.Parameters.AddWithValue("@Adresse", AdresseText.Text);
            ins.Parameters.AddWithValue("@PostAdresse", PostText.Text);
            ins.Parameters.AddWithValue("@Kontaktperson", KontaktText.Text);
            ins.Parameters.AddWithValue("@Telefonnr", TLFText.Text);
            ins.Parameters.AddWithValue("@Telefaks", FaxText.Text);
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

        protected void NavnText_TextChanged(object sender, EventArgs e)
        {

        }
    }
}