using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int chiave = int.Parse(Session["chiaveUSR"].ToString());
    }



    protected void grdSTATO_SelectedIndexChanged(object sender, EventArgs e)
    {
        // controllo se viene selezionato la riga
        if (grdSTATO.SelectedValue == null)
        {
            Session["chiaveSPEDIZIONE"] = null;
            return;
        }
        //faccio la session per passare la chiave
        Session["chiaveSPEDIZIONE"] = grdSTATO.SelectedValue.ToString();
        Session["STATO_SPEDIZIONE"] = grdSTATO.SelectedRow.Cells[3].Text;
    }

    protected void btnStato_Click(object sender, EventArgs e)
    {
        SPEDIZIONI SPE = new SPEDIZIONI();
        SPE.chiave = int.Parse(Session["chiaveSPEDIZIONE"].ToString());
        SPE.STATO = Session["STATO_SPEDIZIONE"].ToString();
        SPE.SPEDIZIONI_UpdateStato();
        DataTable DT = SPE.SPEDIZIONI_SelectByKey();
        //string STATO = ;
        
        switch(SPE.STATO)
        {
            case "B":

                break;

            case "C":

                break;

            case "D":

                break;

        }

       //DataBind();
    }
}