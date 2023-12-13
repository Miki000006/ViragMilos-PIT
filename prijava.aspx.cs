using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ViragMilos
{
    public partial class prijava : System.Web.UI.Page
    {
        public string ime { get { return txtPrezimeIme.Text; } }
        public string mejl { get { return txtEmail.Text; } }
        public string godina { get { return txtGodiste.Text; } }
        public string razred { get { return rblPol.Text; } }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtPrezimeImeValidator.IsValid
                && txtEmailValidator.IsValid
                && txtEmailExpressionValidator.IsValid
                && txtPotvrdaValidator.IsValid
                && PoredjenjeValidator.IsValid
                && txtGodisteValidator.IsValid
                && txtGodisteOpsegValidator.IsValid
                && rblPolValidator.IsValid)
            {
                lblPoruka.Text = "Uspesno";
                btnPrijava.PostBackUrl = "izvestaj.aspx";
            }
            else
                lblPoruka.Text = "Nije Uspesno";
        }
    }
}