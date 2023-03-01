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
        string EMAIL = Session["EMAIL"].ToString();
        string chiaveCLIENTE = Session["chiaveCLIENTE"].ToString();

        if (Session["chiave"] == null)
        {
            return;
        }


        string chiaveCLIENTI = Session["chiave"].ToString();

        if (string.IsNullOrEmpty(chiaveCLIENTI))
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Nessun elemento selezionato');", true);
            return;
        }

        if (!IsPostBack)
        {

            CLIENTI CL = new CLIENTI();
            CL.chiave = int.Parse(chiaveCLIENTI);
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
        CL.EMAIL = txtEMAIL.Text;

    }
}
