using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
using System.Web.UI.WebControls;
using WebMatrix.WebData;

namespace FalckNutecBachelor
{
    public partial class VisLeverandør : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!WebSecurity.IsAuthenticated)
            {
                Response.Redirect("Login");
            }
            else
            {
                if (Roles.IsUserInRole("Reader"))
                {
                    //ACCESS DENIED SIDE
                    Response.Redirect("StartskjemaLes");
                }
            }
            con = new SqlConnection("Data Source = WIN-QT7KGL9HG25\\SQLEXPRESS;" +
             "Initial Catalog = AvtaleDatabase;" +
             "User Id=dbUser;" + "Password=Bachelor2016;");
        }
        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            EndreKnapp.Visible = true;
        }
        protected void updateFinansieringsselskap()
        {
            SqlCommand upd = new SqlCommand("UpdateLev", con);
            upd.CommandType = CommandType.StoredProcedure;
            upd.Parameters.AddWithValue("@id", int.Parse(Request.QueryString["LeverandørID"].ToString()));
            upd.Parameters.AddWithValue("@navn", ((TextBox)DataList1.Items[0].FindControl("NavnLabel")).Text);
            upd.Parameters.AddWithValue("@underlev", int.Parse(((DropDownList)DataList1.Items[0].FindControl("UnderleverandørAvLabel")).SelectedValue));
            upd.Parameters.AddWithValue("@orgnr", int.Parse(((TextBox)DataList1.Items[0].FindControl("OrganisasjonsnrLabel")).Text));
            upd.Parameters.AddWithValue("@adresse", ((TextBox)DataList1.Items[0].FindControl("AdresseLabel")).Text);
            upd.Parameters.AddWithValue("@post", ((TextBox)DataList1.Items[0].FindControl("PostadresseLabel")).Text);
            upd.Parameters.AddWithValue("@kontakt", ((TextBox)DataList1.Items[0].FindControl("KontaktpersonLabel")).Text);
            upd.Parameters.AddWithValue("@tele", ((TextBox)DataList1.Items[0].FindControl("TelefonnrLabel")).Text);
            upd.Parameters.AddWithValue("@faks", ((TextBox)DataList1.Items[0].FindControl("TelefaksLabel")).Text);
            upd.Parameters.AddWithValue("@epost", ((TextBox)DataList1.Items[0].FindControl("EpostLabel")).Text);
            upd.ExecuteNonQuery();
        }
        protected void EndreKnapp_Click(object sender, EventArgs e)
        {
            con.Open();
            try
            {
                updateFinansieringsselskap();
                Melding.Visible = true;
                Melding.Text = "Endringen er fullført";
            }
            catch (SqlException SQLEX)
            {
                throw;
            }
        }
    }
}