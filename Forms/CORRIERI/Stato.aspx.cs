using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int chiave = int.Parse(Session["chiaveUSR"].ToString());
        grdSTATO.DataBind();
        CORRIERI C = new CORRIERI();
        C.chiave = chiave;
        DataTable DT = new DataTable();
        DT = C.CORRIERI_SelectByKey();
        string RagioneSociale = DT.Rows[0]["RagioneSociale"].ToString();
        OrdiniCorriere.InnerHtml = "<h2>Spedizioni del Corriere " + RagioneSociale + "</h2>";
    }


    protected void Check_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox check = (CheckBox)sender;
        GridViewRow row = (GridViewRow)check.NamingContainer;
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

    protected void CheckALL_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox checkALL = (CheckBox)grdSTATO.SelectedRow.FindControl("checkALL");
        foreach (GridView row in grdSTATO.Rows)
        {
            CheckBox checkrow = (CheckBox)row.FindControl("Check");
            if (checkALL.Checked == true)
            {
                checkALL.Checked = true;
            }
            else
            {
                checkrow.Checked = false;
            }
        }

    }
    protected void grdSTATO_SelectedIndexChanged(object sender, EventArgs e)
    {
        // controllo se viene selezionato la riga
        //if (grdSTATO.SelectedValue == null)
        //{
        //    Session["chiaveSPEDIZIONE"] = null;
        //    return;
        //}
        ////faccio la session per passare la chiave
        //Session["chiaveSPEDIZIONE"] = grdSTATO.SelectedValue.ToString();
        //Session["STATO_SPEDIZIONE"] = grdSTATO.SelectedRow.Cells[3].Text;
    }

    protected void btnStato_Click(object sender, EventArgs e)
    {
        if (grdSTATO.SelectedRow.Cells[3].Text == "D")
        {
            string scripterr = @"notifyError('Prodotto già consegnato')"; //messaggio di errore
            ScriptManager.RegisterStartupScript(this, GetType(), "btnStato_Click", scripterr, true);
            return;
        }


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
                EM.body = "PRESO IN CARICO L'ORDINE(n." + "  " + grdSTATO.SelectedRow.Cells[7].Text + ") di " + "  " + grdSTATO.SelectedRow.Cells[6].Text;
                EM.SendEmail();
                E.mailTo = grdSTATO.SelectedRow.Cells[6].Text;
                E.subject = "AGGIORNAMENTO STATO";
                E.body = "Il tuo ordine è stato PRESO IN CARICO";
                E.SendEmail();
                string scripter1 = @"notifySuccess('Consegna Presa in Carico')"; //messaggio di stato
                ScriptManager.RegisterStartupScript(this, GetType(), "btnStato_Click", scripter1, true);

                break;

            case "C":
                EM.mailTo = "giorgio.zucchetti00@gmail.com";
                EM.subject = "AGGIORNAMENTO STATO";
                EM.body = "IN CONSEGNA L'ORDINE(n." + "  " + grdSTATO.SelectedRow.Cells[7].Text + ") di " + "  " + grdSTATO.SelectedRow.Cells[6].Text;
                EM.SendEmail();
                E.mailTo = grdSTATO.SelectedRow.Cells[6].Text;
                E.subject = "AGGIORNAMENTO STATO";
                E.body = "Il tuo ordine è IN CONSEGNA";
                E.SendEmail();
                string scripter2 = @"notifySuccess('Prodotto in Consegna')"; //messaggio di stato
                ScriptManager.RegisterStartupScript(this, GetType(), "btnStato_Click", scripter2, true);

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
                string scripter3 = @"notifySuccess('Prodotto Consegnato')"; //messaggio di stato
                ScriptManager.RegisterStartupScript(this, GetType(), "btnStato_Click", scripter3, true);
                break;

        }

        DataBind();
    }

    
}