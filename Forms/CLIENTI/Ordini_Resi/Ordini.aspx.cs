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
                "<img src='/Img.ashx?c=" + dt.Rows[i]["chiaveimmagine"].ToString() + "'class=\"immagine\" '/>" +
                "</div>" +
                "<div class=\"col-md-6\"> " +
                "<div class=\"card-body\">" +
                "<h5 class=\"card-title\">" +
                //lblTitolo Prodotto
                "<label id=\"lblTitolo"+ i + "\" runat=\"server\">" + dt.Rows[i]["titolo"] + "</label>" +
                "</h5>" +
                //descrizione
                "<p class=\"card-text\">Display 14\"" + dt.Rows[i]["descrizione"] + "</p>" +
                "<button id=\"btnRecensione" + i + "\" runat=\"server\" class=\"btn masterButton\" style=\"margin-right:10px\">Lascia una recensione</button>" +
                "<button id=\"btnReso" + i + "\" runat=\"server\" class=\"btn masterButton\">Effettua reso</button>" +
                //Prezzo
                "<p class=\"card-text\">Prezzo:<asp:Label ID=\"lblPrezzo" + i + "\" runat=\"server\" Text=\"Label\"/>" + dt.Rows[i]["prezzo"] + "</p>" +
                //Stato
                "<label id=\"lbl" + i + "\" runat=\"server\">stato della spedizione: </label>" +
                "<label id=\"lblStato" + i + "\" runat=\"server\">" + dt.Rows[i]["stato"] + "</label>" +
                "</div>" +
                "</div>" +
                //"<div class=\"col-md-2\" style=\"width:1px\"> </div>" +
                "</div>";
               // "</div>";
            }
            s = cardprodotto.InnerHtml;
        }
    }
}