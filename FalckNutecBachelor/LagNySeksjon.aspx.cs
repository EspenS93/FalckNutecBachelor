﻿using System;
using System.Data.SqlClient;
using System.Drawing;
using System.Data;
using System.Web.Security;
using WebMatrix.WebData;


namespace FalckNutecBachelor
{
    public partial class LagNySeksjon : System.Web.UI.Page
    {   //Trenger flere exceptions
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {/*
            if (Page.IsPostBack == true)
            {
                Label1.Text = ("Din data er nå sendt.");
            }*/
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
            SqlCommand ins = new SqlCommand("LagNySeksjon", con);
            ins.CommandType = CommandType.StoredProcedure;
            ins.Parameters.AddWithValue("@ID", TextBox1.Text);
            ins.Parameters.AddWithValue("@Seksjon", TextBox2.Text);
            con.Open();
            try
            {
                ins.ExecuteNonQuery();
                svar.Visible = true;
                svar.Text = TextBox1.Text + " er lagt til";
            }
            catch(SqlException sqlEX){
                if (sqlEX.Message.StartsWith("Violation of PRIMARY KEY constraint"))
                {
                    svar.Text = "*Invalid ID*";
                    svar.ForeColor = Color.Red;
                    svar.Visible = true;
                }
                else
                    throw;
            }
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