﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FalckNutecBachelor
{
	public partial class LagNyAvtale : System.Web.UI.Page
	{
            //Mangler exceptions
            SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source = WIN-QT7KGL9HG25\\SQLEXPRESS;" +
            "Initial Catalog = AvtaleDatabase;" +
            "User Id=dbUser;" + "Password=Bachelor2016;");
        }
        protected void SubmitKnapp_Click(object sender, EventArgs e)
        {
            SqlCommand ins = new SqlCommand("LagNyAvtale", con);
            ins.CommandType = CommandType.StoredProcedure;
            ins.Parameters.AddWithValue("@navn", NavnText.Text);
            ins.Parameters.AddWithValue("@Arkivreferat", ArkivRef.Text);
            ins.Parameters.AddWithValue("@Arkivmappe", ArkivMappe.Text);
            ins.Parameters.AddWithValue("@Avtale", DropDownList1.Text);
            ins.Parameters.AddWithValue("@Kategori", DropDownList2.Text);
            ins.Parameters.AddWithValue("@Beskrivelse", Beskrivelse.Text);
            ins.Parameters.AddWithValue("@Finansieringsselskap", DropDownList3.Text);
            ins.Parameters.AddWithValue("@Leverandør", DropDownList4.Text);
            ins.Parameters.AddWithValue("@Ansvarlig", DropDownList5.Text);
            ins.Parameters.AddWithValue("@Lokasjon", DropDownList6.Text);
            ins.Parameters.AddWithValue("@Status", Status.Text);
            ins.Parameters.AddWithValue("@StartDato", Calendar1.SelectedDate);
            ins.Parameters.AddWithValue("@SluttDato", Calendar1.SelectedDate);
            ins.Parameters.AddWithValue("@Ansatt", DropDownList7.Text);
            ins.Parameters.AddWithValue("@Forny", CheckBox1.Checked);

            SqlCommand ins2 = new SqlCommand("LeggInnPDF", con);
            ins2.CommandType = CommandType.StoredProcedure;
            ins2.Parameters.AddWithValue("@Navn",NavnText.Text);
            ins2.Parameters.AddWithValue("@Fil",pdf.PostedFile);
            con.Open();
            try
            {
                ins.ExecuteNonQuery();
                ins2.ExecuteNonQuery();
                svar.Visible = true;
                svar.ForeColor = System.Drawing.Color.Red;
                svar.Text = "*" + NavnText.Text + " er lagt til*";

            }
            catch (SqlException sqlEX)
            {

                throw;
            }

            con.Close();
        }
    }
}