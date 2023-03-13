using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        PRODOTTI P = new PRODOTTI();

        int i = 0;
        // c rappresenta la categoria selezionata, mentre p è ciò che scrivo nella barra di ricerche
        string c = Request.QueryString["c"].ToString();
        string p = Request.QueryString["p"].ToString();

        if (!IsPostBack)
        {
            lit.InnerHtml = "";

            //P.searchTerm = Session[searchTerm]; //qui ci andrà la Session[searchTerm]

            DataTable dt = P.FILTRA(c, p);
            //variabile j inserita solo per testare il caricamento immagini. Va tolta quando verranno caricate le immagini e i prodotti dal db
            for (int j = 0; j < dt.Rows.Count; j++)
            {

                if (i == 0)
                {
                    lit.InnerHtml += "<div class='row py-1'>";
                    lit.InnerHtml += "<div class='col-lg-1'></div>";

                }
                string titolo = dt.Rows[j]["titolo"].ToString();
                string prezzo = dt.Rows[j]["prezzo"].ToString();
                string descrizione = dt.Rows[j]["descrizione"].ToString();
                lit.InnerHtml += "<div class='col-lg-2 scrollo' style='height: 350px; overflow-y: scroll; overflow-x: hidden'>";
                //lit.InnerHtml += "<asp:ImageButton ID='ImageButton1' runat='server' CssClass='image' ImageUrl='/AsyncHandler.ashx?c=" + chiave + "' /> ";
                //lit.InnerHtml += "<img id='" + chiave + "' onclick=\"showPopup(" + chiave + ",'" + titolo + "','" + descrizione + "')\" class='image' src='/AsyncHandler.ashx?c=" + chiave + "' />";
                lit.InnerHtml += "<a href='/Forms/PRODOTTI/PaginaProdotto.aspx?c=" + dt.Rows[j]["chiave"] + "' >";
                lit.InnerHtml += "<img src='/Img.ashx?c=" + dt.Rows[j]["chiave"] + "' class='d-block w-100' alt='Product Image 1' style='height:200px'/>";
                lit.InnerHtml += "<p style='margin:0px;'><b>";
                lit.InnerHtml += titolo;
                lit.InnerHtml += "</b></p>";

                VALUTAZIONI V = new VALUTAZIONI();
                V.chiaveprodotto = int.Parse(dt.Rows[j]["chiave"].ToString());
                DataTable DT = V.Media();
                if (String.IsNullOrEmpty(DT.Rows[0]["MEDIA"].ToString()))
                {

                }
                else
                {
                    for (int y = 0; y < int.Parse(DT.Rows[0]["MEDIA"].ToString()); y++)
                    {
                    lit.InnerHtml += "<img style =\"width:20px; height:20px;\" src='/assets/images/yellowstar.png'>";
                    }
                }

                lit.InnerHtml += "<p style='margin:0px;'>";
                lit.InnerHtml += "€" + prezzo + "";
                lit.InnerHtml += "</p>";
                lit.InnerHtml += "<p style='margin:0px;'>Cat.:&nbsp;" + dt.Rows[j]["CATEGORIA"] + "</p>";
                lit.InnerHtml += "" + descrizione + "";
                lit.InnerHtml += "</a>";
                lit.InnerHtml += "</div>";

                if (i == 4)
                {
                    lit.InnerHtml += "<div class='col-lg-1'></div>";
                    lit.InnerHtml += "</div>";
                    i = 0;

                }
                else
                {
                    i++;

                }

            }
        }
    }
}