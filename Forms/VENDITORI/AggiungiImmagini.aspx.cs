using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms_VENDITORI_AggiungiImmagini : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["chiaveProdottoEsaurito"] == null)
        {
            return;
        }
        PRODOTTI P = new PRODOTTI();
        //Session.Remove("chiaveProdottoEsaurito");
        string chiaveprodotto = Session["chiaveProdottoEsaurito"].ToString();
        P.chiave = int.Parse(chiaveprodotto);
        DataTable DT = new DataTable();
        DT = P.SelectByKey();
        string titolo;
        titolo = DT.Rows[0]["TITOLO"].ToString();
        //lblProdotto.Text = titolo;
        //DataTable DT = Session["chiaveProdottoEsaurito"];
        lblProdotto.Text = titolo;
    }

    protected void btnSalva_Click(object sender, EventArgs e)
    {
        if (fileUpload1.HasFiles == false)
        {
            lblMessaggio.Text = "Caricare un formato di immagine supportata";
            return;
        }

        PRODOTTI P = new PRODOTTI();

        P.chiaveVENDITORE = int.Parse(Session["chiaveUSR"].ToString());
        string chiaveprodotto = Session["chiaveProdottoEsaurito"].ToString();
        P.chiave = int.Parse(chiaveprodotto);
        DataTable dt = P.SelectByKey();

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