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
                    "<div class=\"bbb_viewed_name\"><b>" + dt.Rows[i]["TITOLO"] + "</b></div>"+
                    "<div class=\"d-flex justify-content-center justify-item-center text-center\">";

                VALUTAZIONI V = new VALUTAZIONI();
                V.chiaveprodotto = int.Parse(dt.Rows[i]["chiave"].ToString());
                DataTable DT = V.Media();
                if (String.IsNullOrEmpty(DT.Rows[0]["MEDIA"].ToString()))
                {

                }
                else
                {
                    for (int y = 0; y < int.Parse(DT.Rows[0]["MEDIA"].ToString()); y++)
                    {
                        caroselNovita.InnerHtml +="<img style =\"width:20px; height:20px;\" src='/assets/images/yellowstar.png'>";
                       
                    }
                }
                caroselNovita.InnerHtml += "</div>" +
                    "<div class=\"bbb_viewed_price\"><b>€" + dt.Rows[i]["PREZZO"] + "</b></div>" +
                    "<div class=\"bbb_viewed_name\">" + CAT.Rows[0]["CATEGORIA"] + "</div>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    "</div>";
            }

            DataTable VENDUTI = P.MAX20Venduti();
            caroselPiuVenduti.InnerHtml = "";
            for (int j = 0; j < VENDUTI.Rows.Count; j++)
            {
                P.chiave = int.Parse(VENDUTI.Rows[j]["chiavePRODOTTO"].ToString());
                DataTable RIS = P.SelectByKey();

                C.chiave = int.Parse(RIS.Rows[0]["chiaveCATEGORIA"].ToString());
                DataTable CATEGORIA = C.SelectByKey();

                caroselPiuVenduti.InnerHtml += "<div class=\"owl-item\">" +
                    "<a href = \"/Forms/PRODOTTI/PaginaProdotto.aspx?c=" + VENDUTI.Rows[j]["chiavePRODOTTO"] + "\">" +
                    "<div class=\"bbb_viewed_item discount d-flex flex-column align-items-center justify-content-center text-center\">" +
                    "<div class=\"bbb_viewed_image\">" +
                    "<img style=\"width:150px; height:150px;\"  src='/Img.ashx?c=" + VENDUTI.Rows[j]["chiavePRODOTTO"] + "' >" +
                    "</div>" +
                    "<div class=\"bbb_viewed_content text-center\">" +
                    "<div class=\"bbb_viewed_name\"><b>" + RIS.Rows[0]["TITOLO"] + "</b></div>" +
                     "<div class=\"d-flex justify-content-center justify-item-center text-center\">";

                VALUTAZIONI V = new VALUTAZIONI();
                V.chiaveprodotto = int.Parse(VENDUTI.Rows[j]["chiaveProdotto"].ToString());
                DataTable VE = V.Media();
                if (String.IsNullOrEmpty(VE.Rows[0]["MEDIA"].ToString()))
                {

                }
                else
                {
                    for (int h = 0; h < int.Parse(VE.Rows[0]["MEDIA"].ToString()); h++)
                    {
                        caroselPiuVenduti.InnerHtml += "<img style =\"width:20px; height:20px;\" src='/assets/images/yellowstar.png'>";

                    }
                }
                caroselPiuVenduti.InnerHtml += "</div>" +
                    "<div class=\"bbb_viewed_price\"><b>€" + RIS.Rows[0]["PREZZO"] + "</b></div>" +
                    "<div class=\"bbb_viewed_name\">" + CATEGORIA.Rows[0]["CATEGORIA"] + "</div>" +
                    "</div>" +
                    "</div>" +
                    "</a>" +
                    "</div>";
            }

            DataTable VOTATI = P.MAX20Valutazione();
            caroselpiuVotati.InnerHtml = "";
            for (int f = 0; f < VOTATI.Rows.Count; f++)
            {
                P.chiave = int.Parse(VOTATI.Rows[f]["chiavePRODOTTO"].ToString());
                DataTable RISULTATO = P.SelectByKey();
                
                C.chiave = int.Parse(RISULTATO.Rows[0]["chiaveCATEGORIA"].ToString());
                DataTable RISCATEGORIA = C.SelectByKey();

                caroselpiuVotati.InnerHtml += "<div class=\"owl-item\">" +
                    "<a href = \"/Forms/PRODOTTI/PaginaProdotto.aspx?c=" + VOTATI.Rows[f]["chiavePRODOTTO"] + "\">" +
                    "<div class=\"bbb_viewed_item discount d-flex flex-column align-items-center justify-content-center text-center\">" +
                    "<div class=\"bbb_viewed_image\">" +
                    "<img style=\"width:150px; height:150px;\" src='/Img.ashx?c=" + VOTATI.Rows[f]["chiavePRODOTTO"] + "' >" +
                    "</div>" +
                    "<div class=\"bbb_viewed_content text-center\">" +
                    "<div class=\"bbb_viewed_name\"><b>" + RISULTATO.Rows[0]["TITOLO"] + "</b></div>" +
                    "<div class=\"d-flex justify-content-center justify-item-center text-center\">";

                VALUTAZIONI V = new VALUTAZIONI();
                V.chiaveprodotto = int.Parse(VOTATI.Rows[f]["chiaveProdotto"].ToString());
                DataTable VOT = V.Media();
                if (String.IsNullOrEmpty(VOT.Rows[0]["MEDIA"].ToString()))
                {

                }
                else
                {
                    for (int u = 0; u < int.Parse(VOT.Rows[0]["MEDIA"].ToString()); u++)
                    {
                        caroselpiuVotati.InnerHtml += "<img style =\"width:20px; height:20px;\" src='/assets/images/yellowstar.png'>";

                    }
                }
                caroselpiuVotati.InnerHtml += "</div>" +
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