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
        }
      
        //      CAMPO DA AGGIORNARE
        PRODOTTI P = new PRODOTTI();
        
        //      passare i campi che mi servono prezzo categoria quantità ddl chiave anche le immagini
        //      titolo descrizione e per le immagini imgDB->


        P.chiaveVENDITORE = int.Parse(Session["chiaveUSR"].ToString());

        P.chiaveCATEGORIA = int.Parse(ddlCategoria.SelectedValue.ToString());
        P.descrizione = txtDescrizione.Text.Trim();
        P.prezzo = int.Parse(txtPrezzo.Text.Trim());
        P.datacaricamento = DateTime.Now.ToString();
        P.qta = int.Parse(txtQuantita.Text.Trim());
        P.titolo=txtTitolo.Text.Trim();
        //P.percamatron

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
