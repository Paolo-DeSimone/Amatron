using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int chiave = int.Parse(Session["chiaveUSR"].ToString());
        grdSTATO.DataBind();
    }



    protected void grdSTATO_SelectedIndexChanged(object sender, EventArgs e)
    {
        // controllo se viene selezionato la riga
        if (grdSTATO.SelectedValue == null)
        {
            Session["chiaveSPEDIZIONE"] = null;
            return;
        }
        //faccio la session per passare la chiave
        Session["chiaveSPEDIZIONE"] = grdSTATO.SelectedValue.ToString();
        Session["STATO_SPEDIZIONE"] = grdSTATO.SelectedRow.Cells[3].Text;
    }

    protected void btnStato_Click(object sender, EventArgs e)
    {
        SPEDIZIONI SPE = new SPEDIZIONI();
        SPE.chiave = int.Parse(Session["chiaveSPEDIZIONE"].ToString());
        SPE.STATO = Session["STATO_SPEDIZIONE"].ToString();
        SPE.SPEDIZIONI_UpdateStato();
        DataTable DT = SPE.SPEDIZIONI_SelectByKey();
        string STATO = DT.Rows[0]["STATO"].ToString();
        EMAIL E = new EMAIL();
        EMAIL EM = new EMAIL();

        switch (STATO)
        {
            case "B":
                // invio EMAIL a AMATRON e al cliente dell'ordine aggiornandolo sullo stato
                EM.mailTo = "giorgio.zucchetti00@gmail.com";
                EM.subject = "AGGIORNAMENTO STATO";
                EM.body ="PRESO IN CARICO L'ORDINE(n." + "  " + grdSTATO.SelectedRow.Cells[7].Text + ") di " + "  " + grdSTATO.SelectedRow.Cells[6].Text;
                EM.SendEmail();
                E.mailTo = grdSTATO.SelectedRow.Cells[6].Text;
                E.subject = "AGGIORNAMENTO STATO";
                E.body = "Il tuo ordine è stato PRESO IN CARICO";
                E.SendEmail();
                break;

            case "C":
                EM.mailTo = "giorgio.zucchetti00@gmail.com";
                EM.subject = "AGGIORNAMENTO STATO";
                EM.body = "IN CONSEGNA L'ORDINE(n." +"  " + grdSTATO.SelectedRow.Cells[7].Text + ") di " + "  " + grdSTATO.SelectedRow.Cells[6].Text;
                EM.SendEmail();
                E.mailTo = grdSTATO.SelectedRow.Cells[6].Text;
                E.subject = "AGGIORNAMENTO STATO";
                E.body = "Il tuo ordine è IN CONSEGNA";
                E.SendEmail();
                break;

            case "D":
                EM.mailTo = "giorgio.zucchetti00@gmail.com";
                EM.subject = "AGGIORNAMENTO STATO";
                EM.body = "CONSEGNATO L'ORDINE(n." + "  " + grdSTATO.SelectedRow.Cells[7].Text + ") di " + "  " + grdSTATO.SelectedRow.Cells[6].Text;
                EM.SendEmail();
                E.mailTo = grdSTATO.SelectedRow.Cells[6].Text;
                E.subject = "AGGIORNAMENTO STATO";
                E.body = "Il tuo ordine è STATO CONSEGNATO";
                E.SendEmail();
                break;

        }

        DataBind();
    }
}