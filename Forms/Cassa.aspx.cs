﻿using System;
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
using System.Reflection.Emit;

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

            CARRELLO CR = new CARRELLO();
            DataTable dt = CR.SelectAllItemsInCart(int.Parse(Session["chiaveUSR"].ToString()));
            //Session["TotaleCarrello"] = dt.Rows[0]

            //for (int i = 0; i < grigliaOrdini.Rows.Count; i++)
            //{
            //    totaleCarrello = totaleCarrello + int.Parse(grigliaOrdini.Rows[i]["PREZZOprodotto"]);
            //}
        float sum = 0;
        for (int i = 0; i < grigliaOrdini.Rows.Count; ++i)
        {
            sum += float.Parse(grigliaOrdini.Rows[i].Cells[5].Text);
        }
            payInput.Text = "Il totale del carrello è di" + " " + " " + sum + " " + "&euro;";
        }
        grigliaOrdini.DataBind();
        //Session["TotaleCarrello"] = grigliaOrdini.Rows[i]["PREZZOprodotto"];
        foreach (GridViewRow r in grigliaOrdini.Rows)
        {
            r.Cells[0].Text = "<img src=\"/Img.ashx?c=" + r.Cells[1].Text.ToString() + "\" />";
            
        }


    }

    protected void paypalBottone_Click(object sender, EventArgs e)
    {
        ORDINI O = new ORDINI();
        O.chiavecliente = int.Parse(Session["chiaveUSR"].ToString());
        O.InsertFromCarrello();
    }

    protected void btnprova_Click(object sender, EventArgs e)
    {
        ORDINI O = new ORDINI();
        O.chiavecliente = int.Parse(Session["chiaveUSR"].ToString());
        O.InsertFromCarrello();
    }
}