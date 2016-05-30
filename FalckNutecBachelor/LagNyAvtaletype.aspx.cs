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
	public partial class LagNyAvtaletype : System.Web.UI.Page
	{
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand ins = new SqlCommand("LagNyAvtaleType", con);
            ins.CommandType = CommandType.StoredProcedure;
            ins.Parameters.AddWithValue("@AvtaleType", TextBox1.Text);
            con.Open();
            try
            {
                ins.ExecuteNonQuery();
                svar.Visible = true;
                svar.Text = TextBox1.Text + " er lagt til";
            }
            catch (SqlException sqlEX)
            {

                throw;
            }
            con.Close();
        }
    }
}