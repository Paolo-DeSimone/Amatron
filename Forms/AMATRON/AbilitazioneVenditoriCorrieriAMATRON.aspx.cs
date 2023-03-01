using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void grigliaVenditori_SelectedIndexChanged(object sender, EventArgs e)
    {
        //controllo di aver selezionato una riga
        if (grigliaVenditori.SelectedValue == null)
        {
            Session["chiaveVenditore"] = null;
            return;
        }
        //faccio la sessio per passare la chiave
        Session["chiaveVenditore"] = grigliaVenditori.SelectedValue.ToString();
    }

    protected void btnAbilitaVenditori_Click(object sender, EventArgs e)
    {
        //prendo la chiave
        string chiave = Session["chiaveVenditore"].ToString();
        //istanzio l'oggetto AA
        AMATRONADMIN AA = new AMATRONADMIN();
        AA.chiaveVenditore = Convert.ToInt32(chiave);
        //eseguo la procedure
        AA.AbilitaVenditori();
        grigliaVenditori.DataBind();
    }

    protected void grigliaCorrieri_SelectedIndexChanged(object sender, EventArgs e)
    {
        //controllo di aver selezionato una riga
        if (grigliaCorrieri.SelectedValue == null)
        {
            Session["chiaveCorriere"] = null;
            return;
        }
        //faccio la sessio per passare la chiave
        Session["chiaveCorriere"] = grigliaCorrieri.SelectedValue.ToString();
    }

    protected void btnAbilitaCorrieri_Click(object sender, EventArgs e)
    {
        //prendo la chiave
        string chiave = Session["chiaveCorriere"].ToString();
        //istanzio l'oggetto AA
        CORRIERI C = new CORRIERI();
        C.chiave = Convert.ToInt32(chiave);
        //eseguo la procedure
        C.CORRIERI_Abilita();
        grigliaCorrieri.DataBind();
    }
}  