using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

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
           // string s = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                cardprodotto.InnerHtml += "<div class=\"row\">" +
                "<div class='col-md-4'>" +
                //immagine
                "<img src='/Img.ashx?c=" + dt.Rows[i]["chiaveimmagine"].ToString() + "'class=\"w-100\" '/>" +
                "</div>" +
                "<div class=\"col-md-8\"> " +
                "<div class=\"card-body\">" +
                "<h5 class=\"card-title\">" +
                //lblTitolo Prodotto
                "<asp:Label ID=\"lblTitolo\" runat=\"server\" Text=\"Label\">" + dt.Rows[i]["titolo"] + "</asp:Label>" +
                "</h5>" +
                //descrizione
                "<p class=\"card-text\">Display 14\"" + dt.Rows[i]["descrizione"] + "</p>" +
                "<asp:Button ID=\"btnRecensione\"runat=\"server\"Text=\"Lascia una recensione\" class=\"btn masterButton\"/>" +
                "<asp:Button ID=\"btnReso\"runat=\"server\"Text=\"Effettua reso\"class='btn masterButton'/>"  +
                //Prezzo
                "<p class=\"card-text\">Prezzo:<asp:Label ID='lblPrezzo' runat='server' Text='Label'>" + dt.Rows[i]["prezzo"] + "</p>" +
                //Stato
                "<asp:Label ID=\"lblStato\" runat=\"server\" Text=\"\">" + dt.Rows[i]["stato"] + "</asp:Label>" +
                "</div>" +
                "</div>" +
                "</div>";
               // "</div>";
            }
           // s = cardprodotto.InnerHtml;
        }
    }
}