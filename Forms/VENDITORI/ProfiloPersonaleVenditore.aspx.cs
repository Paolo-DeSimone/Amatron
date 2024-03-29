﻿using System;
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
        if (!IsPostBack)
        {
            string chiave = Session["chiaveUSR"].ToString();

            VENDITORI V = new VENDITORI();
            V.chiave = int.Parse(chiave);
            DataTable DT = V.SelectByKey();
            txtRAGIONESOCIALE.Text = DT.Rows[0]["RAGIONESOCIALE"].ToString();
            txtPIVA.Text = DT.Rows[0]["PIVA"].ToString();
            txtINDIRIZZO.Text = DT.Rows[0]["INDIRIZZO"].ToString();
            txtCAP.Text = DT.Rows[0]["CAP"].ToString();
            txtPROVINCIA.Text = DT.Rows[0]["PROVINCIA"].ToString();
            txtCITTA.Text = DT.Rows[0]["CITTA"].ToString();
            txtEMAIL.Text = DT.Rows[0]["EMAIL"].ToString();
            txtNUMERO.Text = DT.Rows[0]["TELEFONO"].ToString();
        }
    }

    protected void btnModifica_Click(object sender, EventArgs e)
    {
        if (txtRAGIONESOCIALE.Text.Trim() == "" || txtEMAIL.Text.Trim() == "")
        {
            //error
            string script = @"notifyError('Dati mancanti, riempire tutti i campi e riprovare')";
            ScriptManager.RegisterStartupScript(this, GetType(), "btnModifica_Click", script, true);
            return;
        }

        VENDITORI V = new VENDITORI();
        V.chiave = int.Parse(Session["chiaveUSR"].ToString());
        V.ragionesociale = txtRAGIONESOCIALE.Text.Trim();
        V.piva = txtPIVA.Text.Trim();
        V.indirizzo = txtINDIRIZZO.Text.Trim();
        V.CAP = txtCAP.Text.Trim();
        V.provincia = txtPROVINCIA.Text.Trim();
        V.citta = txtCITTA.Text.Trim();
        V.email = txtEMAIL.Text.Trim();
        V.telefono = txtNUMERO.Text.Trim();
        //C.abilitato = Convert.ToBoolean(Session["Abilitato"]);
        //riga da utilizzare solo in fase di testing
        V.abilitato = true;
        V.PWD = Session["pwdUSR"].ToString();
        V.Update();
        //alert di prova per verifica inserimento modifiche
        string notify = @"notifySuccess('Modifica effettuata!')";
        ScriptManager.RegisterStartupScript(this, GetType(), "btnModifica_Click", notify, true);
        return;
    }

    protected void btnModPWD_Click(object sender, EventArgs e)
    {
        //controllo se uno dei campi è vuoto, non apro la connessione al db
        if (txtOldPWD.Text.Trim() == "" || txtNewPWD.Text.Trim() == "" || txtConfPWD.Text.Trim() == "")
        {
            //error
            string notify = @"notifyError('Dati mancanti, riempire tutti i campi e riprovare')";
            ScriptManager.RegisterStartupScript(this, GetType(), "btnModifica_Click", notify, true);
            return;
        }

        //controllo per stabilire se la password vecchia è uguale a quella nuova
        if (Session["pwdUSR"].ToString() == txtNewPWD.Text.Trim())
        {
            //error
            string notify = @"notifyError('Inserisci una password diversa da quella vecchia!')";
            ScriptManager.RegisterStartupScript(this, GetType(), "btnModifica_Click", notify, true);
            return;
        }

        //controllo per stabilire se la password di conferma è uguale a quella vecchia
        if (txtNewPWD.Text.Trim() != txtConfPWD.Text.Trim())
        {
            //error
            string notify = @"notifyError('Password di conferma non corretta!')";
            ScriptManager.RegisterStartupScript(this, GetType(), "btnModifica_Click", notify, true);
            return;
        }

        CHANGEPWD CP = new CHANGEPWD();
        CP.email = Session["emailUSR"].ToString();
        CP.TIPO = Session["tipoUSR"].ToString();
        CP.PWD = txtConfPWD.Text.Trim();
        CP.ChangePwd();
        //error
        string script = @"notifySuccess('Cambio password avvenuto con successo!')";
        ScriptManager.RegisterStartupScript(this, GetType(), "btnModifica_Click", script, true);
        return;
    }
}