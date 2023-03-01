using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["chiave"] == null)
            {
                //serve solo per accedere alla pagina senza session durante i test
                return;

            }
            string chiave = Session["chiave"].ToString();
            CORRIERI C = new CORRIERI();
            C.chiave = int.Parse(chiave);
            DataTable DT = C.CORRIERI_SelectByKey();
        }
    }

    protected void btnModifica_Click(object sender, EventArgs e)
    {
        string chiave = Session["chiave"].ToString();
        CORRIERI C = new CORRIERI();
        C.CORRIERI_Update();
    }



    protected void btnModPWD_Click(object sender, EventArgs e)
    {
        //controllo per stabilire se la password vecchia è uguale a quella nuova
        if (txtOldPWD.Text.Trim() == txtNewPWD.Text.Trim())
        {
            //inserire un alert che la password nuova è uguale alla password vecchia
        }

        //controllo per stabilire se la password di conferma è uguale a quella vecchia
        if (txtNewPWD.Text.Trim() != txtConfPWD.Text.Trim())
        {
            //inserire un alert che avvisa che la password di conferma è diversa da quella nuova
        }

        //inserire alert che avvisa del successo del cambio password

        CORRIERI C = new CORRIERI();
        C.CORRIERI_Update();
    }
}