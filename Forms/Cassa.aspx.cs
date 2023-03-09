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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CLIENTI C = new CLIENTI();
            C.chiave = int.Parse(Session["chiaveUSR"].ToString());
            DataTable DT = C.SELECTBYKEY();
            lblMostraIndirizzoConsegna.Text = DT.Rows[0]["INDIRIZZO"].ToString() + DT.Rows[0]["CITTA"].ToString() + DT.Rows[0]["PROVINCIA"].ToString();

<<<<<<< HEAD
            //CARRELLO CR = new CARRELLO();
            //DataTable dt = CR.SelectAllItemsInCart(int.Parse(Session["chiaveUSR"].ToString()));
            //string s = "";
            //for (int i = 0; i < dt.Rows.Count; i++)
            //{
            //    s += " <div class=\"col-md-4\";>" +
            //   //immagine in griglia
            //   "<img src='/GestoreImmagini.ashx?c=" + dt.Rows[i]["IMMAGINEprodotto"] + "' class='d-block w-100' style='width:600px; height:450px' alt='Product Image 1'/>" +
            //   "</div>";
            //}
=======
            CARRELLO CR = new CARRELLO();
            DataTable dt = CR.SelectAllItemsInCart(int.Parse(Session["chiaveUSR"].ToString()));

<<<<<<< HEAD
            //grigliaOrdini.DataBind();
            foreach(GridViewRow r in grigliaOrdini.Rows)
            {
                r.Cells[0].Text = "<img src=\"/Img.ashx?c=" + r.Cells[1].Text.ToString() +"\" />";
            }
>>>>>>> 946c4a8d25fa5abf8ade2c7492eed65f3989e0de
=======
            
        }
        grigliaOrdini.DataBind();
        foreach (GridViewRow r in grigliaOrdini.Rows)
        {
            r.Cells[0].Text = "<img src=\"/Img.ashx?c=" + r.Cells[1].Text.ToString() + "\" />";
>>>>>>> b8e06cb7711fbbf6a3edb88d090e9a2c21b0ddb4
        }

    }
}