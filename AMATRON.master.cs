using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AMATRON : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

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

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string EMAIL = txtEMAIL.Value.ToString();
        string PWD = txtPWD.Value.ToString();

        LOGIN login = new LOGIN();
        DataTable DT = login.Login(EMAIL, PWD);

        Session["chiaveUSR"] = DT.Rows[0]["chiave"];
        Session["emailUSR"] = DT.Rows[0]["EMAIL"];
        Session["pwdUSR"] = DT.Rows[0]["PWD"];
        Session["tipoUSR"] = DT.Rows[0]["TIPO"];
    }
}
