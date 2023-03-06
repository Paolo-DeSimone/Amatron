using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Default2 : System.Web.UI.Page
{

    
    public void Page_Load(object sender, EventArgs e)
    {

        if (Session["EMAIL"] == null)
        {
            return;
        }

        string EMAIL = Session["EMAIL"].ToString();

        if (Session["chiaveUSR"] == null)
        {
            return;
        }


        string chiaveCLIENTE = Session["chiaveUSR"].ToString();


        if (string.IsNullOrEmpty(chiaveCLIENTE))
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Nessun elemento modificato');", true);
            return;
        }

        if (!IsPostBack)
        {

            CLIENTI CL = new CLIENTI();
            CL.chiave = int.Parse(chiaveCLIENTE);
            CL.SELECTBYKEY();
            txtEMAIL.Text = CL.DT.Rows[0]["EMAIL"].ToString();
            txtCognome.Text = CL.DT.Rows[0]["COGNOME"].ToString();
            txtNome.Text = CL.DT.Rows[0]["NOME"].ToString();
            txtIndirizzo.Text = CL.DT.Rows[0]["INDIRIZZO"].ToString();
            txtCitta.Text = CL.DT.Rows[0]["CITTA"].ToString();
            txtProvincia.Text = CL.DT.Rows[0]["PROVINCIA"].ToString();
            txtCAP.Text = CL.DT.Rows[0]["CAP"].ToString();
            txtTelefono.Text = CL.DT.Rows[0]["TELEFONO"].ToString();
            

        }

    }
    protected void btnSalva_Click(object sender, EventArgs e)
    {     

        CLIENTI CL = new CLIENTI();
        CL.chiave = int.Parse((Session["chiave"].ToString()));
        CL.PRIME = bool.Parse(Session["PRIME"].ToString());
        CL.SCADENZAPRIME = (Session["SCADENZAPRIME"].ToString());
        CL.EMAIL = txtEMAIL.Text;
        CL.COGNOME = txtCognome.Text;
        CL.NOME = txtNome.Text;
        CL.INDIRIZZO = txtIndirizzo.Text;
        CL.CITTA = txtCitta.Text;
        CL.PROVINCIA = txtProvincia.Text;
        CL.CAP = txtCAP.Text;
        CL.TELEFONO = txtTelefono.Text;

        CL.UPDATE();

        ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Dati modificati con successo')", true);
    
    }

    protected void btnModPWD_Click(object sender, EventArgs e)
    {
        //controllo se uno dei campi è vuoto, non apro la connessione al db
        if (txtOldPWD.Text.Trim() == "" || txtNewPWD.Text.Trim() == "" || txtConfPWD.Text.Trim() == "")
        {
            string script = @"notifyError('Riempi tutti i campi!')";
            ScriptManager.RegisterStartupScript(this, GetType(), "btnModPWD_Click", script, true);
            return;
        }

        //controllo per stabilire se la password vecchia è uguale a quella nuova
        if (Session["pwdUSR"].ToString() == txtNewPWD.Text.Trim())
        {
            string script1 = @"notifyError('Inserisci una password diversa da quella vecchia!')";
            ScriptManager.RegisterStartupScript(this, GetType(), "btnModPWD_Click", script1, true);
            return;
        }

        //controllo per stabilire se la password di conferma è uguale a quella vecchia
        if (txtNewPWD.Text.Trim() != txtConfPWD.Text.Trim())
        {
            string script2 = @"notifyError('Password di conferma non corretta!')";
            ScriptManager.RegisterStartupScript(this, GetType(), "btnModPWD_Click", script2, true);
            return;
        }

        CHANGEPWD CP = new CHANGEPWD();
        CP.email = Session["emailUSR"].ToString();
        CP.TIPO = Session["tipoUSR"].ToString();
        CP.PWD = txtConfPWD.Text.Trim();
        CP.ChangePwd();
        string script3 = @"notifyError('Password cambiata con successo!')";
        ScriptManager.RegisterStartupScript(this, GetType(), "btnModPWD_Click", script3, true);
    }
}