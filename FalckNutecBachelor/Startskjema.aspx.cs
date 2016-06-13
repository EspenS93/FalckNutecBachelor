using System;
using System.Drawing;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMatrix.WebData;


namespace FalckNutecBachelor
{
    public partial class Startskjema : Page
    {
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
                else if (Roles.IsUserInRole("Admin"))
                {
                    Response.Redirect("AdminSkjema");
                }
            }
        }
        protected void VisListe_SelectedIndexChanged(object sender, EventArgs e)
        {
            VisButton1.PostBackUrl = "VisFinansieringsselskap.aspx?FinansieringsselskapID=" + VisListe1.SelectedValue;
        }
        protected void VisListe2_SelectedIndexChanged(object sender, EventArgs e)
        {
            VisButton2.PostBackUrl = "VisLeverandør.aspx?LeverandørID=" + VisListe2.SelectedValue;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        }


        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(avtaler2, "Select$" + e.Row.RowIndex);
                e.Row.ToolTip = "Click to select this row.";
            }
        }

        protected void avtaler2_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow row in avtaler2.Rows)
            {
                if (row.RowIndex == avtaler2.SelectedIndex)
                {
                    row.BackColor = ColorTranslator.FromHtml("#A1DCF2");
                    row.ToolTip = string.Empty;
                }
                else
                {
                    row.BackColor = ColorTranslator.FromHtml("#FFFFFF");
                    row.ToolTip = "Click to select this row.";
                }
            }
        }
        protected void AvtaleKnapp_Click(object sender, EventArgs e)
        {
            if (avtaler2.SelectedRow != null)
            {
                Response.Redirect("VisAvtale.aspx?AvtaleID=" + avtaler2.SelectedRow.Cells[0].Text);
            }
        }
        protected void apneSokeFelt_Click(object sender, EventArgs e)
        {
            apneSokeFelt.Visible = false;
            DropDownList3.Visible = true;
            DropDownList4.Visible = true;
            DropDownList5.Visible = true;
            DropDownList6.Visible = true;
            DropDownList3.Visible = true;
            DropDownList3.Visible = true;
            AlleCheckbox.Visible = true;
            lukkeSokeFelt.Visible = true;
        }
        protected void lukkeSokeFelt_Click(object sender, EventArgs e)
        {
            apneSokeFelt.Visible = true;
            DropDownList3.Visible = false;
            DropDownList4.Visible = false;
            DropDownList5.Visible = false;
            DropDownList6.Visible = false;
            DropDownList3.Visible = false;
            DropDownList3.Visible = false;
            AlleCheckbox.Visible = false;
            lukkeSokeFelt.Visible = false;
        }

        protected void AlleCheckbox_CheckedChanged(object sender, EventArgs e)
        {
            /* if (AlleCheckbox.Checked)
             {
                 avtaler2.DataSourceID = "SqlDataSource1";
                 avtaler2.DataBind();
             }
             else
             {
                //SqlDataSource4.SelectParameters.Clear();
               // SqlDataSource4.SelectParameters.Add("@AnsattID", WebSecurity.CurrentUserId.ToString());
                 avtaler2.DataSourceID = "SqlDataSource4";
                 avtaler2.DataBind();
             }*/
        }
    }
}