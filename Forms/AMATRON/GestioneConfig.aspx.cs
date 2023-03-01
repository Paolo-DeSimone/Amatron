using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GestioneConfig : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //esegue questo solo al primo avvio della pagina per recuperare i dati dal db
        if (!IsPostBack)
        {
            //carico i dati dalla tabella config e li inserisco nei TextBox di GestioneConfig -MATTEO
            DataTable DT = new DataTable();
            //chiamo la funzione RecuperaDatiConfig

            //DT = AMATRONADMIN.RecuperaDatiConfig();

            //DT = new AMATRONADMIN.RecuperaDatiConfig();

            //passo i dati dalla DT nei TextBox
            txtCostoPrime.Text = DT.Rows[0]["COSTOPRIME"].ToString();
            txtPerc1_10.Text = DT.Rows[0]["PERC1_10"].ToString();
            txtPerc11_100.Text = DT.Rows[0]["PERC11_100"].ToString();
            txtPerc101_1000.Text = DT.Rows[0]["PERC101_1000"].ToString();
            txtPerc1001.Text = DT.Rows[0]["PERC1001"].ToString();
            DT.Clear();
            DataBind();
        }
    }

    protected void btnAccetta_Click(object sender, EventArgs e)
    {
        //Preparo i dati
        AMATRONADMIN A = new AMATRONADMIN();
        //inserisco nelle variabili i valori nei TextBox e li converto in int
        A.COSTOPRIME = int.Parse(txtCostoPrime.Text.Trim());
        A.PERC1_10 = int.Parse(txtPerc1_10.Text.Trim());
        A.PERC11_100 = int.Parse(txtPerc11_100.Text.Trim());
        A.PERC101_1000 = int.Parse(txtPerc101_1000.Text.Trim());
        A.PERC1001 = int.Parse(txtPerc1001.Text.Trim());
        //chiamo la funzione
        //A.UpdateCONFIG();
        //test js per avviso a schermo

        //ScriptManager.RegisterStartupScript(this,this.GetType(), )

        //ricarico la pagina
        Response.Redirect(Request.RawUrl);
    }
}