using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ViragMilos
{
    public partial class izvestaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
                labela.Text = PreviousPage.ime + " (" +
                    PreviousPage.mejl + "), rođen   " +PreviousPage.godina  + "godine  " + "učenik "+ PreviousPage.razred + "razreda ,"+"uspešno je popunio obrazac...";
        }
    }
}