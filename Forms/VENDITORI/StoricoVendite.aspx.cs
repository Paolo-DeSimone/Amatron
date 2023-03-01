using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string titolo ="Bel Libro";
        float prezzo = 173;
        string categoria ="Libri";
        string descrizione = "bel libro. interessante e intrattenente. adatto a tutti";
        DateTime data = DateTime.Today;

        if (!IsPostBack)
        {
            imgContainer.InnerHtml = "";

            for(int i=0; i<4; i++)
            {
                imgContainer.InnerHtml += "<div class='col-lg-6'> <div class='card' style='background-color: #f5f5f5; margin-bottom: 15px;'>";                    
                imgContainer.InnerHtml += "<div class='row'> <div class='col-md-5'> <img class='img-thumbnail boxImg' src='/assets/images/nayuta.jpg'></div>";
                imgContainer.InnerHtml += "<div class='col-md-7' style='text-align: left; align-self: end'> <asp:Label ID = 'lblTitolo' Class='contenimentoTitolo' runat='server'>";
                imgContainer.InnerHtml += "<h5>" + titolo + "</h5> </asp:Label><asp:Label ID='lblPrezzo' runat='server'><h5>" + prezzo.ToString() + "</h5></asp:Label>";
                imgContainer.InnerHtml += "<asp:Label ID = 'lblCategoria' runat = 'server'><h6>"+categoria+"</h6></asp:Label>";
                imgContainer.InnerHtml += "<asp:Label ID = 'lblDescrizione' class='DescrizioneProdotto' runat='server'> "+descrizione+" </asp:Label>";
                imgContainer.InnerHtml += "<asp:Label ID = 'lblDataVendita' class='text-secondary' runat='server'>18/3/2021</asp:Label>";
                imgContainer.InnerHtml += "</div></div></div></div>";
            }
        }
    }
}