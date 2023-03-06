using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.ServiceModel.Dispatcher;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    int stelle;
    int valstelle;

    protected void Page_Load(object sender, EventArgs e)
    {

        PRODOTTI P = new PRODOTTI();
        P.chiave = 1; //Session["chiaveProdotto"]

        DataTable dt = P.SelectByKey();
        //litImg1
        //litImg2 Da fillare col gestore
        //litImg3
        litProdotto.Text = dt.Rows[0]["titolo"].ToString();
        litPrezzoCentro.Text = dt.Rows[0]["prezzo"].ToString();
        litPrezzoDestra.Text = dt.Rows[0]["prezzo"].ToString();
        litDescrizione.Text = dt.Rows[0]["descrizione"].ToString();

        CATEGORIE CA = new CATEGORIE();
        CA.chiave = Convert.ToInt32(dt.Rows[0]["chiaveCategoria"]);
        DataTable dtCa = CA.SelectByKey();
        litCategoria.Text = dtCa.Rows[0]["Categoria"].ToString();

        P.qta = Convert.ToInt32(dt.Rows[0]["qta"]);
        if (dt.Rows.Count > 0)
        {
            for (int i = 1; i <= P.qta; i++)
            {
                ddlCarrello.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }

        VALUTAZIONI V = new VALUTAZIONI();
        V.chiave = 1; //Session["chiaveProdotto"]
        DataTable DT = V.Media();
        
        valstelle = Convert.ToInt32(DT.Rows[0]["MEDIA"].ToString()); 
        
        if (valstelle == 5)
        {
            ystar1.Visible= true;
            ystar2.Visible= true;
            ystar3.Visible= true;
            ystar4.Visible= true;
            ystar5.Visible= true;
        }
        if(valstelle == 4)
        {
            ystar1.Visible= true;
            ystar2.Visible= true;
            ystar3.Visible= true;
            ystar4.Visible= true;
        }
        if(valstelle == 3)
        {
            ystar1.Visible= true;
            ystar2.Visible= true;
            ystar3.Visible= true;
        } 
        if(valstelle == 2)
        {
            ystar1.Visible= true;
            ystar2.Visible= true;
        }
        if(valstelle == 1)
        {
            ystar1.Visible= true;
        }
    }

    protected void btnAggiungi_Click(object sender, EventArgs e)
    {
        PRODOTTI P = new PRODOTTI();
        CARRELLO C = new CARRELLO();

        //C.chiavePRODOTTO = //Session["chiaveProdotto"];
        //C.chiaveCLIENTE = Session["chiaveCliente"];
        C.QTA = int.Parse(ddlCarrello.SelectedValue.ToString());
        C.INSERT();
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
       VALUTAZIONI V = new VALUTAZIONI();
        //V.chiaveprodotto = Session["chiaveProdotto"]
        V.stelle= stelle;
        V.commento = txtDescription.Text.Trim();
        V.datacommento = DateTime.Now.ToString();
        V.Insert();
    }
}