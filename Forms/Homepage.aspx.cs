using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PRODOTTI P = new PRODOTTI();
            CATEGORIE C = new CATEGORIE();

            DataTable dt = P.MAX20Novita();
           
            caroselNovita.InnerHtml = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                C.chiave = int.Parse(dt.Rows[i]["chiaveCATEGORIA"].ToString());
                DataTable CAT = C.SelectByKey();
                caroselNovita.InnerHtml += "<div class=\"owl-item\">" +
                    "<a href = \"/Forms/PRODOTTI/PaginaProdotto.aspx?c=" + dt.Rows[i]["chiave"] + "\">" +
                    "<div class=\"bbb_viewed_item discount d-flex flex-column align-items-center justify-content-center text-center\">" +
                    "<div class=\"bbb_viewed_image\">" +
                    "<img style=\"width:160px; height:160px;\" src='/Img.ashx?c=" + dt.Rows[i]["chiave"] + "' >" +
                    "</div>" +
                    "<div class=\"bbb_viewed_content text-center\">" +
                    "<div class=\"bbb_viewed_name\"><b>" + dt.Rows[i]["TITOLO"] + "</b></div>" +
                    "<div class=\"bbb_viewed_price\"><b>€" + dt.Rows[i]["PREZZO"] + "</b></div>" +
                    "<div class=\"bbb_viewed_name\">" + CAT.Rows[0]["CATEGORIA"] + "</div>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    "</div>";
            }

            DataTable VENDUTI = P.MAX20Venduti();
            caroselPiuVenduti.InnerHtml = "";
            for (int i = 0; i < VENDUTI.Rows.Count; i++)
            {
                P.chiave = int.Parse(VENDUTI.Rows[i]["chiavePRODOTTO"].ToString());
                DataTable RIS = P.SelectByKey();

                C.chiave = int.Parse(RIS.Rows[0]["chiaveCATEGORIA"].ToString());
                DataTable CATEGORIA = C.SelectByKey();

                caroselPiuVenduti.InnerHtml += "<div class=\"owl-item\">" +
                    "<a href = \"/Forms/PRODOTTI/PaginaProdotto.aspx?c=" + VENDUTI.Rows[i]["chiavePRODOTTO"] + "\">" +
                    "<div class=\"bbb_viewed_item discount d-flex flex-column align-items-center justify-content-center text-center\">" +
                    "<div class=\"bbb_viewed_image\">" +
                    "<img style=\"width:150px; height:150px;\"  src='/Img.ashx?c=" + VENDUTI.Rows[i]["chiavePRODOTTO"] + "' >" +
                    "</div>" +
                    "<div class=\"bbb_viewed_content text-center\">" +
                    "<div class=\"bbb_viewed_name\"><b>" + RIS.Rows[0]["TITOLO"] + "</b></div>" +
                    "<div class=\"bbb_viewed_price\"><b>€" + RIS.Rows[0]["PREZZO"] + "</b></div>" +
                    "<div class=\"bbb_viewed_name\">" + CATEGORIA.Rows[0]["CATEGORIA"] + "</div>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    "</div>";
            }

            DataTable VOTATI = P.MAX20Valutazione();
            caroselpiuVotati.InnerHtml = "";
            for (int i = 0; i < VOTATI.Rows.Count; i++)
            {
                P.chiave = int.Parse(VOTATI.Rows[i]["chiavePRODOTTO"].ToString());
                DataTable RISULTATO = P.SelectByKey();
                
                C.chiave = int.Parse(RISULTATO.Rows[0]["chiaveCATEGORIA"].ToString());
                DataTable RISCATEGORIA = C.SelectByKey();

                caroselpiuVotati.InnerHtml += "<div class=\"owl-item\">" +
                    "<a href = \"/Forms/PRODOTTI/PaginaProdotto.aspx?c=" + VOTATI.Rows[i]["chiavePRODOTTO"] + "\">" +
                    "<div class=\"bbb_viewed_item discount d-flex flex-column align-items-center justify-content-center text-center\">" +
                    "<div class=\"bbb_viewed_image\">" +
                    "<img style=\"width:150px; height:150px;\" src='/Img.ashx?c=" + VOTATI.Rows[i]["chiavePRODOTTO"] + "' >" +
                    "</div>" +
                    "<div class=\"bbb_viewed_content text-center\">" +
                    "<div class=\"bbb_viewed_name\"><b>" + RISULTATO.Rows[0]["TITOLO"] + "</b></div>" +
                    "<div class=\"bbb_viewed_price\"><b>€" + RISULTATO.Rows[0]["PREZZO"] + "</b></div>" +
                    "<div class=\"bbb_viewed_name\">" + RISCATEGORIA.Rows[0]["CATEGORIA"] + "</div>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    "</div>";
            }
            CONFIG CONF = new CONFIG();
            DataTable PRIME = CONF.SelectAll();
            lblPrime.Text = PRIME.Rows[0]["COSTOPRIME"].ToString();
        }
    }
}