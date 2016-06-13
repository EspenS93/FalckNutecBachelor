using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using WebMatrix.WebData;


namespace FalckNutecBachelor
{
    public partial class AdministrereBruker : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!WebSecurity.IsAuthenticated)
            {
                Response.Redirect("Login");
            }
            if(WebSecurity.CurrentUserId.ToString()!=Request.QueryString["AnsattID"]){
                //access denied
                Response.Redirect("Login");
            }
            // SqlDataSource1.SelectParameters.Add("@AnsattID", WebSecurity.CurrentUserId.ToString());
            con = new SqlConnection("Data Source = WIN-QT7KGL9HG25\\SQLEXPRESS;" +
             "Initial Catalog = AvtaleDatabase;" +
             "User Id=dbUser;" + "Password=Bachelor2016;");
        }
        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            EndreKnapp.Visible = true;
        }

        protected void updateAnsatt()
        {
            SqlCommand upd = new SqlCommand("UpdateAnsatt", con);
            upd.CommandType = CommandType.StoredProcedure;
            upd.Parameters.AddWithValue("@NOnr", ((Label)DataList1.Items[0].FindControl("NOnrLabel")).Text);
            upd.Parameters.AddWithValue("@Fornavn", ((Label)DataList1.Items[0].FindControl("FornavnLabel")).Text);
            upd.Parameters.AddWithValue("@Etternavn", ((Label)DataList1.Items[0].FindControl("EtternavnLabel")).Text);
            upd.Parameters.AddWithValue("@Mail", ((TextBox)DataList1.Items[0].FindControl("MailLabel")).Text);
            upd.Parameters.AddWithValue("@Vara1", ((DropDownList)DataList1.Items[0].FindControl("Fornavn1Label")).SelectedValue);
            upd.Parameters.AddWithValue("@Vara2", ((DropDownList)DataList1.Items[0].FindControl("Fornavn2Label")).SelectedValue);
            upd.Parameters.AddWithValue("@Seksjon",((DropDownList) DataList1.Items[0].FindControl("SeksjonLabel")).SelectedValue);
            upd.ExecuteNonQuery();
        }
        protected void updatePassword()
        {
            WebSecurity.ChangePassword(WebSecurity.CurrentUserName, pass.Text, NyPass2.Text);
        }
        protected void EndreKnapp_Click(object sender, EventArgs e)
        {
            con.Open();
            try
            {
                updateAnsatt();
                updatePassword();
                Melding.Visible = true;
                Melding.Text = "Endringen er fullført";
            }catch(SqlException SQLEX)
            {
                throw;
            }
        }
    }
}