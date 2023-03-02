using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
   

    protected void Page_Load(object sender, EventArgs e)
    {
        PRODOTTI P = new PRODOTTI();
        P.SelectByKey();
        DataTable dt = new DataTable();

       // Session["qta"] = dt.Rows[0]["qta"].ToString();
        Session["qta"] = 1;
        //for (int i=0; i<int.Parse(dt.Rows[0]["qta"].ToString()); i++)
        //{
        //     ddlCarrello.Attributes.Add(i.ToString(), i.ToString()); 
        //}

        CLIENTI C = new CLIENTI();
        C.SELECTBYKEY();
        DataTable table = new DataTable();
        // Session["chiave"] = table.Rows[0]["chiave"].ToString();
        Session["chiave"] = 1;
    }

    protected void Aggiungi()
    {
        PRODOTTI P = new PRODOTTI();
        CARRELLO C = new CARRELLO();
        C.QTA = int.Parse(ddlCarrello.SelectedValue.ToString());
        C.INSERT();
        return;
    }
}