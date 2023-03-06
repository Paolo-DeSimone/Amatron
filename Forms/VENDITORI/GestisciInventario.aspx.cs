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
                //                                                                      CHIEDERE A KEVIN
                // ++++++++++++++++++++++++++++++++++++++++++++++++++ QUESTION: Vogliamo far apparire qualche messaggio quando si seleziona un prodotto con una quantità superiore a 0?
                // ++++++++++++++++++++++++++++++++++++++++++++++++++ QUESTION:Vogliamo far apparire un messaggio quando non si seleziona un prodotto ma si preme sul btn per il popup?
                //                                                                      CHIEDERE A KEVIN

                
                
                if (Session["chiaveProdottoEsaurito"] == null)
                {
                    txtQuantita.Text = "";
                    btnAggiungi.Visible = false;
                    //error
                    //string script = @"notifyError('Non è stato selezionato nessun prodotto da rifornire')";
                    //ScriptManager.RegisterStartupScript(this, GetType(), "Page_Load", script, true);
                    return;
                }
                ///STO FACENDO VARIE PROVE PER IL CONTROLLO DELLE QUANTITà SETTATE A 0
                string chiaveProdottoEsaurito = Session["chiaveProdottoEsaurito"].ToString();
                //if (String.IsNullOrEmpty(chiavegriglia))
                //{
                //    ClientScript.RegisterStartupScript(this.GetType(), "ERRORE", "alert('Nessun elemento selezionato');", true);
                //    return;
                //}



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
                    //string script = @"notifyError('Non è possibile rifornire dei prodotti che sono ancora disponibili')";
                    //ScriptManager.RegisterStartupScript(this, GetType(), "Page_Load", script, true);
                    return;
                }

                txtQuantita.Text = QTA.ToString();
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
        string script = @"notifyError('Non è possibile rifornire dei prodotti che sono ancora disponibili')";
        ScriptManager.RegisterStartupScript(this, GetType(), "btnAggiungi_Click", script, true);
        ///Salveremo la chiave del venditore presa dalla session in una variabile string/int in modo da assegnarla poi
        ///al membro dato "chiave" di PRODOTTI
        ///AL MOMENTO NON SALVA PERCHè GLI MANCA LA CHIAVE
        PRODOTTI P = new PRODOTTI();
        P.qta = int.Parse(txtQuantita.Text.ToString());
        //P.chiave = int.Parse(Session["chiaveVenditore"]);
        P.Update_QTA();
        txtQuantita.Text = "";
    }
}