using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMatrix.WebData;

namespace FalckNutecBachelor
{
    public partial class VisAvtale : System.Web.UI.Page
    {
        /*
         using (SqlConnection connection = new SqlConnection(ConnectionString())
  using (SqlCommand cmd = new SqlCommand(updateStatement, connection)) {
    connection.Open();
    cmd.Parameters.Add(new SqlParameter("@Name", userName));
    cmd.Parameters.Add(new SqlParameter("@city", city));
    cmd.Parameters.Add(new SqlParameter("@UserId", userID));
    cmd.ExecuteNonQuery();*/

        SqlConnection con;
protected void Page_Load(object sender, EventArgs e)
        {/*
            if (!WebSecurity.IsAuthenticated)
            {
                Response.Redirect("Login");
            }*/
            con = new SqlConnection("Data Source = WIN-QT7KGL9HG25\\SQLEXPRESS;" +
            "Initial Catalog = AvtaleDatabase;" +
            "User Id=dbUser;" + "Password=Bachelor2016;");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FormView1.ChangeMode(FormViewMode.Edit);

            try
            {
                SqlDataSource1.Update();
            }
            catch (Exception except)
            {
                // Handle the Exception.
            }

            Label2.Text = "The record was updated successfully!";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            FormView1.ChangeMode(FormViewMode.Insert);
         

            try
            {
                SqlDataSource1.Update();
            }
            catch (Exception except)
            {
                // Handle the Exception.
            }

            Label2.Text = "The record was updated successfully!";
        }
    }
}