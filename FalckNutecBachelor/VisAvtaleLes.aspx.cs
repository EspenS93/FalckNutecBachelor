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

    }
}