using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public static string chiaveordine;
    public static string chiave;
    protected void Page_Load(object sender, EventArgs e)
    {
        grdreso.DataBind();
        sdsResi.DataBind();

    }
    protected void grdreso_SelectedIndexChanged(object sender, EventArgs e)
    {
        chiave = grdreso.SelectedValue.ToString();
    }
    protected void btnRecensione_Click(object sender, EventArgs e)
    {
        //PRODOTTI P = new PRODOTTI();
        //P.chiave = int.Parse(chiave);
        Response.Redirect("/Forms/PRODOTTI/PaginaProdotto.aspx?c=" + chiave);
    }
    protected void btnReso_Click(object sender, EventArgs e)
    {
        if (grdreso.SelectedValue == null)
        {
            string script = "notifyError('Selezionare un Prodotto per effettuare un reso');";
            ScriptManager.RegisterStartupScript(this, GetType(), "btnReso_Click", script, true);
            return;
        }
        mp1.Enabled = true;
        mp1.Show();

    }
}