using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.ServiceModel.Dispatcher;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        PRODOTTI P = new PRODOTTI();
        P.chiave = 1; //Session["chiaveProdotto"]
        DataTable dt = P.SelectByKey();
        //litImg1
        //litImg2 Da fillare col gestore
        //litImg3
        litProdotto.Text = dt.Rows[0]["titolo"].ToString();
        litPrezzoCentro.Text = dt.Rows[0]["prezzo"].ToString();
        litPrezzoDestra.Text = dt.Rows[0]["prezzo"].ToString();
        litDescrizione.Text = dt.Rows[0]["descrizione"].ToString();

        CATEGORIE CA = new CATEGORIE();
        CA.chiave = Convert.ToInt32(dt.Rows[0]["chiaveCategoria"]);
        DataTable dtCa = CA.SelectByKey();
        litCategoria.Text = dtCa.Rows[0]["Categoria"].ToString();

        P.qta = Convert.ToInt32(dt.Rows[0]["qta"]);
        if (dt.Rows.Count > 0)
        {
            for (int i = 1; i <= P.qta; i++)
            {
                ddlCarrello.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }              
        }
    }

    protected void btnAggiungi_Click(object sender, EventArgs e)
    {
        PRODOTTI P = new PRODOTTI();
        CARRELLO C = new CARRELLO();

        //C.chiavePRODOTTO = //Session["chiaveProdotto"];
        //C.chiaveCLIENTE = Session["chiaveCliente"];
        C.QTA = int.Parse(ddlCarrello.SelectedValue.ToString());
        C.INSERT();
        return;
    }
}