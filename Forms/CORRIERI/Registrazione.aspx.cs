using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegistraCliente_Click(object sender, EventArgs e)
    {
        if (txtEmailCliente.Text == "" || txtPWDCliente.Text == "" || txtIndirizzoCliente.Text == "" || txtProvinciaCliente.Text == "" || txtCapCliente.Text == "" || txtTelefonoCliente.Text == "" ||
           txtCittaCliente.Text == "" || txtNomeCliente.Text == "" || txtCognomeCliente.Text == "")
        {
            //error
            string script = @"notifyError('Dati mancanti, riempire tutti i campi e riprovare')";
            ScriptManager.RegisterStartupScript(this, GetType(), "btnRegistraCliente_Click", script, true);
            return;
        }
        else
        {
            //error
            // Crea un'istanza della classe Clienti
            CLIENTI C = new CLIENTI();
            // Recupera i valori delle textbox
            C.EMAIL = txtEmailCliente.Text;
            C.PWD = txtPWDCliente.Text;
            C.COGNOME = txtCognomeCliente.Text;
            C.NOME = txtNomeCliente.Text;
            C.INDIRIZZO = txtIndirizzoCliente.Text;
            C.PROVINCIA = txtProvinciaCliente.Text;
            C.CAP = txtCapCliente.Text;
            C.TELEFONO = txtTelefonoCliente.Text;
            C.CITTA = txtCittaCliente.Text;
            C.PRIME = false;
            C.SCADENZAPRIME = "";

            // Chiama il metodo Insert per inserire i dati nel database
            C.INSERT();
            Response.Redirect("/Forms/Homepage.aspx?msg=success");
        }
    }

    protected void btnRegistraVenditore_Click(object sender, EventArgs e)
    {
        if (txtEmailVenditore.Text == "" || txtPWDVenditore.Text == "" || txtCittaVenditore.Text == "" || txtRagioneSocialeVenditore.Text == "" || txtIndirizzoVenditore.Text == "" || txtProvinciaVenditore.Text == "" ||
          txtCapVenditore.Text == "" || txtPivaVenditore.Text == "")
        {
            //error
            string script = @"notifyError('Dati mancanti, riempire tutti i campi e riprovare')";
            ScriptManager.RegisterStartupScript(this, GetType(), "btnRegistraCliente_Click", script, true);
            return;
        }
        else
        {
            // Crea un'istanza della classe venditori
            VENDITORI V = new VENDITORI();
            // Recupera i valori delle textbox
            V.email = txtEmailVenditore.Text;
            V.PWD = txtPWDVenditore.Text;
            V.citta = txtCittaVenditore.Text;
            V.ragionesociale = txtRagioneSocialeVenditore.Text;
            V.indirizzo = txtIndirizzoVenditore.Text;
            V.provincia = txtProvinciaVenditore.Text;
            V.CAP = txtCapVenditore.Text;
            V.piva = txtPivaVenditore.Text;
            V.telefono = txtTelefonoVenditore.Text;
            // Chiama il metodo Insert per inserire i dati nel database
            V.Insert();
            Response.Redirect("/Forms/Homepage.aspx?msg=success");
        }
    }

    protected void btnRegistraCorriere_Click(object sender, EventArgs e)
    {
        if (txtEmailCorriere.Text == "" || txtPWDCorriere.Text == "" || txtRagioneSocialeCorriere.Text == "" || txtIndirizzoCorriere.Text == "" || txtProvinciaCorriere.Text == "" || txtCapCorriere.Text == "" ||
         txtTelefonoCorriere.Text == "" || txtPivaCorriere.Text == "" || txtCittaCorriere.Text == ""|| txtCostoCorriere.Text == "")
        {
            //error
            string script = @"notifyError('Dati mancanti, riempire tutti i campi e riprovare')";
            ScriptManager.RegisterStartupScript(this, GetType(), "btnRegistraCliente_Click", script, true);
            return;
        }
        else
        {
            CORRIERI COR = new CORRIERI();
            //  Recupera i valori delle textbox
            COR.email = txtEmailCorriere.Text;
            COR.PWD = txtPWDCorriere.Text;
            COR.ragionesociale = txtRagioneSocialeCorriere.Text;
            COR.indirizzo = txtIndirizzoCorriere.Text;
            COR.provincia = txtProvinciaCorriere.Text;
            COR.CAP = txtCapCorriere.Text;
            COR.telefono = txtTelefonoCorriere.Text;
            COR.piva = txtPivaCorriere.Text;
            COR.citta = txtCittaCorriere.Text;
            // Chiama il metodo Insert per inserire i dati nel database
            COR.CORRIERI_Insert();
            Response.Redirect("/Forms/Homepage.aspx?msg=success");
        }
       
    }

    
}
















