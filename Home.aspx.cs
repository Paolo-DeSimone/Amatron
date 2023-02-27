using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //WebMethod Accedi() se non da in automatico aggiungi in alto using System.Web.Services;

    [WebMethod]
    public static string Accedi(string USR, string PWD)
    {
        UTENTI U = new UTENTI();
        U.username = USR;
        U.password = PWD;
        DataTable DT = new DataTable();
        DT = U.Login();

        if (DT.Rows.Count != 0)
        {
            return "Benvenuto";
        }
        else
        {
            return "Utente non registrato";
        }
    }
}


