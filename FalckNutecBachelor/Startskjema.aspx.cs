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
    public partial class Startskjema : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!WebSecurity.IsAuthenticated)
            {
                Response.Redirect("Login");
            }
            else
            {
                if (!Roles.IsUserInRole("Writer"))
                {
                    //ACCESS DENIED SIDE
                    Response.Redirect("Startskjema");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        }


        protected void OnRowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
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
    }
}