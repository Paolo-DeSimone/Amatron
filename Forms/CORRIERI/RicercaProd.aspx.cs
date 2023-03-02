using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lit.InnerHtml = "";
            int i = 0;
            int j = 0;
            //variabile j inserita solo per testare il caricamento immagini. Va tolta quando verranno caricate le immagini e i prodotti dal db
            while (j <= 10)
            {

                if (i == 0)
                {
                    lit.InnerHtml += "<div class='row py-1'>";
                    lit.InnerHtml += "<div class='col-lg-1'></div>";

                }
                string prezzo = "9,99€";
                string descrizione = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vitae leo nisi. Suspendisse vel risus ullamcorper, sodales nisi id, iaculis lorem. Nullam velit tellus, dignissim quis consequat sit amet, bibendum a orci. Praesent vulputate scelerisque nulla, eu scelerisque ipsum pharetra at. Etiam mattis quis magna id dapibus. Mauris convallis felis at tincidunt dictum.";
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
                    j++;
                }
                else
                {
                    i++;
                    j++;
                }
            }
        }
    }
}