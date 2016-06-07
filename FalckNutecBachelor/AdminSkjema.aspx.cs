using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMatrix.WebData;

namespace FalckNutecBachelor
{

    public partial class AdminSkjema : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!WebSecurity.IsAuthenticated){
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
        protected void LagNyListe_SelectedIndexChanged(object sender, EventArgs e)
        {
            LagNyButton.PostBackUrl =LagNyListe.SelectedValue + ".aspx";
        }
        protected void VisListe_SelectedIndexChanged(object sender, EventArgs e)
        {
            VisButton.PostBackUrl =LagNyListe.SelectedValue+".aspx";
        }

        protected void AvtaleKnapp_Click(object sender, EventArgs e)
        {
            if (avtaler2.SelectedRow != null)
            {
                Response.Redirect("VisAvtale.aspx?AvtaleID="+avtaler2.SelectedRow.Cells[0].Text);
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
    }
}