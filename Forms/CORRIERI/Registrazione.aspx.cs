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

//    protected void btnRegistra_Click(object sender, EventArgs e)
//    {
//        if (txtEmail.Text == "" || txtPWD.Text == "" || txtIndirizzo.Text == "" || txtProvincia.Text == "" || txtCap.Text == "" || txtTelefono.Text == "" || txtCitta.Text == "")
//        {
//            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Riempire tutti i campi richiesti e riprovare');", true);
//            return;
//        }
//        //if (liCliente.Enabled == true)
//        //{
//        if (txtNome.Text == "" || txtCognome.Text == "")
//        {
//            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Riempire tutti i campi richiesti e riprovare');", true);
//            return;
//        }
//        // Crea un'istanza della classe Clienti
//        CLIENTI C = new CLIENTI();
//        // Recupera i valori delle textbox
//        C.EMAIL = txtEmail.Text;
//        C.PWD = txtPWD.Text;
//        C.COGNOME = txtCognome.Text;
//        C.NOME = txtNome.Text;
//        C.INDIRIZZO = txtIndirizzo.Text;
//        C.PROVINCIA = txtProvincia.Text;
//        C.CAP = txtCap.Text;
//        C.TELEFONO = txtTelefono.Text;
//        // Chiama il metodo Insert per inserire i dati nel database
//        C.INSERT();
//        //}
//        //else
//        //{
//        if (txtPartitaIVA.Text == "" || txtRagioneSociale.Text == "")
//        {
//            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Riempire tutti i campi richiesti e riprovare');", true);
//            return;
//        }
//        //if (liVenditore.Enabled == true)
//        //{
//        // Crea un'istanza della classe venditori
//        VENDITORI V = new VENDITORI();
//        // Recupera i valori delle textbox
//        V.email = txtEmail.Text;
//        V.PWD = txtPWD.Text;
//        V.citta = txtCitta.Text;
//        V.ragionesociale = txtRagioneSociale.Text;
//        V.indirizzo = txtIndirizzo.Text;
//        V.provincia = txtProvincia.Text;
//        V.CAP = txtCap.Text;
//        V.piva = txtPartitaIVA.Text;
//        // Chiama il metodo Insert per inserire i dati nel database
//        V.Insert();
//        //}
//        //else if (liCorriere.Enabled == true)
//        //{
//        CORRIERI COR = new CORRIERI();
//        // Recupera i valori delle textbox
//        COR.email = txtEmail.Text;
//        COR.PWD = txtPWD.Text;
//        COR.ragionesociale = txtRagioneSociale.Text;
//        COR.indirizzo = txtIndirizzo.Text;
//        COR.provincia = txtProvincia.Text;
//        COR.CAP = txtCap.Text;
//        COR.telefono = txtTelefono.Text;
//        COR.piva = txtPartitaIVA.Text;
//        // Chiama il metodo Insert per inserire i dati nel database
//        COR.CORRIERI_Insert();
//        //}

//        //}

//    }


}
