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

    }

    protected void btnAggiungi_Click(object sender, EventArgs e)
    {
        PRODOTTI P = new PRODOTTI();
        P.chiave = int.Parse(ddlProdotti.SelectedValue);
        P.qta = int.Parse(txtQuantita.Text.ToString());
        P.Update_QTA();

    }
}