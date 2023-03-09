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
        string script = @"notifyError('Prodotto aggiunto al carrello')";
        ScriptManager.RegisterStartupScript(this, GetType(), "btnAggiungi_Click", script, true);
        return;
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
        }
        else
        {
            string script = @"notifyError('Non hai comprato questo prodotto')";
            ScriptManager.RegisterStartupScript(this, GetType(), "btnRecensione_Click", script, true);
            return;
        }
    }
}