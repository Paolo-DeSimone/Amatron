using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
       
        
        //lavoriamo sul postback true
        //if (!IsPostBack)
        //{
        //    //qui diciamo alla div con id imgContainer che il suo InnerHtml è "" ossia vuoto
        //    //L'innerHtml rappresenta il contenuto della pagina HTML di quell'elemento, in questo caso il contenuto di imgContainer
        //    imgContainer.InnerHtml = "";

        //    //creiamo un ciclo for in cui gli diremo che finche i sarà minore del numero di prodotti che presenta un venditore allora creerà una delle col e delle row
        //    for (int i = 0; i < 0; i++)
        //    {
        //        //qui andremo a sostituire i vari src e le proprietà .text dei textbox nel momento in cui andremo ad integrare gestore e DB
        //        imgContainer.InnerHtml += " <div class=\" col-md-6 \">";
        //        imgContainer.InnerHtml += "<div class=\"card cardIncard\">";
        //        imgContainer.InnerHtml += "  <div class=\"row\">";
        //        imgContainer.InnerHtml += "   <div class=\"col-md-5\">";
        //        imgContainer.InnerHtml += "  <img alt=\"\" src=\"/assets/images/amatron-icon.png\" class=\" img-thumbnail boxImg\" />\r\n                                ";
        //        imgContainer.InnerHtml += " </div>";
        //        imgContainer.InnerHtml += "  <div class=\"col-md-7 allineato\">";
        //        imgContainer.InnerHtml += "  <h5>";
        //        imgContainer.InnerHtml += "<asp:Label ID=\"lblTitoloProdotto\" class=\"contenimentoTitolo\" runat=\"server\" Text=\"TITOLO 1 DI UN PRODOTTO MOLTO LUNGHISSIMOfhgyhdfgysdfgsdygfysdyfgd\"></asp:Label></h5>\r\n                                    ";
        //        imgContainer.InnerHtml += "<h5>";
        //        imgContainer.InnerHtml += "  <asp:Label ID=\"lblPrezzo\" runat=\"server\" Text=\"PREZZO 1\"></asp:Label></h5>\r\n                                    ";
        //        imgContainer.InnerHtml += " <h6>";
        //        imgContainer.InnerHtml += " <asp:Label ID=\"lblCategoria\" runat=\"server\" Text=\"CATEGORIA 1\"></asp:Label>\r\n                                    ";
        //        imgContainer.InnerHtml += " </h6>";
        //        imgContainer.InnerHtml += " <asp:Label ID=\"lblDescrizioneProdotto\" runat=\"server\" Text=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque elementum libero porttitor purus accumsan,\r\n                            eget ultrices metus aliquet. Aliquam non ornare nulla. Aliquam et sollicitudin diam, malesuada lacinia enim. Integer at nibh tempus, lacinia diam auctor, vulputate augue. \r\n                            Proin faucibus pharetra ante eget pharetra. Mauris lacinia libero consequat, sagittis purus. \"\r\n                                        class=\"DescrizioneProdotto\"></asp:Label>";
        //        imgContainer.InnerHtml += " </div>";
        //        imgContainer.InnerHtml += " </div>";
        //        imgContainer.InnerHtml += " </div>";
        //        imgContainer.InnerHtml += " </div>";


        //    }
        //}
        //if (btnClicked == true)
        //{
        //    string script = "notifySuccess('Modifica avvenuta con successo!');";
        //    ScriptManager.RegisterStartupScript(this, this.GetType(), "closePopup", script, true);

        //}
    }


    protected void gridVisualizzaProdotti_SelectedIndexChanged(object sender, EventArgs e)
    {///prendo la chiave del prodotto selezionato e la metto nella session per portarlo al popup Gestisci inventario
        Session["chiaveProdottoEsaurito"] = gridVisualizzaProdotti.SelectedValue.ToString();
    }
    protected void btnModificaQtaProdotto_Click(object sender, EventArgs e)
    {
        if (gridVisualizzaProdotti.SelectedValue == null)
        {
            string script = "notifyError('Selezionare un Prodotto da modificare');";
            ScriptManager.RegisterStartupScript(this, GetType(), "btnAggiungi_Click", script, true);
            return;
        }
        else
        {
            ModalPopupExtender1.Enabled = true;
            ModalPopupExtender1.Show();
        }



        //bool btnClicked = Convert.ToBoolean(Session["btnClicked"]);

        //if (btnClicked)
        //{
        //    Session["btnClicked"] = false;
        //    return;
        //}
        //else
        //{
        //    Session["btnClicked"] = true;
        //    return;
        //}
    }

    protected void PROVA_Click(object sender, EventArgs e)
    {
        string script = "notifySuccess('Modifica avvenuta con successo!');";
        ScriptManager.RegisterStartupScript(this, GetType(), "btnAggiungi_Click", script, true);
        return;
    }

    public void closePopup()
    {

        Session.Remove("chiaveProdottoEsaurito");
        ModalPopupExtender1.Hide();
        ModalPopupExtender1.Enabled = false;
    }


    protected void btnAggiungiImmagini_Click(object sender, EventArgs e)
    {
        if (gridVisualizzaProdotti.SelectedValue == null)
        {
            return;
        }
        else
        {
            ModalPopupExtender2.Enabled = true;
            ModalPopupExtender2.Show();
        }
    }


    //protected void chkVuoto_CheckedChanged(object sender, EventArgs e)
    //{
    //    CheckBox chkStatus =(CheckBox)sender;
    //    GridViewRow row = (GridViewRow)chkStatus.NamingContainer;
    //}

}