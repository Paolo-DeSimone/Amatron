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
        

        if (txtDescrizione.Text.Trim() == "" || txtPrezzo.Text.Trim() == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Errore');", true);
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

        P.Insert();
        DataBind();

        DataTable dt = P.SelectAll();
        //int chiaveprodotto =int.Parse(dt.Rows[0]["chiave"].ToString());

        // creo un array di byte da riempire con i bytes del file
        byte[] ImgData = fileUpload1.FileBytes;

        //imposto il titolo uguale al nome del file scelto
        string titolo = fileUpload1.PostedFile.FileName;

        // salvo il tipo di file scelto leggendo da fileupload
        string tipo = fileUpload1.PostedFile.ContentType;

        IMMAGINI I = new IMMAGINI();
        //I.chiaveprodotto = chiaveprodotto;
        I.titolo = titolo;
        I.doc = ImgData;
        I.tipo = tipo;
        I.Insert();

    }

    protected void reset()
    {
        txtDescrizione.Text = "";
        txtPrezzo.Text = "";
        txtQuantita.Text = "";
        txtTitolo.Text = "";
    }
}
