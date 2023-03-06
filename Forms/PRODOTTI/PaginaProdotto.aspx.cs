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
        string imagePath = Server.MapPath("~/assets/images/yellowstar.png");
        whitestar1.ImageUrl = imagePath;
        whitestar2.ImageUrl = "../../assets/images/whitestar.png";
        whitestar3.ImageUrl = "../../assets/images/whitestar.png";
        whitestar4.ImageUrl = "../../assets/images/whitestar.png";
        whitestar5.ImageUrl = "../../assets/images/whitestar.png";
        Label2.Text = "1 stella selezionata";
    }

    protected void whitestar2_Click(object sender, ImageClickEventArgs e)
    {
        whitestar1.ImageUrl = "../../assets/images/yellowstar.png";
        whitestar2.ImageUrl = "../../assets/images/yellowstar.png";
        whitestar3.ImageUrl = "../../assets/images/whitestar.png";
        whitestar4.ImageUrl = "../../assets/images/whitestar.png";
        whitestar5.ImageUrl = "../../assets/images/whitestar.png";
        Label2.Text = "2 stelle selezionate";
    }

    protected void whitestar3_Click(object sender, ImageClickEventArgs e)
    {
        whitestar1.ImageUrl = "../../assets/images/yellowstar.png";
        whitestar2.ImageUrl = "../../assets/images/yellowstar.png";
        whitestar3.ImageUrl = "../../assets/images/yellowstar.png";
        whitestar4.ImageUrl = "../../assets/images/whitestar.png";
        whitestar5.ImageUrl = "../../assets/images/whitestar.png";
        Label2.Text = "3 stelle selezionate";
    }

    protected void whitestar4_Click(object sender, ImageClickEventArgs e)
    {
        whitestar1.ImageUrl = "../../assets/images/yellowstar.png";
        whitestar2.ImageUrl = "../../assets/images/yellowstar.png";
        whitestar3.ImageUrl = "../../assets/images/yellowstar.png";
        whitestar4.ImageUrl = "../../assets/images/yellowstar.png";
        whitestar5.ImageUrl = "../../assets/images/whitestar.png";
        Label2.Text = "4 stelle selezionate";
    }

    protected void whitestar5_Click(object sender, ImageClickEventArgs e)
    {
        whitestar1.ImageUrl = "../../assets/images/yellowstar.png";
        whitestar2.ImageUrl = "../../assets/images/yellowstar.png";
        whitestar3.ImageUrl = "../../assets/images/yellowstar.png";
        whitestar4.ImageUrl = "../../assets/images/yellowstar.png";
        whitestar5.ImageUrl = "../../assets/images/yellowstar.png";
        Label2.Text = "5 stelle selezionate";
    }
}