using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMatrix.WebData;

namespace FalckNutecBachelor
{
	public partial class LagNyAvtale : Page
	{
            //Mangler exceptions
        SqlConnection con;
        string dato;
        protected void upload()
        {
            foreach (HttpPostedFile postedFile in pdf.PostedFiles)
            {
                Stream fs = postedFile.InputStream;
                BinaryReader br = new BinaryReader(fs);
                Byte[] bytes = br.ReadBytes((Int32)fs.Length);

                SqlCommand ins1 = new SqlCommand("LeggTilPDF", con);
                ins1.CommandType = CommandType.StoredProcedure;
                ins1.Parameters.AddWithValue("@AvtaleNavn", NavnText.Text);
                ins1.Parameters.AddWithValue("@Fil", bytes);
                ins1.Parameters.AddWithValue("@PDFNavn", Path.GetFileName(postedFile.FileName));
                ins1.ExecuteNonQuery();
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!WebSecurity.IsAuthenticated)
            {
                Response.Redirect("Login");
            }
            con = new SqlConnection("Data Source = WIN-QT7KGL9HG25\\SQLEXPRESS;" +
            "Initial Catalog = AvtaleDatabase;" +
            "User Id=dbUser;" + "Password=Bachelor2016;");
            
        }
        protected void KalenderTrykk(object sender, EventArgs e) // FUNKER IKKE
        {
            if (dato=="Start")
            {
                StartDatoText.Text = Calendar1.SelectedDate.ToString();
            }else
            {
                SluttDatoText.Text = Calendar1.SelectedDate.ToShortDateString();
            }
            Calendar1.Visible = false;
        }
        protected void SubmitKnapp_Click(object sender, EventArgs e)
        {
            SqlCommand ins = new SqlCommand("LagNyAvtale", con);
            ins.CommandType = CommandType.StoredProcedure;
            ins.Parameters.AddWithValue("@Beskrivelse", NavnText.Text);
            ins.Parameters.AddWithValue("@AvtaleType", DropDownList1.Text);
            ins.Parameters.AddWithValue("@Kategori", DropDownList2.Text);
            ins.Parameters.AddWithValue("@Finansieringsselskap", DropDownList3.Text);
            ins.Parameters.AddWithValue("@Leverandør", DropDownList4.Text);
            ins.Parameters.AddWithValue("@Ansvarlig", DropDownList5.Text);
            ins.Parameters.AddWithValue("@Lokasjon", DropDownList6.Text);
            ins.Parameters.AddWithValue("@Status", StatusList.Text);
            ins.Parameters.AddWithValue("@StartDato", Calendar1.SelectedDate);
            ins.Parameters.AddWithValue("@SluttDato", Calendar1.SelectedDate);
            ins.Parameters.AddWithValue("@Ansatt", WebSecurity.CurrentUserName);
            ins.Parameters.AddWithValue("@Forny", CheckBox1.Checked);
            SqlCommand ins2 = new SqlCommand("LagNyMemo", con);
            ins2.CommandType = CommandType.StoredProcedure;
            ins2.Parameters.AddWithValue("@Avtale", NavnText.Text);
            ins2.Parameters.AddWithValue("@AnsattID", (int)WebSecurity.CurrentUserId);
            ins2.Parameters.AddWithValue("@Memo", SkrivMemo.Text);

            //PDF
            
            con.Open();
            try
            {
                ins.ExecuteNonQuery();
                if (SkrivMemo.Text != null) { 
                    ins2.ExecuteNonQuery();
                 }
                if (pdf.HasFiles)
                {
                    upload();
                }
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

        protected void KalenderKnapp_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
            dato = "Start";
        }
        protected void KalenderKnapp2_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
            dato = "Slutt";
        }
    }
}