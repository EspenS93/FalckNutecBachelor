using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
using WebMatrix.WebData;


namespace FalckNutecBachelor
{
    public partial class LagNyAnsatt : System.Web.UI.Page
    {
        //Mangler exceptions
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand ins = new SqlCommand("LagNyAnsatt",con);
            ins.CommandType = CommandType.StoredProcedure;
            ins.Parameters.AddWithValue("@NOnr", TextBox1.Text);
            ins.Parameters.AddWithValue("@Fornavn", TextBox3.Text);
            ins.Parameters.AddWithValue("@Etternavn", TextBox4.Text);
            ins.Parameters.AddWithValue("@Mail", TextBox5.Text);
            ins.Parameters.AddWithValue("@Vara1", DropDownList1.Text);
            ins.Parameters.AddWithValue("@Vara2", DropDownList2.Text);
            ins.Parameters.AddWithValue("@Seksjon", DropDownList4.Text);
            SqlCommand ins2 = new SqlCommand("LeggTilRolle", con);
            ins2.CommandType = CommandType.StoredProcedure;
            ins2.Parameters.AddWithValue("@NOnr", TextBox1.Text);
            ins2.Parameters.AddWithValue("@Rolle", DropDownList3.Text);
            con.Open();
            try
            {
                ins.ExecuteNonQuery();
                WebSecurity.CreateAccount(TextBox1.Text, TextBox2.Text);
                ins2.ExecuteNonQuery();
                svar.Visible = true;
                svar.Text ="Ansatt: "+TextBox3.Text +" "+TextBox4.Text +" er lagt til";
            }
            catch (SqlException sqlEX)
            {
                throw;
            }
                con.Close();
        }
    }
}