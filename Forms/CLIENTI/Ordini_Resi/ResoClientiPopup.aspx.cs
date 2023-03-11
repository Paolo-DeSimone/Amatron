using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class ResoClientiPopup : System.Web.UI.Page
{
    public static string chiaveordine;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["QTA"] != null || Session["TITOLO"] != null)
        {
            lblQta.Text = Session["QTA"].ToString();
            lblTitolo.Text = Session["TITOLO"].ToString();
            lblImporto.Text = Session["PREZZO"].ToString();
            string chiaveordine = Session["chiaveordine"].ToString();

        }

        ORDINI O = new ORDINI();
        //for (int i = 0; i < REC.Rows.Count; i++)
        //{
        //    contreso.InnerHtml += "<Label>Quantità Reso</Label>" +
        //            "<label id = 'lblqta'>" + REC.Rows[i]["CLIENTE"] + "</label>";
        //}
        //Session["chiaveUSR"].ToString();
    }
    protected void btnReso_Click(object sender, EventArgs e)
    {
        if (txtDescrizione.Text.Trim() == "")
        {
            string script = "notifyError('Inserire una motivazione per inserire il reso');";
            ScriptManager.RegisterStartupScript(this, GetType(), "btnReso_Click", script, true);
            return;
        }
        ORDINI O = new ORDINI();
        RESI R = new RESI();
        R.chiaveOrdine = int.Parse(Session["chiaveordine"].ToString());
        R.descrizione = txtDescrizione.Text.Trim();
        R.qtaresa = int.Parse(lblQta.Text.Trim());
        R.datarichiesta = DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss");
        R.dataemissione = "";
        R.Insert();

    }
}