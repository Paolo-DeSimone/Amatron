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
        if (!IsPostBack)
        {
            DataTable DT = new DataTable();
            int chiave = int.Parse(Session["chiaveUSR"].ToString());
            grdSTATO.DataBind();
            CORRIERI C = new CORRIERI();
            C.chiave = chiave;

            DT = C.CORRIERI_SelectByKey();
            string RagioneSociale = DT.Rows[0]["RagioneSociale"].ToString();
            OrdiniCorriere.InnerHtml = "<h2>Spedizioni del Corriere <b>" + RagioneSociale + "</b></h2>";
        }

        grdSTATO.DataSourceID = "sdsSTATO";
        grdSTATO.DataBind();

    }

    protected void grdSTATO_SelectedIndexChanged(object sender, EventArgs e)
    {
        // controllo se viene selezionato la riga
        if (grdSTATO.SelectedValue == null)
        {
            string scripter5 = @"notifyError('Non è stata selezionata nessuna spedizione!')"; //messaggio Riga non selezionata
            ScriptManager.RegisterStartupScript(this, GetType(), "btnStato_Click", scripter5, true);
            return;
        }
        SPEDIZIONI SPE = new SPEDIZIONI();
        SPE.chiave = int.Parse(grdSTATO.SelectedValue.ToString());
        DataTable DT = SPE.SPEDIZIONI_SelectByKey();
        Session["STATO_SPEDIZIONE"] = DT.Rows[0]["STATO"].ToString();
        //faccio la session per passare la chiave
        Session["chiaveSPEDIZIONE"] = grdSTATO.SelectedValue.ToString();
        Session["chiaveORDINE"] = DT.Rows[0]["chiaveORDINE"].ToString();
    }

    protected void btnStato_Click(object sender, EventArgs e)
    {
        //controllo se viene prima selezionata una riga dalla tabella
        if (grdSTATO.SelectedValue == null)
        {
            string scripter4 = @"notifyError('Non è stata selezionata nessuna spedizione!')"; //messaggio Riga non selezionata
            ScriptManager.RegisterStartupScript(this, GetType(), "btnStato_Click", scripter4, true);
            return;
        }

        //controllo se lo stato della spedizione è già a prodotto consegnato, non faccio nulla
        if (Session["STATO_SPEDIZIONE"].ToString() == "D")
        {
            string scripterr = @"notifyError('Prodotto già consegnato')"; //messaggio di errore
            ScriptManager.RegisterStartupScript(this, GetType(), "btnStato_Click", scripterr, true);
            return;
        }

        SPEDIZIONI SPE = new SPEDIZIONI();
        SPE.chiaveORDINE = int.Parse(Session["chiaveORDINE"].ToString());
        string stato_pre_update = Session["STATO_SPEDIZIONE"].ToString();
        SPE.DATAORA = DateTime.Now.ToString("dd/MM/yy");
        EMAIL E = new EMAIL();
        EMAIL EM = new EMAIL();

        switch (stato_pre_update)
        {
            case "A":
                SPE.STATO = "B";
                // invio EMAIL a AMATRON e al cliente dell'ordine aggiornandolo sullo stato
                //EM.mailTo = "giorgio.zucchetti00@gmail.com";
                //EM.subject = "AGGIORNAMENTO STATO";
                //EM.body = "PRESO IN CARICO L'ORDINE di " + "  " + grdSTATO.SelectedRow.Cells[7].Text;
                //EM.SendEmail();
                //E.mailTo = grdSTATO.SelectedRow.Cells[6].Text;
                //E.subject = "AGGIORNAMENTO STATO";
                //E.body = "Il tuo ordine è stato PRESO IN CARICO";
                //E.SendEmail();
                string scripter1 = @"notifySuccess('Consegna Presa in Carico')"; //messaggio di stato
                ScriptManager.RegisterStartupScript(this, GetType(), "btnStato_Click", scripter1, true);
                break;
            case "B":
                SPE.STATO = "C";
                //EM.mailTo = "giorgio.zucchetti00@gmail.com";
                //EM.subject = "AGGIORNAMENTO STATO";
                //EM.body = "IN CONSEGNA L'ORDINE di " + "  " + grdSTATO.SelectedRow.Cells[7].Text;
                //EM.SendEmail();
                //E.mailTo = grdSTATO.SelectedRow.Cells[6].Text;
                //E.subject = "AGGIORNAMENTO STATO";
                //E.body = "Il tuo ordine è IN CONSEGNA";
                //E.SendEmail();
                string scripter2 = @"notifySuccess('Prodotto in Consegna')"; //messaggio di stato
                ScriptManager.RegisterStartupScript(this, GetType(), "btnStato_Click", scripter2, true);
                break;
            case "C":
                SPE.STATO = "D";
                //EM.mailTo = "giorgio.zucchetti00@gmail.com";
                //EM.subject = "AGGIORNAMENTO STATO";
                //EM.body = "CONSEGNATO L'ORDINE di " + "  " + grdSTATO.SelectedRow.Cells[7].Text;
                //EM.SendEmail();
                //E.mailTo = grdSTATO.SelectedRow.Cells[6].Text;
                //E.subject = "AGGIORNAMENTO STATO";
                //E.body = "Il tuo ordine è STATO CONSEGNATO";
                //E.SendEmail();
                string scripter3 = @"notifySuccess('Prodotto Consegnato')"; //messaggio di stato
                ScriptManager.RegisterStartupScript(this, GetType(), "btnStato_Click", scripter3, true);
                break;
        }

        SPE.SPEDIZIONI_Insert();
        DataBind();
    }

    protected void btnFiltraNomeCliente_Click(object sender, EventArgs e)
    {
        if (txtFiltraNomeCliente.Text.Trim() == "")
        {
            grdSTATO.DataSourceID = "sdsSTATO";
            grdSTATO.DataBind();
        }
        else grdSTATO.DataSourceID = "sdsFILTRA";
    }
}