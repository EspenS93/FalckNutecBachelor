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
    public partial class LagNyBruker : System.Web.UI.Page
    {
        //Mangler exceptions
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand ins = new SqlCommand("LagNyBruker",con);
            ins.CommandType = CommandType.StoredProcedure;
            ins.Parameters.AddWithValue("@NOnr", TextBox1.Text);
            ins.Parameters.AddWithValue("@Passord", TextBox2.Text);
            ins.Parameters.AddWithValue("@AnsattNavn", DropDownList1.Text);
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