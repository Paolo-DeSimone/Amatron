using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.SqlServer.Server;
using System.Collections;
using System.Web.Services;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page
{
            int totaleCarrello;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CLIENTI C = new CLIENTI();
            C.chiave = int.Parse(Session["chiaveUSR"].ToString());
            DataTable DT = C.SELECTBYKEY();
            lblMostraIndirizzoConsegna.Text = DT.Rows[0]["INDIRIZZO"].ToString() + DT.Rows[0]["CITTA"].ToString() + DT.Rows[0]["PROVINCIA"].ToString();

            CARRELLO CR = new CARRELLO();
            DataTable dt = CR.SelectAllItemsInCart(int.Parse(Session["chiaveUSR"].ToString()));
<<<<<<< B-Gattolin
=======
            //Session["TotaleCarrello"] = dt.Rows[0]
            
            //for (int i = 0; i < grigliaOrdini.Rows.Count; i++)
            //{
            //    totaleCarrello = totaleCarrello + int.Parse(grigliaOrdini.Rows[i]["PREZZOprodotto"]);
            //}


>>>>>>> GB-WEBSERVICES
        }
        grigliaOrdini.DataBind();

        //Session["TotaleCarrello"] = grigliaOrdini.Rows[i]["PREZZOprodotto"];
        foreach (GridViewRow r in grigliaOrdini.Rows)
        {
            r.Cells[0].Text = "<img src=\"/Img.ashx?c=" + r.Cells[1].Text.ToString() + "\" />";
            
        }

    }
}