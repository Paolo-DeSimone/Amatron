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
        //PRODOTTI P = new PRODOTTI();
        //P.chiave = 1;
        ////Session["chiaveProdotto"] = P.SelectByKey();
        //DataTable dt = P.SelectByKey();
        //P.qta = int.Parse(dt.Rows[0]["qta"].ToString());
        //for (int i = 0; i <= P.qta; i++)
        //{
        //    ddlCarrello.Attributes.Add(i.ToString(), i.ToString());
        //}
        // Retrieve information about the product with the specified key
        //SqlDataAdapter da = new SqlDataAdapter();
        //da.Fill(dt);
        // If the DataTable contains any rows, set the quantity of the product and add options to the dropdown list

        
        PRODOTTI P = new PRODOTTI();
        P.chiave = 1;
        DataTable dt = P.SelectByKey();
        P.qta = Convert.ToInt32(dt.Rows[0]["qta"]);
        if (dt.Rows.Count > 0)
        {
            for (int i = 0; i <= P.qta; i++)
            {
                ddlCarrello.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }

        CLIENTI C = new CLIENTI();
        C.SELECTBYKEY();
        DataTable table = new DataTable();
        // Session["chiave"] = table.Rows[0]["chiave"].ToString();
        Session["chiave"] = 1;
    }

    protected void btnAggiungi_Click(object sender, EventArgs e)
    {
        PRODOTTI P = new PRODOTTI();
        CARRELLO C = new CARRELLO();
        C.QTA = int.Parse(ddlCarrello.SelectedValue.ToString());
        C.INSERT();
        return;
    }
}