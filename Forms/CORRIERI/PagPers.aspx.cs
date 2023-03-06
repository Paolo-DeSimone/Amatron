﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using RifChangePwd;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //string chiave = Session["chiaveUSR"].ToString();

            //CORRIERI C = new CORRIERI();
            //C.chiave = int.Parse(chiave);
            //DataTable DT = C.CORRIERI_SelectByKey();
            //txtRAGIONESOCIALE.Text = DT.Rows[0]["RAGIONESOCIALE"].ToString();
            //txtPIVA.Text = DT.Rows[0]["PIVA"].ToString();
            //txtCOSTO.Text = DT.Rows[0]["COSTOCORRIERE"].ToString();
            //txtINDIRIZZO.Text = DT.Rows[0]["INDIRIZZO"].ToString();
            //txtCAP.Text = DT.Rows[0]["CAP"].ToString();
            //txtPROVINCIA.Text = DT.Rows[0]["PROVINCIA"].ToString();
            //txtCITTA.Text = DT.Rows[0]["CITTA"].ToString();
            //txtEMAIL.Text = DT.Rows[0]["EMAIL"].ToString();
            //txtNUMERO.Text = DT.Rows[0]["TELEFONO"].ToString();
        }
    }

    protected void btnModifica_Click(object sender, EventArgs e)
    {
        //controlli formali
        if (txtRAGIONESOCIALE.Text.Trim() == "" || txtEMAIL.Text.Trim() == "" || txtCOSTO.Text.Trim() == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Completa i campi!');", true);
            return;
        }

        CORRIERI C = new CORRIERI();
        C.chiave = int.Parse(Session["chiaveUSR"].ToString());
        C.ragionesociale = txtRAGIONESOCIALE.Text.Trim();
        C.piva = txtPIVA.Text.Trim();
        C.costocorriere = float.Parse(txtCOSTO.Text.Trim());
        C.indirizzo = txtINDIRIZZO.Text.Trim();
        C.CAP = txtCAP.Text.Trim();
        C.provincia = txtPROVINCIA.Text.Trim();
        C.citta = txtCITTA.Text.Trim();
        C.email = txtEMAIL.Text.Trim();
        C.telefono = txtNUMERO.Text.Trim();
        //C.abilitato = Convert.ToBoolean(Session["Abilitato"]);
        //riga da utilizzare solo in fase di testing
        C.abilitato = true;
        C.PWD = Session["pwdUSR"].ToString();
        C.CORRIERI_Update();
        //alert di prova per verifica inserimento modifiche
        ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Modifica effettuata!');", true);
    }
    protected void btnModPWD_Click(object sender, EventArgs e)
    {

        //controllo se uno dei campi è vuoto, non apro la connessione al db
        if (txtOldPWD.Text.Trim() == "" || txtNewPWD.Text.Trim() == "" || txtConfPWD.Text.Trim() == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Riempi tutti i campi!');", true);
        }

        //controllo per stabilire se la password vecchia è uguale a quella nuova
        if (Session["pwdUSR"].ToString() == txtNewPWD.Text.Trim())
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Inserisci una password diversa da quella vecchia!');", true);
        }

        //controllo per stabilire se la password di conferma è uguale a quella vecchia
        if (txtNewPWD.Text.Trim() != txtConfPWD.Text.Trim())
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Password di conferma non corretta!');", true);
        }

        CHANGEPWD CP = new CHANGEPWD();
        CP.email = Session["emailUSR"].ToString();
        CP.TIPO = Session["tipoUSR"].ToString();
        CP.PWD = txtConfPWD.Text.Trim();
        CP.ChangePwd();
        ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Password cambiata con successo!');", true);
    }
}