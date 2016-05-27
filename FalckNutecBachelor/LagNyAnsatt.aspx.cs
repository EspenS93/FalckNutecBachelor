using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FalckNutecBachelor
{
    public partial class LagNyBruker : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("");
            con.ConnectionString =
            "Data Source = WIN-QT7KGL9HG25\\SQLEXPRESS;" +
            "Initial Catalog = AvtaleDatabase;" +
            "User Id=dbUser;" + "Password=Bachelor2016;";

            con.Open();

            SqlCommand ins = new SqlCommand("INSERT INTO Ansatte"+
"(Fornavn, Etternavn, Mail, Vara1, Vara2, RolleID, SeksjonID)"+
"SELECT        '@Fornavn', '@Etternavn', '@Mail', A1.ID, A2.ID, Rolle.ID, Seksjoner.ID"+
"FROM            Rolle, Ansatte AS A1, Ansatte AS A2, Seksjoner"+
"WHERE A1.Fornavn = '@Vara1' AND A2.Fornavn = '@Vara2' AND Rolle.Rolle = '@Rolle' AND Seksjoner.Seksjon = '@Seksjon'", con);

            ins.Parameters.AddWithValue("@Fornavn", TextBox1.Text);
            ins.Parameters.AddWithValue("@Etternavn", TextBox2.Text);
            ins.Parameters.AddWithValue("@Mail", TextBox3.Text);
            ins.Parameters.AddWithValue("@Vara1", DropDownList1.Text);
            ins.Parameters.AddWithValue("@Vara2", DropDownList2.Text);
            ins.Parameters.AddWithValue("@Rolle", DropDownList3.Text);
            ins.Parameters.AddWithValue("@Seksjon", DropDownList4.Text);

            ins.ExecuteNonQuery();
            con.Close();
        }
    }
}