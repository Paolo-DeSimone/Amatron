using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            gridVisualizzaProdotti.DataBind();
        }
    }


    protected void gridVisualizzaProdotti_SelectedIndexChanged(object sender, EventArgs e)
    {
        //prendo la chiave del prodotto selezionato e la metto nella session per portarlo al popup Gestisci inventario
        Session["chiaveProdottoEsaurito"] = gridVisualizzaProdotti.SelectedValue.ToString();
    }
    protected void btnModificaQtaProdotto_Click(object sender, EventArgs e)
    {
        if (gridVisualizzaProdotti.SelectedValue == null)
        {
            string script = "notifyError('Selezionare un Prodotto da modificare');";
            ScriptManager.RegisterStartupScript(this, GetType(), "btnAggiungi_Click", script, true);
            return;
        }
        PRODOTTI P = new PRODOTTI();
        P.chiave = int.Parse(gridVisualizzaProdotti.SelectedValue.ToString());
        DataTable dt = new DataTable();
        dt = P.SelectByKey();
        string QTA = dt.Rows[0]["QTA"].ToString();

        if (QTA != 0.ToString())
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "error", "notifyError('Selezionare un prodotto esaurito');", true);
            return;
        }
        else
        {
            ModalPopupExtender1.Enabled = true;
            ModalPopupExtender1.Show();
        }
        



        //bool btnClicked = Convert.ToBoolean(Session["btnClicked"]);

        //if (btnClicked)
        //{
        //    Session["btnClicked"] = false;
        //    return;
        //}
        //else
        //{
        //    Session["btnClicked"] = true;
        //    return;
        //}
    }
   
    protected void PROVA_Click(object sender, EventArgs e)
    {
        string script = "notifySuccess('Modifica avvenuta con successo!');";
        ScriptManager.RegisterStartupScript(this, GetType(), "btnAggiungi_Click", script, true);
        return;
    }

    //funzione per la chiusura di popup gestisci inventario
    public void closePopupGestisciInventario()
    {
        Session.Remove("chiaveProdottoEsaurito");
        ModalPopupExtender1.Hide();
        ModalPopupExtender1.Enabled = false;
    }
    //funzione per la chiusura di popup aggiungi prodotti
    public void closePopupAggiungiProdotto()
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), "success", "notifySuccess('Prodotto aggiunto con successo');", true);
        mp1.Hide();
        mp1.Enabled = false;
        return;
    }
    //funzione per la chiusura di popup aggiungi immagini
    public void closePopupAggiungiImmagine()
    {
        ModalPopupExtender2.Hide();
        ModalPopupExtender2.Enabled = false;
        ScriptManager.RegisterStartupScript(this, this.GetType(), "success", "notifySuccess('Prodotto aggiunto con successo');", true);
        return;
    }


    protected void btnAggiungiImmagini_Click(object sender, EventArgs e)
    {
        if (gridVisualizzaProdotti.SelectedValue == null)
        {
            string script = "notifyError('Selezionare un Prodotto al quale aggiungere una o piu immagini');";
            ScriptManager.RegisterStartupScript(this, GetType(), "btnAggiungi_Click", script, true);
            return;
        }
        else
        {
            ModalPopupExtender2.Enabled = true;
            ModalPopupExtender2.Show();
        }
    }


    //protected void chkVuoto_CheckedChanged(object sender, EventArgs e)
    //{
    //    CheckBox chkStatus =(CheckBox)sender;
    //    GridViewRow row = (GridViewRow)chkStatus.NamingContainer;
    //}


    protected void btnAggiungiProdotto_Click(object sender, EventArgs e)
    {
        mp1.Enabled = true;
        mp1.Show();
    }
}