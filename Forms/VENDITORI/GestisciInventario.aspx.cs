using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Venditori_GestisciInventario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //lavoro sul postback in modo che il campo QTA venga riempito
        //il campo QTA può essere riempito solamente se un prodotto ha quantita 0
        //bisognerà effettuare un controllo

        if (!IsPostBack)
        {

            if (!IsPostBack)
            {

                //DA LAVORARE SUL CONTROLLO PERCHè SE IL VALORE PASSATO NELLA SESSION è DIVERSO DA 0 ALLORA NON
                //SARà DISPLAYATO E NON SARà NEMMENO POSSIBILE AGGIORNARLO
                //AGGIUNGERE ANCHE I VARI ALERT CON NOTIFY.JS

                if (Session["chiaveProdottoEsaurito"] == null)
                {
                    return;
                }

                string chiaveProdottoEsaurito = Session["chiaveProdottoEsaurito"].ToString();
                if (chiaveProdottoEsaurito != 0.ToString())
                {
                    txtQuantita.Text = "";
                    return;
                }
               
                //if (String.IsNullOrEmpty(chiavegriglia))
                //{
                //    ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Nessun elemento selezionato');", true);
                //    return;
                //}



                PRODOTTI P = new PRODOTTI();
                P.chiave = int.Parse(chiaveProdottoEsaurito);
                DataTable dt = new DataTable();
                dt = P.SelectByKey();


                txtQuantita.Text = dt.Rows[0]["QTA"].ToString();
            }


        }
    }

    protected void btnAggiungi_Click(object sender, EventArgs e)
    {
        string chiaveProdottoEsaurito = Session["chiaveProdottoEsaurito"].ToString();

        if (chiaveProdottoEsaurito == null)
        {
            //Consultare Kevin se qui vogliamo dare un notify.js o cosa
            return;
        }
        if (txtQuantita.Text == "")
        {
            //Consultare Kevin se qui vogliamo dare un notify.js o cosa
        }

        PRODOTTI P = new PRODOTTI();
        P.qta = int.Parse(txtQuantita.Text.ToString());
        P.Update_QTA();
        txtQuantita.Text = "";
    }
}