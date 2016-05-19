using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Oving1
{
    public partial class Registrering : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            if (RB_Start.Checked)
            {
                LabelStartDato.Text = Calendar1.SelectedDate.Date.ToShortDateString();
            }
            if (RB_Slutt.Checked)
            {
                LabelSluttDato.Text = Calendar1.SelectedDate.Date.ToShortDateString();
            }
            if (LabelStartDato.Text.Length > 0 && LabelSluttDato.Text.Length > 0)
            {
                Date_Check();
            }  
        }
        
         protected void Date_Check()
        {
            if ((Convert.ToDateTime(LabelStartDato.Text)) > (Convert.ToDateTime(LabelSluttDato.Text)))
            {
                LabelMelding.Text = "Start dato kan ikke være før slutt dato!";
            }
        } 
    }

    
}

