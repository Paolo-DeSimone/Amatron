using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Venditori_AggiungiProdotti : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSalva_Click(object sender, EventArgs e)
    {
        
        //Controlli formali soliti
        if (txtDescrizione.Text.Trim() == "" || txtPrezzo.Text.Trim() == "")
        {
            string notify = @"notifyError('Dati mancanti, riempire tutti i campi e riprovare')";
            ScriptManager.RegisterStartupScript(this, GetType(), "btnSalva_Click", notify, true);
            return;

            //ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Dati mancanti, riempire tutti i campi e riprovare');", true);
            //return;

        }

      
        //      CAMPO DA AGGIORNARE
        PRODOTTI P = new PRODOTTI();
        CONFIG C = new CONFIG();
        //      passare i campi che mi servono prezzo categoria quantità ddl chiave anche le immagini
        //      titolo descrizione e per le immagini imgDB->


        P.chiaveVENDITORE = int.Parse(Session["chiaveUSR"].ToString());

        P.chiaveCATEGORIA = int.Parse(ddlCategoria.SelectedValue.ToString());
        P.descrizione = txtDescrizione.Text.Trim();
        P.prezzo = int.Parse(txtPrezzo.Text.Trim());
        P.datacaricamento = DateTime.Now.ToString();
        P.qta = int.Parse(txtQuantita.Text.Trim());
        P.titolo=txtTitolo.Text.Trim();
        
        DataTable dt1 = new DataTable();
        dt1 = C.SelectAll();
        int PERC1_10 =int.Parse(dt1.Rows[0]["PERC1_10"].ToString());
        int PERC11_100 =int.Parse(dt1.Rows[0]["PERC11_100"].ToString());
        int PERC101_1000 =int.Parse(dt1.Rows[0]["PERC101_1000"].ToString());
        int PERC1001 =int.Parse(dt1.Rows[0]["PERC1001"].ToString());

        
        if ( P.qta >= 1 && P.qta <= 10 )
        {

            //SE INSERISCO 1 A 10 PRODOTTI ALLORA LA % DI AMATRON APPLICATA è DEL 20%
            P.percamatron = PERC1_10;
            
        }
        else if (P.qta >= 11 && P.qta <= 100)
        {
            //SE INSERISCO 1 A 10 PRODOTTI ALLORA LA % DI AMATRON APPLICATA è DEL 15%
            P.percamatron = PERC11_100;
        }
        else if (P.qta >= 101 && P.qta <= 1000)
        {
            //SE INSERISCO 1 A 10 PRODOTTI ALLORA LA % DI AMATRON APPLICATA è DEL 10%
            P.percamatron = PERC101_1000;
        }
        else if (P.qta >= 1001)
        {
            //SE INSERISCO 1 A 10 PRODOTTI ALLORA LA % DI AMATRON APPLICATA è DEL 8%
            P.percamatron = PERC1001;
           
        }

        P.Insert();
        DataBind();

        DataTable dt = P.SelectByImmagineVenditore();
    
        // creo un array di byte da riempire con i bytes del file
        byte[] ImgData = fileUpload1.FileBytes;

        //imposto il titolo uguale al nome del file scelto
        string titolo = fileUpload1.PostedFile.FileName;

        // salvo il tipo di file scelto leggendo da fileupload
        string tipo = fileUpload1.PostedFile.ContentType;

        IMMAGINI I = new IMMAGINI();
       
        //chiave prodotto riempie una casella 
        I.chiaveprodotto = int.Parse(dt.Rows[0][0].ToString());
        I.titolo = titolo;
        I.doc = ImgData;
        I.tipo = tipo;
        I.Insert();
        
        DataBind();

        string script = @"notifySuccess('Modifica avvenuta con successo!')";
        ScriptManager.RegisterStartupScript(this, GetType(), "btnSalva_Click", script, true);
        reset();
        return;
    }

    protected void reset()
    {
        txtDescrizione.Text = "";
        txtPrezzo.Text = "";
        txtQuantita.Text = "";
        txtTitolo.Text = "";
    }
}
