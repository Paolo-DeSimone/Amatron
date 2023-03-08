using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int chiave = int.Parse(Session["chiaveUSR"].ToString());
        //grigliaStatisticheCorrieri.DataBind();
        CORRIERI C = new CORRIERI();
        C.chiave = chiave;
        DataTable DT = new DataTable();
        DT = C.CORRIERI_SelectByKey();
        string RagioneSociale = DT.Rows[0]["RagioneSociale"].ToString();
        benvenutoCorriere.InnerHtml = "<h2>Statistiche del corriere " + RagioneSociale + "</h2>";
    }


    protected void btnResocontoCorriere_Click(object sender, EventArgs e)
    {
        CORRIERI C = new CORRIERI();
        DataTable DT = new DataTable();
        C.chiave = int.Parse(Session["chiaveUSR"].ToString());
        C.anno = int.Parse(ddlAnni.SelectedValue.ToString());
        C.mese = int.Parse(ddlMesi.SelectedValue.ToString());
        DT = C.CORRIERI_CountSPEDIZIONI();
        if (DT.Rows[0]["TotaleRicaviCorriere"].ToString() == "")
        {
            string scripterr = @"notifyError('Non ci sono ordini consegnati per il mese selezionato!')"; //messaggio di errore
            ScriptManager.RegisterStartupScript(this, GetType(), "btnResocontoCorriere_Click", scripterr, true);
            return;
        }
        lblResocontoCorriere.Text = "€ " + DT.Rows[0]["TotaleRicaviCorriere"].ToString();
    }
}