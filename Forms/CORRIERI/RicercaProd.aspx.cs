using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
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
        //Session["searchTerm"] = ;


        if (!IsPostBack)
        {
            lit.InnerHtml = "";

            //P.searchTerm = Session[searchTerm]; //qui ci andrà la Session[searchTerm]
            DataTable dt = P.FILTRA();
            //variabile j inserita solo per testare il caricamento immagini. Va tolta quando verranno caricate le immagini e i prodotti dal db
            for (int j = 0; j < dt.Rows.Count; j++)

            {

                if (i == 0)
                {
                    lit.InnerHtml += "<div class='row py-1'>";
                    lit.InnerHtml += "<div class='col-lg-1'></div>";

                }
                string prezzo = dt.Rows[j]["prezzo"].ToString();
                string descrizione = dt.Rows[j]["descrizione"].ToString();
                lit.InnerHtml += "<div class='col-lg-2 scrollo' style='height: 350px; overflow-y: scroll; overflow-x: hidden'>";
                //lit.InnerHtml += "<asp:ImageButton ID='ImageButton1' runat='server' CssClass='image' ImageUrl='/AsyncHandler.ashx?c=" + chiave + "' /> ";
                //lit.InnerHtml += "<img id='" + chiave + "' onclick=\"showPopup(" + chiave + ",'" + titolo + "','" + descrizione + "')\" class='image' src='/AsyncHandler.ashx?c=" + chiave + "' />";
                lit.InnerHtml += "<img src=\"/assets/images/nayuta.jpg\" width='100%'; height='200px'/>";
                lit.InnerHtml += "<p>";
                lit.InnerHtml += "" + prezzo + "";
                lit.InnerHtml += "</p>";
                lit.InnerHtml += "" + descrizione + "";
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