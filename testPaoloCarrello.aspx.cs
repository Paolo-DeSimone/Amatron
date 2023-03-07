using ASP;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.ServiceModel.Channels;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    //NON CAMBIARE I NOMI A,B,C SE NO NON FUNZIONA
    public static void AggiungiAlCarrello(int a, int b, int c)
    {
        a = 1;
        b = 1;
        c = 1;
        CARRELLO cart = new CARRELLO();
        cart.chiaveCLIENTE = a;
        cart.chiavePRODOTTO = b;
        cart.QTA = c;
        cart.INSERT();
    }

}

