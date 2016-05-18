using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Odbc;

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


            /*OdbcConnection con = new OdbcConnection();
            con.ConnectionString = "Data Source=WIN-QT7KGL9HG25\\SQLEXPRESS;Database=AvtaleDatabase; User Id=dbUser; Password=Bachelor2016;";

            con.Open();


            string sql = "insert into Seksjoner values(@SeksjonsID, @Seksjon)";
            OdbcCommand cmd = new OdbcCommand(sql);
            string SeksjonsID = TextBox1.Text;
            string Seksjon = TextBox2.Text;
            cmd.Connection = con;

            cmd.CommandText = "insert into Seksjoner(SeksjonsID,Seksjon) values('" + SeksjonsID + "','" + Seksjon + "' )";

            cmd.ExecuteNonQuery();


            con.Close();


            TextBox1.Text = "";
            TextBox2.Text = "";
  
            TextBox1.Focus();*/
            
            //Denne funker, men mangler exception catcher
            SqlConnection con = new SqlConnection("");
            con.ConnectionString = 
            "Data Source = WIN-QT7KGL9HG25\\SQLEXPRESS;" +
            "Initial Catalog = AvtaleDatabase;" +
            "User Id=dbUser;"+"Password=Bachelor2016;";

            con.Open();

            SqlCommand ins = new SqlCommand("INSERT INTO Seksjoner(ID, Seksjon) values(@SeksjonsID, @Seksjon)", con);

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