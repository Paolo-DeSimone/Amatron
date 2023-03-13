using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public static string chiaveordine;
    public static string chiave;

    //string chiave = Session["chiaveUSR"].ToString();

    protected void Page_Load(object sender, EventArgs e)
    {
        grdreso.DataBind();
        sdsResi.DataBind();

        foreach (GridViewRow r in grdreso.Rows)
        {
            r.Cells[0].Text = "<img src=\"/Img.ashx?c=" + r.Cells[1].Text.ToString() + "\" />";
        }
    }
    protected void grdreso_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = grdreso.SelectedRow;
        string qta = row.Cells[5].Text;
        Session["QTA"] = qta;

        string titolo = row.Cells[2].Text;
        Session["TITOLO"] = titolo;

        string prezzo = row.Cells[4].Text;
        Session["PREZZO"] = prezzo;

        string chiaveordine = row.Cells[6].Text;
        Session["chiaveordine"] = chiaveordine;

        


        chiave = grdreso.SelectedValue.ToString();
    }
    protected void btnRecensione_Click(object sender, EventArgs e)
    {
        if (grdreso.SelectedValue == null)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "error", "notifyError('Devi selezionare un ordine');", true);
            return;
        }

        //PRODOTTI P = new PRODOTTI();
        //P.chiave = int.Parse(chiave);
        Response.Redirect("/Forms/PRODOTTI/PaginaProdotto.aspx?c=" + chiave);
    }
    protected void btnReso_Click(object sender, EventArgs e)
    {
        if (grdreso.SelectedValue == null)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "error", "notifyError('Devi selezionare un ordine');", true);
            return;
        }

        RESI R = new RESI();
        DataTable DT = new DataTable();
        R.chiaveOrdine = int.Parse(Session["chiaveordine"].ToString());
        // SelectCount ritorna 1 se il reso di uno specifico ordine è stato effettuato, 0 se NON è stato effettuato.
        DT = R.SelectCount();
        if (int.Parse(DT.Rows[0][0].ToString()) > 0)
        {
            // L'ALERT DEVE ESSER FATTO FUNZIONARE PERCHè LA GRIGLIA MOSTRA TUTTI GLI ORDINI, SENZA DISCRIMINARE QUELLI CHE SONO STATI RESI E QUELLI NON RESI
            string script = "notifyError('Hai già effettuato il reso per quest'ordine');";
            ScriptManager.RegisterStartupScript(this, GetType(), "btnReso_Click", script, true);
            return;
        }
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