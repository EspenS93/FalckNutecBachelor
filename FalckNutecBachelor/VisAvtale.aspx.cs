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


        protected void updateAvtale()
        {
            SqlCommand upd = new SqlCommand("UpdateAvtale", con);
            upd.CommandType = CommandType.StoredProcedure;
            upd.Parameters.AddWithValue("@Navn", ((TextBox)DataList1.Items[0].FindControl("NavnLabel")).Text);
            upd.Parameters.AddWithValue("@AvtaleType", ((DropDownList)DataList1.Items[0].FindControl("AvtaleTypeLabel")).SelectedValue);
            upd.Parameters.AddWithValue("@Kategori", ((DropDownList)DataList1.Items[0].FindControl("KategoriLabel")).SelectedValue);
            upd.Parameters.AddWithValue("@Finansieringsselskap", ((DropDownList)DataList1.Items[0].FindControl("FinansieringsselskapLabel")).SelectedValue);
            upd.Parameters.AddWithValue("@Leverandør", ((DropDownList)DataList1.Items[0].FindControl("LeverandørLabel")).SelectedValue);
            upd.Parameters.AddWithValue("@Ansvarlig", ((DropDownList)DataList1.Items[0].FindControl("AnsvarligLabel")).SelectedValue);
            upd.Parameters.AddWithValue("@Lokasjon", ((DropDownList)DataList1.Items[0].FindControl("LokasjonLabel")).SelectedValue);
            upd.Parameters.AddWithValue("@Status", ((DropDownList)DataList1.Items[0].FindControl("StatusLabel")).SelectedValue);
            upd.Parameters.AddWithValue("@StartDato", ((TextBox)DataList1.Items[0].FindControl("StartDatoLabel")).Text);
            upd.Parameters.AddWithValue("@SluttDato", ((TextBox)DataList1.Items[0].FindControl("SluttDatoLabel")).Text);
            upd.Parameters.AddWithValue("@Registrert_AvLabel", ((TextBox)DataList1.Items[0].FindControl("AnsattRegistrertLabel")).Text);
            upd.Parameters.AddWithValue("@FornyAuto", ((TextBox)DataList1.Items[0].FindControl("FornyAutoLabel")).Text);
            upd.Parameters.AddWithValue("@Frist", ((TextBox)DataList1.Items[0].FindControl("FristLabel")).Text);
            upd.ExecuteNonQuery();
        }

        protected void MemoKnapp_Click(object sender, EventArgs e)
        {
            Label avtale = (Label)DataList1.Items[0].FindControl("BeskrivelseLabel");
            SqlCommand ins = new SqlCommand("LagNyMemo", con);
            ins.CommandType = CommandType.StoredProcedure;
            ins.Parameters.AddWithValue("@Avtale",avtale.Text);
            ins.Parameters.AddWithValue("@AnsattID", (int)WebSecurity.CurrentUserId);
            ins.Parameters.AddWithValue("@Memo", SkrivMemo.Text);
            con.Open();
            try
            {
                ins.ExecuteNonQuery();
                memo.DataBind();
            }
            catch (SqlException sqlEX)
            {

                throw;
            }
            con.Close();
        }

        protected void DownloadFile(object sender, EventArgs e)
        {
            int id = int.Parse((sender as LinkButton).CommandArgument);
            byte[] bytes;
            string fileName, contentType;
            using (con)
            {
                using (SqlCommand cmd = new SqlCommand("HentEnPDF",con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@ID", id);
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        sdr.Read();
                        bytes = (byte[])sdr["Fil"];
                        contentType = sdr["ContentType"].ToString();
                        fileName = sdr["Navn"].ToString();
                    }
                    con.Close();
                }
            }
            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = contentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);
            Response.BinaryWrite(bytes);
            Response.Flush();
            Response.End();
        }

        protected void EndreKnapp_Click(object sender, EventArgs e)
        {
        
            con.Open();
            try
            {
                updateAvtale();
                Melding.Visible = true;
                Melding.Text = "Endringen er fullført";
            }
            catch (SqlException SQLEX)
            {
                throw;
            }
        }

        protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            EndreKnapp.Visible = true;
        }

    }
 }