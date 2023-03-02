using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) 
        {
        //string chiave = Session["chiave"].ToString();
        //riga di prova per testing
        int chiave = 1;
        CORRIERI C = new CORRIERI();
        C.chiave = chiave;
        DataTable DT = C.CORRIERI_SelectByKey();
        txtRAGIONESOCIALE.Text = DT.Rows[0]["RAGIONESOCIALE"].ToString();
        txtPIVA.Text = DT.Rows[0]["PIVA"].ToString();
        txtCOSTO.Text = DT.Rows[0]["COSTOCORRIERE"].ToString();
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
        //string chiave = Session["chiave"].ToString();
        //riga di prova per testing
        int chiave = 1;
        CORRIERI C = new CORRIERI();
        C.chiave = chiave;
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
        //C.PWD = Session["PWD"].ToString();
        //riga da utilizzare solo in fase di testing
        C.PWD = "luceombra";
        C.CORRIERI_Update();
        //alert di prova per verifica funzionamento sp
        ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Modifica effettuata!');", true);
    }
    protected void btnModPWD_Click(object sender, EventArgs e)
    {
        //controllo per stabilire se la password vecchia è uguale a quella nuova
        if (txtOldPWD.Text.Trim() == txtNewPWD.Text.Trim())
        {
            //inserire un alert che la password nuova è uguale alla password vecchia
        }

        //controllo per stabilire se la password di conferma è uguale a quella vecchia
        if (txtNewPWD.Text.Trim() != txtConfPWD.Text.Trim())
        {
            //inserire un alert che avvisa che la password di conferma è diversa da quella nuova
        }

        //inserire alert che avvisa del successo del cambio password

        CORRIERI C = new CORRIERI();
        C.CORRIERI_Update();
    }
}