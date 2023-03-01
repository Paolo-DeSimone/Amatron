using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {//lavoriamo sul postback true
        if (!IsPostBack)
        {
            //qui diciamo alla div con id imgContainer che il suo InnerHtml è "" ossia vuoto
            //L'innerHtml rappresenta il contenuto della pagina HTML di quell'elemento, in questo caso il contenuto di imgContainer
            imgContainer.InnerHtml = "";

            //creiamo un ciclo for in cui gli diremo che finche i sarà minore del numero di prodotti che presenta un venditore allora creerà una delle col e delle row
            for ( int i=0;i <10;i++ ) 
            {
                //qui andremo a sostituire i vari src e le proprietà .text dei textbox nel momento in cui andremo ad integrare gestore e DB
                imgContainer.InnerHtml += " <div class=\" col-md-6 \">";
                imgContainer.InnerHtml += "<div class=\"card cardIncard\">";
                imgContainer.InnerHtml += "  <div class=\"row\">";
                imgContainer.InnerHtml += "   <div class=\"col-md-5\">";
                imgContainer.InnerHtml += "  <img alt=\"\" src=\"/assets/images/amatron-icon.png\" class=\" img-thumbnail boxImg\" />\r\n                                ";
                imgContainer.InnerHtml += " </div>";
                imgContainer.InnerHtml += "  <div class=\"col-md-7 allineato\">";
                imgContainer.InnerHtml += "  <h5>";
                imgContainer.InnerHtml += "<asp:Label ID=\"lblTitoloProdotto\" class=\"contenimentoTitolo\" runat=\"server\" Text=\"TITOLO 1 DI UN PRODOTTO MOLTO LUNGHISSIMOfhgyhdfgysdfgsdygfysdyfgd\"></asp:Label></h5>\r\n                                    ";
                imgContainer.InnerHtml += "<h5>";
                imgContainer.InnerHtml += "  <asp:Label ID=\"lblPrezzo\" runat=\"server\" Text=\"PREZZO 1\"></asp:Label></h5>\r\n                                    ";
                imgContainer.InnerHtml += " <h6>";
                imgContainer.InnerHtml += " <asp:Label ID=\"lblCategoria\" runat=\"server\" Text=\"CATEGORIA 1\"></asp:Label>\r\n                                    ";
                imgContainer.InnerHtml += " </h6>";
                imgContainer.InnerHtml += " <asp:Label ID=\"lblDescrizioneProdotto\" runat=\"server\" Text=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque elementum libero porttitor purus accumsan,\r\n                            eget ultrices metus aliquet. Aliquam non ornare nulla. Aliquam et sollicitudin diam, malesuada lacinia enim. Integer at nibh tempus, lacinia diam auctor, vulputate augue. \r\n                            Proin faucibus pharetra ante eget pharetra. Mauris lacinia libero consequat, sagittis purus. \"\r\n                                        class=\"DescrizioneProdotto\"></asp:Label>";
                imgContainer.InnerHtml += " </div>";
                imgContainer.InnerHtml += " </div>";
                imgContainer.InnerHtml += " </div>";
                imgContainer.InnerHtml += " </div>";

                
            }
        }
    }

}