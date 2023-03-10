using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.ServiceModel.Dispatcher;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    public static int stelle;
    int valstelle;

    protected void Page_Load(object sender, EventArgs e)
    {
      

        PRODOTTI P = new PRODOTTI();
        IMMAGINI I = new IMMAGINI();
        P.chiave = int.Parse(HttpContext.Current.Request.QueryString["c"].ToString());

        DataTable dt = new DataTable();
        dt = P.SelectByKey();
        I.chiaveprodotto = int.Parse(HttpContext.Current.Request.QueryString["c"].ToString());
        DataTable IMGDT = I.SelectChiavi();
        for (int i = 0; i < IMGDT.Rows.Count; i++)
        {
            Carosello.InnerHtml += " <div class=\"carousel-item active\">" +
                "<img src='/GestoreImmagini.ashx?c=" + IMGDT.Rows[i]["chiave"] + "' class='d-block w-100' style='width:600px; height:450px' alt='Product Image 1'/>" +
                "</div>";
        }

        litProdotto.Text = dt.Rows[0]["titolo"].ToString();
        litPrezzoCentro.Text = dt.Rows[0]["prezzo"].ToString();
        litPrezzoDestra.Text = dt.Rows[0]["prezzo"].ToString();
        litDescrizione.Text = dt.Rows[0]["descrizione"].ToString();

        CATEGORIE CA = new CATEGORIE();
        CA.chiave = Convert.ToInt32(dt.Rows[0]["chiaveCategoria"]);
        DataTable dtCa = CA.SelectByKey();
        litCategoria.Text = "Categoria: " + dtCa.Rows[0]["Categoria"].ToString();

        P.qta = Convert.ToInt32(dt.Rows[0]["qta"]);
        if (dt.Rows.Count > 0)
        {
            for (int i = 1; i <= P.qta; i++)
            {
                ddlCarrello.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }

        VALUTAZIONI V = new VALUTAZIONI();
        V.chiaveprodotto = int.Parse(HttpContext.Current.Request.QueryString["c"].ToString());
        DataTable DT = V.Media();

        if (String.IsNullOrEmpty(DT.Rows[0]["MEDIA"].ToString()))
        {

        }
        else
        {
            valstelle = int.Parse(DT.Rows[0]["MEDIA"].ToString());
            if (valstelle == 5)
            {
                ystar1.Visible = true;
                ystar2.Visible = true;
                ystar3.Visible = true;
                ystar4.Visible = true;
                ystar5.Visible = true;
            }
            if (valstelle == 4)
            {
                ystar1.Visible = true;
                ystar2.Visible = true;
                ystar3.Visible = true;
                ystar4.Visible = true;
            }
            if (valstelle == 3)
            {
                ystar1.Visible = true;
                ystar2.Visible = true;
                ystar3.Visible = true;
            }
            if (valstelle == 2)
            {
                ystar1.Visible = true;
                ystar2.Visible = true;
            }
            if (valstelle == 1)
            {
                ystar1.Visible = true;
            }
        }

        P.chiaveCATEGORIA = int.Parse(dt.Rows[0]["chiaveCATEGORIA"].ToString());
        DataTable CAROSEL = P.Max20RandomCategoria();

        caroselProdottiSimili.InnerHtml = "";
        for (int i = 0; i < CAROSEL.Rows.Count; i++)
        {
            CA.chiave = int.Parse(CAROSEL.Rows[i]["chiaveCATEGORIA"].ToString());
            DataTable CAT = CA.SelectByKey();
            caroselProdottiSimili.InnerHtml += "<div class=\"owl-item\">" +
                "<a href = \"PaginaProdotto.aspx?c=" + CAROSEL.Rows[i]["chiavePRODOTTO"] + "\">" +
                "<div class=\"bbb_viewed_item discount d-flex flex-column align-items-center justify-content-center text-center\">" +
                "<div class=\"bbb_viewed_image\">" +
                "<img style=\"width:160px; height:160px;\" src='/Img.ashx?c=" + CAROSEL.Rows[i]["chiavePRODOTTO"] + "' >" +
                "</div>" +
                "<div class=\"bbb_viewed_content text-center\">" +
                "<div class=\"bbb_viewed_name\"><b>" + CAROSEL.Rows[i]["TITOLO"] + "</b></div>" +
                "<div class=\"bbb_viewed_price\"><b>€" + CAROSEL.Rows[i]["PREZZO"] + "</b></div>" +
                "<div class=\"bbb_viewed_name\">" + CAT.Rows[0]["CATEGORIA"] + "</div>" +
                "</div>" +
                "</div>" +
                "</a>" +
                "</div>";
        }
            AggiornaRecensioni();
    }
     public void AggiornaRecensioni()
    {
        VALUTAZIONI V = new VALUTAZIONI();
        DataTable REC = new DataTable();
        V.chiaveprodotto = int.Parse(HttpContext.Current.Request.QueryString["c"].ToString());
        REC = V.RecensioniClienti();
        contenitoreRecensioni.InnerHtml = "";

        for (int i = 0; i < REC.Rows.Count; i++)
        {
            contenitoreRecensioni.InnerHtml += "<div class=\"card mb-2\">" +

                    "<div class=\"card-body\">" +
                    "<label id = 'litNomeCliente'>" + REC.Rows[i]["CLIENTE"] + "</label>" +
                        "<hr style = \"margin: 5px\" />" +
                        "<div>";

            for (int j = 0; j < int.Parse(REC.Rows[i]["STELLE"].ToString()); j++)
            {
                contenitoreRecensioni.InnerHtml += "<img style =\"width:20px; height:20px;\" src='/assets/images/yellowstar.png'>";
            }
            for (int k = int.Parse(REC.Rows[i]["STELLE"].ToString()); k < 5; k++)
            {
                contenitoreRecensioni.InnerHtml += "<img style =\"width:20px; height:20px;\" src='/assets/images/whitestar.png'>";
            }
            contenitoreRecensioni.InnerHtml += "<p style = 'color: black' > " +
                                    "<label id = 'litDataRecensione'>" + REC.Rows[i]["DATACOMMENTO"] + "</label></p>" +
                        "</div>" +
                        "<hr style = 'margin: 5px' />" +
                        "<p style='color: black' > " +
                       "<label id = 'litRecensione'>" + REC.Rows[i]["COMMENTO"] + "</label></p>" +
                   "</div>" +
               "</div>";
            
        }
    }
    protected void btnAggiungi_Click(object sender, EventArgs e)
    {
        if (Session["chiaveUSR"] == null)
        {
           
            ScriptManager.RegisterStartupScript(this, this.GetType(), "error", "notifyError('Per aggiungere un prodotto al carrello occorre eseguire il Login');",true);
            return;
        }
        PRODOTTI P = new PRODOTTI();
        CARRELLO C = new CARRELLO();

        C.chiavePRODOTTO = int.Parse(HttpContext.Current.Request.QueryString["c"].ToString());
        C.chiaveCLIENTE = int.Parse(Session["chiaveUSR"].ToString());
        C.QTA = int.Parse(ddlCarrello.SelectedValue.ToString());
        C.INSERT();
        string script = @"notifySuccess('Prodotto aggiunto al carrello')";
        ScriptManager.RegisterStartupScript(this, GetType(), "btnAggiungi_Click", script, true);
        caricaCarrello(int.Parse(Session["chiaveUSR"].ToString()));
        return;
    }

    public void caricaCarrello(int chiaveUSR)
    {
        CARRELLO c = new CARRELLO();

        // Seleziona tutti gli oggetti (item) in carrello ma solo per un certo utente, identificato grazie alla session.
        DataTable DT = c.SelectAllItemsInCart(chiaveUSR);

        // Dentro il div con id "carrelloProdotti" dentro AMATRON.master, fai comparire tutto quel che c'è in carrelloProdotti.InnerHtml (InnerHtml permette di scrivere codice HTML dentro il C#)
        // Uso un ciclo for che itera per il numero di row in DT ( DT.Rows.Count) così da far comparire in carrello ogni singolo oggetto della DT
        string s = "";


        for (int i = 0; i < DT.Rows.Count; i++)
        {
            string desc = DT.Rows[i]["DESCRIZIONEprodotto"].ToString();
            if (desc.Length > 50)
            {
                desc = desc.Substring(0, 50);
            }
            s +=
            "<div id=\"itemInCart\"class=\"card mx-1 my-1\">" +
            "<div class=\"card-body \" style=\"padding: 5px; color: rgb(0,0,0);\r\n font-weight: 600;\r\n\">" +
            "<div class=\"row\" style=\"margin: 0px; padding: 0px;\">" +
            "<div class=\"row\" style=\"margin: 0px; padding: 0px;\">" +
            "" +
            " <div class=\"col-sm-4\">" +
                "<a href=\"Forms/PRODOTTI/PaginaProdotto.aspx?c=" + DT.Rows[i]["chiavePRODOTTO"].ToString() + "\" class=\"w3-bar-item w3-button masterNoHover\">" +
                "<img src=\"/Img.ashx?c=" + DT.Rows[i]["chiavePRODOTTO"].ToString() + "\" class=\"w-50 h-50\" />" +
                "</a>" +
            "</div>" +
            "" +
            " <div class=\"col-sm-5\">" +
            "<p style=\"margin: 4px;\"></p>" +
            "" +
            "<div>" + //DIV di apertura
                "<div>" + DT.Rows[i]["TITOLOprodotto"] + "</div>" +
                "</div>" +
                "<div style=\"color: rgb(0,0,0);\r\n font-weight: 500;\r\n\">" + desc + "... </div>" +
                "</div>" + //DIV di chiusura
                "" +
                "<div style=\"padding: 0px;\" class=\"col-sm-3\">" +
            "<div>" + //DIV di apertura
            "" +
            "<button onclick=\"DiscardItemInCart(" + DT.Rows[i]["chiavePRODOTTO"].ToString() + ")\" class=\"w3-bar-item w3-button w3-large masterNoHover\" style=\"padding: 0px; margin-left: 100px;\" >" +
                "<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" class=\"bi bi-trash3\" viewBox=\"0 0 16 16\">\r\n  " +
                "<path d=\"M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01" +
                " 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01" +
                " 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1" +
                " .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 " +
                "4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z\"/>\r\n</svg>" +
            "</button>" +
            "" +
                "<div>Quantità:" + DT.Rows[i]["QTAprodotto"] + "</div>" +
                "</div>" +
                "<div>Prezzo:" + DT.Rows[i]["PREZZOprodotto"].ToString() + "€</div>" +
            "</div>" + //DIV di chiusura
            "" +
            "" +
            "" +
            "</div>" +
            "</div>" +
            "</div>" +
            //"</div>" +
            "</div>";
        }
        Literal litCarrelloMaster = (Literal)this.Master.FindControl("litCarrello");
        litCarrelloMaster.Text = s;
    }

    protected void whitestar1_Click(object sender, ImageClickEventArgs e)
    {
        whitestar1.Visible = false;
        yellowstar1.Visible = true;

        yellowstar2.Visible = false;
        yellowstar3.Visible = false;
        yellowstar4.Visible = false;
        yellowstar5.Visible = false;

        whitestar2.Visible = true;
        whitestar3.Visible = true;
        whitestar4.Visible = true;
        whitestar5.Visible = true;
        Label2.Text = "1 stella selezionata";
        stelle = 1;
    }

    protected void whitestar2_Click(object sender, ImageClickEventArgs e)
    {
        whitestar1.Visible = false;
        yellowstar1.Visible = true;
        whitestar2.Visible = false;
        yellowstar2.Visible = true;

        yellowstar3.Visible = false;
        yellowstar4.Visible = false;
        yellowstar5.Visible = false;

        whitestar3.Visible = true;
        whitestar4.Visible = true;
        whitestar5.Visible = true;

        Label2.Text = "2 stelle selezionate";
        stelle = 2;
    }

    protected void whitestar3_Click(object sender, ImageClickEventArgs e)
    {
        whitestar1.Visible = false;
        yellowstar1.Visible = true;
        whitestar2.Visible = false;
        yellowstar2.Visible = true;
        whitestar3.Visible = false;
        yellowstar3.Visible = true;

        yellowstar4.Visible = false;
        yellowstar5.Visible = false;

        whitestar4.Visible = true;
        whitestar5.Visible = true;

        Label2.Text = "3 stelle selezionate";
        stelle = 3;
    }

    protected void whitestar4_Click(object sender, ImageClickEventArgs e)
    {
        whitestar1.Visible = false;
        yellowstar1.Visible = true;
        whitestar2.Visible = false;
        yellowstar2.Visible = true;

        whitestar3.Visible = false;
        yellowstar3.Visible = true;

        whitestar4.Visible = false;
        yellowstar4.Visible = true;

        yellowstar5.Visible = false;
        whitestar5.Visible = true;


        Label2.Text = "4 stelle selezionate";
        stelle = 4;
    }

    protected void whitestar5_Click(object sender, ImageClickEventArgs e)
    {
        whitestar1.Visible = false;
        yellowstar1.Visible = true;
        whitestar2.Visible = false;
        yellowstar2.Visible = true;
        whitestar3.Visible = false;
        yellowstar3.Visible = true;
        whitestar4.Visible = false;
        yellowstar4.Visible = true;
        whitestar5.Visible = false;
        yellowstar5.Visible = true;
        Label2.Text = "5 stelle selezionate";
        stelle = 5;
    }

    protected void btnRecensione_Click(object sender, EventArgs e)
    {
        if (Session["chiaveUSR"] == null)
        {

            ScriptManager.RegisterStartupScript(this, this.GetType(), "error", "notifyError('Non puoi lasciare una recensione se non hai effettuato il Login');", true);
            return;
        }
        ORDINI O = new ORDINI();
        VALUTAZIONI V = new VALUTAZIONI();
        O.chiavecliente = int.Parse(Session["chiaveUSR"].ToString());
        O.chiaveprodotto = int.Parse(HttpContext.Current.Request.QueryString["c"].ToString());
        DataTable dt = O.SelectProdottoAcquistato();

        V.chiavecliente = int.Parse(Session["chiaveUSR"].ToString());
        V.chiaveprodotto = int.Parse(HttpContext.Current.Request.QueryString["c"].ToString());
        DataTable VADT = V.ProdottoRecensito();

        if (dt.Rows.Count > 0 && VADT.Rows.Count == 0)
        {
            V.stelle = stelle;
            V.commento = txtDescription.Text.Trim();
            V.datacommento = DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss");
            V.chiavecliente = int.Parse(Session["chiaveUSR"].ToString());
            V.Insert();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "error", "notifySuccess('Prodotto recensito con successo!');", true);
            AggiornaRecensioni();
            return;
        }
        else
        {
            string script = @"notifyError('Non hai comprato questo prodotto o lo hai già recensito')";
            ScriptManager.RegisterStartupScript(this, GetType(), "btnRecensione_Click", script, true);
            return;
        }
    }
}