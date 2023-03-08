using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ordini : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PRODOTTI P = new PRODOTTI();
            ORDINI O = new ORDINI();
            CLIENTI C = new CLIENTI();
            DataTable dt = new DataTable();

            dt = O.SelectAll();
            O.chiavecliente = int.Parse(dt.Rows[0]["chiaveCLIENTE"].ToString());
                
           // lblDescrizione = P.descrizione;
            cardprodotto.InnerHtml = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                cardprodotto.InnerHtml += " <div class=\"col-md-4\";>" +
                 "<img src='/GestoreImmagini.ashx?c=" + dt.Rows[i]["chiave"] + "' class='d-block w-100' style='width:600px; height:450px' alt='Product Image 1'/>" +
                 "</div>" +
                 "<div class=\"col -md-8\"> " +
                 "<div class=\"card-body\">" +
                 "<h5 class=\"card-title\">" +
                 //lblTitolo Prodotto
                 "<asp:Label ID=\"lblTitolo\" runat=\"server\" Text=\"Label\">" + dt.Rows[i]["titolo"] + "</asp:Label>" +
                 "</h5>" +
                 //descrizione
                 "<p class=\"card-text\">Display 14\"" + dt.Rows[i]["descrizione"] + "</p>" +
                 "<asp:Button ID=\"btnRecensione\" runat=\"server\" Text=\"Lascia una recensione\" class=\"btn masterButton\" />" +
                 "<asp:Button ID=\"btnReso\" runat=\"server\" Text=\"Effettua reso\" class=\"btn masterButton\" />" +
                 //Prezzo
                 "<p class=\"card-text\">Prezzo:<asp:Label ID=\"lblPrezzo\" runat=\"server\" Text=\"Label\">" + dt.Rows[i]["prezzo"] + "</p>" +
                 //Stato
                 "<asp:Label ID=\"lblStato\" runat=\"server\" Text=\"\">" + dt.Rows[i]["stato"] + "</asp:Label>" +
                 "</div>" +
                 "</div>" ;
            }
        }
    }
}