using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
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
            con = new SqlConnection("Data Source = WIN-QT7KGL9HG25\\SQLEXPRESS;" +
            "Initial Catalog = AvtaleDatabase;" +
            "User Id=dbUser;" + "Password=Bachelor2016;");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand ins = new SqlCommand("LagNyAnsatt",con);
            ins.CommandType = CommandType.StoredProcedure;
            ins.Parameters.AddWithValue("@Fornavn", TextBox1.Text);
            ins.Parameters.AddWithValue("@Etternavn", TextBox2.Text);
            ins.Parameters.AddWithValue("@Mail", TextBox3.Text);
            ins.Parameters.AddWithValue("@Vara1", DropDownList1.Text);
            ins.Parameters.AddWithValue("@Vara2", DropDownList2.Text);
            ins.Parameters.AddWithValue("@Rolle", DropDownList3.Text);
            ins.Parameters.AddWithValue("@Seksjon", DropDownList4.Text);
            con.Open();
            try
            {
                ins.ExecuteNonQuery();
            }
            catch (SqlException sqlEX)
            {

                throw;
            }
                con.Close();
        }
    }
}