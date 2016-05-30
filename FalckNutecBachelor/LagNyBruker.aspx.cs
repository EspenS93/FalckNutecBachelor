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
    public partial class LagNyBruker : System.Web.UI.Page
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
            try
            {
                WebSecurity.CreateAccount(DropDownList1.Text, TextBox2.Text, false);
                svar.Visible = true;
                svar.Text = DropDownList1.Text + " er lagt til";
                WebSecurity.CreateAccount(DropDownList1.Text, TextBox2.Text, false);


            }
            catch (SqlException sqlEX)
            {

                throw;
            }
                con.Close();
        }
    }
}