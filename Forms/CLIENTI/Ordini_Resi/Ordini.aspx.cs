using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using static System.Net.Mime.MediaTypeNames;

public partial class Ordini : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PRODOTTI P = new PRODOTTI();
            ORDINI O = new ORDINI();
            CLIENTI C = new CLIENTI();
            O.chiavecliente = int.Parse(Session["chiaveUSR"].ToString());
            DataTable dt = O.SelectByOrdineCliente();
            // lblDescrizione = P.descrizione;
            cardprodotto.InnerHtml = "";
            string s = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                cardprodotto.InnerHtml += "<div align=\"center\" class=\"row\">" +
                //"<div class=\"col-md-2\" style=\"width:1px\"> </div>" +
                "<div class=\"col-md-6\">" +
                //immagine
                "<div class=\"card-body\">" +
                "<img src='/Img.ashx?c=" + dt.Rows[i]["chiaveimmagine"].ToString() + "'class=\"immagine\" '/>" +
                "</div>" +
                "</div>" +
                "<div class=\"col-md-6\"> " +
                "<div class=\"card-body\">" +
                "<h3 class=\"card-title\">" +
                //lblTitolo Prodotto
                "<label id=\"lblTitolo" + i + "\" runat=\"server\">" + dt.Rows[i]["titolo"] + "</label>" +
                "</h3>" +
                //descrizione
                "<p class=\"card-text\">" + dt.Rows[i]["descrizione"] + "</p>" +
                //Prezzo
                "<p class=\"card-text\">Prezzo:<label id=\"lblPrezzo" + i + "\" runat=\"server\"></label>" + " &euro;" + dt.Rows[i]["prezzo"] + "</p>" +
                "<button id=\"btnRecensione" + i + "\" runat=\"server\" class=\"btn masterButton\" style=\"margin-right:20px\">Lascia una recensione</button>" +
                "<button id=\"btnReso" + i + "\" runat=\"server\" class=\"btn masterButton\">Effettua reso</button>" +
                //Stato
                "<label class=\"mt-3\" id=\"lbl" + i + "\" runat=\"server\">Stato della spedizione:</label>" + " " +
                "<label id=\"lblStato" + i + "\" runat=\"server\">" + dt.Rows[i]["statosp"] + "</label>" +
                "</div>" +
                "</div>" +
                //"<div class=\"col-md-2\" style=\"width:1px\"> </div>" +
                "</div>" +
                "<hr class=\"opacity-100\"style=\"border-color:lightgray;\"/>";
                
                // "</div>";
            }
            s = cardprodotto.InnerHtml;
        }
    }

    protected void btnresi_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Forms/CLIENTI/Ordini_Resi/ResiOrdine.aspx");
    }
}