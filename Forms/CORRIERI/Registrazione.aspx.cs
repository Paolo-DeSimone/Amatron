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

    protected void btnRegistra_Click(object sender, EventArgs e)
    {
        // controlli formali
        if (string.IsNullOrEmpty(txtEmail.Text) || string.IsNullOrEmpty(txtPWD.Text) || string.IsNullOrEmpty(txtRagioneSociale.Text) || string.IsNullOrEmpty(txtPartitaIVA.Text))
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Inserire email!');", true);
            return;
        }
        CORRIERI COR = new CORRIERI();
        CLIENTI C = new CLIENTI();
        
        
        

        // Inserisci recod in db
        

        // Manda email di richiesta attivazione alla segretaria
       

        //Scrivo questo redirect solo per comodità, a fine programma va tolto.
        Response.Redirect("/Pagine/PagineContenuto/Operator/Dipendenti.aspx");
    }
}
}