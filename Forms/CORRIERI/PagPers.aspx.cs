using System;
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
    //protected void Page_Load(object sender, EventArgs e)
    //{

    //    if (!IsPostBack)
    //    {
    //        string chiave = Session["chiaveUSR"].ToString();


            CORRIERI C = new CORRIERI();
            C.chiave = int.Parse(chiave);
            DataTable DT = C.CORRIERI_SelectByKey();
            string RagioneSociale = DT.Rows[0]["RagioneSociale"].ToString();
            //titolo della pagina con ragionesociale di chi si logga
          //  titolo.InnerHtml = "<h2>Profilo di " + RagioneSociale + "</h2>";

            C.chiave = int.Parse(chiave);
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
        //controlli formali
        if (txtRAGIONESOCIALE.Text.Trim() == "" || txtEMAIL.Text.Trim() == "" || txtCOSTO.Text.Trim() == "")
        {
            string scripterr = @"notifyError('Riempi tutti i campi!')"; //messaggio di errore
            ScriptManager.RegisterStartupScript(this, GetType(), "btnModifica_Click", scripterr, true);
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
        C.abilitato = true;
        C.PWD = Session["pwdUSR"].ToString();
        C.CORRIERI_Update();
        string script = @"notifySuccess('Modifiche effettuate')"; //messaggio di successo
        ScriptManager.RegisterStartupScript(this, GetType(), "btnModifica_Click", script, true);
    }
    protected void btnModPWD_Click(object sender, EventArgs e)
    {

        //controllo se uno dei campi è vuoto
        if (txtOldPWD.Text.Trim() == "" || txtNewPWD.Text.Trim() == "" || txtConfPWD.Text.Trim() == "")
        {
            string script1 = @"notifyError('Campi vuoti!')"; //messaggio di errore
            ScriptManager.RegisterStartupScript(this, GetType(), "btnModPWD_Click", script1, true);
            return;
        }

        //controllo per stabilire se la password vecchia è uguale a quella nuova
        if (Session["pwdUSR"].ToString() == txtNewPWD.Text.Trim())
        {
            string script2 = @"notifyError('Inserisci una password diversa da quella vecchia!')"; //messaggio di errore
            ScriptManager.RegisterStartupScript(this, GetType(), "btnModPWD_Click", script2, true);
            return;
        }

        //controllo per stabilire se la password di conferma è uguale a quella inserita
        if (txtNewPWD.Text.Trim() != txtConfPWD.Text.Trim())
        {
            string script3 = @"notifyError('Password di conferma non corretta!')"; //messaggio di errore
            ScriptManager.RegisterStartupScript(this, GetType(), "btnModPWD_Click", script3, true);
            return;
        }

        CHANGEPWD CP = new CHANGEPWD();
        EncodeDecode ED = new EncodeDecode();
        CP.email = Session["emailUSR"].ToString();
        CP.TIPO = Session["tipoUSR"].ToString();
        CP.PWD = ED.Encode(txtConfPWD.Text.Trim());
        CP.ChangePwd();
        string script4 = @"notifySuccess('Password cambiata con successo!')"; //messaggio di successo
        ScriptManager.RegisterStartupScript(this, GetType(), "btnModPWD_Click", script4, true);
    }
}