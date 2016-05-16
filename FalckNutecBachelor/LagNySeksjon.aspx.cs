using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FalckNutecBachelor
{
    public partial class LagNySeksjon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {/*
            if (Page.IsPostBack == true)
            {
                Label1.Text = ("Din data er nå sendt.");
            }*/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("");
            con.ConnectionString = 
            "Data Source = WIN - QT7KGL9HG25\\SQLEXPRESS;" +
            "Initial Catalog = AvtaleDatabase;" +
            "Integrated Security = True;";

            con.Open();

            SqlCommand ins = new SqlCommand("INSERT INTO Seksjoner(SeksjonsID, Seksjon) values(@SeksjonsID, @Seksjon)", con);

            ins.Parameters.AddWithValue("@SeksjonsID", TextBox1.Text);
            ins.Parameters.AddWithValue("@Seksjon", TextBox1.Text);

            ins.ExecuteNonQuery();
            con.Close();
            /*
            if (IsPostBack)
            {
                TextBox1.Text = ("");
                TextBox2.Text = ("");
            }*/
        }
    }
}