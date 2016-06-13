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
        protected void LagMemo()
        {
            SqlCommand ins = new SqlCommand("LagNyMemo", con);
            ins.CommandType = CommandType.StoredProcedure;
            ins.Parameters.AddWithValue("@Avtale", NavnText.Text);
            ins.Parameters.AddWithValue("@AnsattID", (int)WebSecurity.CurrentUserId);
            ins.Parameters.AddWithValue("@Memo", SkrivMemo.Text);
            try
            {
                ins.ExecuteNonQuery();
            }
            catch (SqlException sqlEX)
            {
                throw;
            }
        }
        protected void upload()
        {
            foreach (HttpPostedFile postedFile in pdf.PostedFiles)
            {
                Stream fs = postedFile.InputStream;
                BinaryReader br = new BinaryReader(fs);
                Byte[] bytes = br.ReadBytes((Int32)fs.Length);

                SqlCommand ins = new SqlCommand("LeggTilPDF", con);
                ins.CommandType = CommandType.StoredProcedure;
                ins.Parameters.AddWithValue("@AvtaleNavn", NavnText.Text);
                ins.Parameters.AddWithValue("@Fil", bytes);
                ins.Parameters.AddWithValue("@PDFNavn", postedFile.FileName);
                ins.Parameters.AddWithValue("@ContentType", postedFile.ContentType);
                try
                {
                    ins.ExecuteNonQuery();
                }
                catch (SqlException sqlEX)
                {
                    throw;
                }
            }

        }
        protected void LagAvtale()
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
            ins.Parameters.AddWithValue("@StartDato", Calendar1.SelectedDate.ToShortDateString());
            ins.Parameters.AddWithValue("@SluttDato", Calendar2.SelectedDate.ToShortDateString());
            ins.Parameters.AddWithValue("@Ansatt", WebSecurity.CurrentUserName);
            ins.Parameters.AddWithValue("@Forny", CheckBox1.Checked);
            ins.Parameters.AddWithValue("@Frist", int.Parse(FristText.Text));
            try
            {
                ins.ExecuteNonQuery();
            }
            catch (SqlException sqlEX)
            {
                throw;
            }
        }
        protected void SubmitKnapp_Click(object sender, EventArgs e)
        {
                
            con.Open();
            try
            {
                LagAvtale();
                if (SkrivMemo.Text != null)
                {
                    LagMemo();
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
            Calendar2.Visible = false;
            Calendar1.Visible = true;
        }
        protected void KalenderKnapp2_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = false;
            Calendar2.Visible = true;
        }
        protected void KalenderTrykk1(object sender, EventArgs e) // FUNKER IKKE
        {
            StartDatoText.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }
        protected void KalenderTrykk2(object sender, EventArgs e) // FUNKER IKKE
        {
            SluttDatoText.Text = Calendar2.SelectedDate.ToShortDateString();
            Calendar2.Visible = false;
        }
    }
}