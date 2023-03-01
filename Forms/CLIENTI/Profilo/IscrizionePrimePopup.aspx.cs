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

    }

    protected void btnIscriviti_Click(object sender, EventArgs e)
    {
        CLIENTI C= new CLIENTI();
        C.chiave = int.Parse(Session["chiaveUSR"].ToString());
        C.CLIENTI_Prime();
    }
}