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
                 "<asp:Label ID=\"lblTitolo\" runat=\"server\" Text=\"Label\">      </asp:Label>" +
                 "</h5>" +
                 "<p class=\"card-text\">Display 14\", Intel Core i7, Ram 8GB, SSD 240GB, Win 10Pro, Pacchetto Office 2021</p>" +
                 "<asp:Button ID=\"btnRecensione\" runat=\"server\" Text=\"Lascia una recensione\" class=\"btn masterButton\" />" +
                 "<asp:Button ID=\"btnReso\" runat=\"server\" Text=\"Effettua reso\" class=\"btn masterButton\" />" +
                 "<p class=\"card-text\">Prezzo:<asp:Label ID=\"lblPrezzo\" runat=\"server\" Text=\"Label\">550€</asp:Label></p>" +
                 "<asp:Label ID=\"lblStato\" runat=\"server\" Text=\"\"></asp:Label>" +
                 "</div>" +
                 "</div>" ;

            }
        }
    }
}