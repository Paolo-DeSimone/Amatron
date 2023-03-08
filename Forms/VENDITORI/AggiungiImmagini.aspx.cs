using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms_VENDITORI_AggiungiImmagini : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSalva_Click(object sender, EventArgs e)
    {
        if (fileUpload1.HasFiles == false)
        {
            //error
            string notify = @"notifyError('Carica un file supportato)";
            ScriptManager.RegisterStartupScript(this, GetType(), "btnSalva_Click", notify, true);
            return;
        }

        PRODOTTI P = new PRODOTTI();

        P.chiaveVENDITORE = int.Parse(Session["chiaveUSR"].ToString());

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
        return;
    }

}