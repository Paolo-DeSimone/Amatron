using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms_WM : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod(EnableSession=true)]
    public static void DiscardItemInCart(int c)
    {
        CARRELLO C = new CARRELLO();
        C.DiscardItemInCart(c, int.Parse(HttpContext.Current.Session["chiaveUSR"].ToString()));
    }
}