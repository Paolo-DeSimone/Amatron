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
}