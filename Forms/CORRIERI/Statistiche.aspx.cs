using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int chiave = int.Parse(Session["chiaveUSR"].ToString());
        //grigliaStatisticheCorrieri.DataBind();
        CORRIERI C = new CORRIERI();
        C.chiave = chiave;
        DataTable DT = new DataTable();
        DT = C.CORRIERI_SelectByKey();
        string RagioneSociale = DT.Rows[0]["RagioneSociale"].ToString();
        benvenutoCorriere.InnerHtml = "<h2>Statistiche del corriere "+RagioneSociale+"</h2>";
    }
    
}