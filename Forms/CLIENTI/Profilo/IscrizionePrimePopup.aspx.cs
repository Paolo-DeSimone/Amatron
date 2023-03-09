using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InscrizionePrimePopup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CONFIG CONF = new CONFIG();
        DataTable PRIME = CONF.SelectAll();
        lblPrimepopup.Text = PRIME.Rows[0]["COSTOPRIME"].ToString();
    }

    protected void btnIscriviti_Click(object sender, EventArgs e)
    {
        CLIENTI C = new CLIENTI();
        C.chiave = int.Parse(Session["chiaveUSR"].ToString());
        C.CLIENTI_Prime();
    }
}