using AjaxControlToolkit;
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
        if (!IsPostBack)
        {
            if (Session["chiaveProdottoEsaurito"] == null)
            {

                txtQuantita.Text = "";
                btnAggiungi.Visible = false;
                ///Qui potrebbe essere inserita una label/ notify che dice che non è stato selezionato un prodotto
                return;
            }
            if (String.IsNullOrEmpty(Session["chiaveProdottoEsaurito"].ToString())) 
            {
                return;
            }
            string chiaveProdottoEsaurito = Session["chiaveProdottoEsaurito"].ToString();
            PRODOTTI P = new PRODOTTI();
            P.chiave = int.Parse(chiaveProdottoEsaurito);
            DataTable dt = new DataTable();
            dt = P.SelectByKey();
            string QTA = dt.Rows[0]["QTA"].ToString();
            

            ///controllo se un prodotto ha valore QTA allora non gli facciamo vedere il btnSalva
            if (QTA != 0.ToString())
            {
                txtQuantita.Text = "";
                btnAggiungi.Visible = false;
                return;
            }

            txtQuantita.Text = QTA.ToString();
        }



    }

    protected void btnAggiungi_Click(object sender, EventArgs e)
    {
        //dichiaro una stringa chiaveProdottoEsaurito alla quale assegno la Session che contiene la chiave del prodotto selezionato dalla griglia
        string chiaveProdottoEsaurito = Session["chiaveProdottoEsaurito"].ToString();

        if (chiaveProdottoEsaurito == null)
        {
            return;
        }
        if (txtQuantita.Text == "")
        {
            return;
        }
        //Istanziamo l'oggetto P dalla classe PRODOTTI
        PRODOTTI P = new PRODOTTI();
        //Il membro dato "qta" di P avrà il valore inserito nel textbox per la quantità
        P.qta = int.Parse(txtQuantita.Text.ToString());
        //Il membro dato "chiave" di P avrà il valore della chiave del prodotto presa dalla Session durante la selezione della griglia
        P.chiave = int.Parse(Session["chiaveProdottoEsaurito"].ToString());
        //Eseguo il metoto Update_QTA() per aggiornare la quantità del prodotto
        P.Update_QTA();
        //Mando a schermo una notifica di avvenuta modifica
        Session["chiaveProdottoEsaurito"] = "";
        ScriptManager.RegisterStartupScript(this, this.GetType(), "closePopup", "window.parent.location.href='/Forms/VENDITORI/VisualizzaProdotti.aspx';", true);
        
    }
}