using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Venditori_GestisciInventario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string chiaveprodotto = ddlProdotti.SelectedValue;
        PRODOTTI P = new PRODOTTI();
        P.chiave = int.Parse(chiaveprodotto);
        P.SelectByKey();
        ddlProdotti.SelectedValue = PRODOTTI.DT.Rows[0]["chiave"].ToString();
    }

    protected void btnAggiungi_Click(object sender, EventArgs e)
    {
        PRODOTTI P = new PRODOTTI();
        P.qta = txtQuantita.Text.ToString();
        P.Update();

    }
}