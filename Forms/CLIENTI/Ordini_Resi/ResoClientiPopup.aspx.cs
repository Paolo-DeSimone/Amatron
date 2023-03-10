using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ResoClientiPopup : System.Web.UI.Page
{
    public static string chiaveordine;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["chiaveUSR"].ToString();
    }
    protected void btnReso_Click(object sender, EventArgs e)
    {
        if (txtDescrizione.Text.Trim() == "" || txtQta.Text.Trim() == "")
        {
            string script = "notifyError('Inserire i campi richiesti per effettuare il reso');";
            ScriptManager.RegisterStartupScript(this, GetType(), "btnReso_Click", script, true);
            return;
        }
        RESI R = new RESI();
        chiaveordine = R.chiaveOrdine.ToString();
        R.descrizione = txtDescrizione.Text.Trim();
        R.qtaresa = int.Parse(txtQta.Text.Trim());
        R.datarichiesta = DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss");
        R.dataemissione = "";
    }
}