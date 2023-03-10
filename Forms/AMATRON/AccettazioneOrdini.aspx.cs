using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        grigliaOrdini.DataSourceID = "SqlDataSource2";
        grigliaOrdini.DataBind();
    }

    protected void btnCerca_Click(object sender, EventArgs e)
    {
        //////filtraggio dei campi del venditore in base alla ricerca
        //DataTable DT = new DataTable();
        //ORDINI O = new ORDINI();
        //int chiavecliente = int.Parse(ddlUTENTE.SelectedValue);
        //int STATO = int.Parse(ddlSTATO.SelectedValue);
        //string DInizio = txtDInizio.Text;
        //string DFine = txtDFine.Text;
        //DT = O.ORDINI_CLIENTI_PRODOTTI_SPEDIZIONI_Filter();

        //grigliaOrdini.DataSource = DT;
        //grigliaOrdini.DataBind();

    }

    protected void grigliaOrdini_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }

    protected void btnAccetta_Click(object sender, EventArgs e)
    {
        ORDINI O = new ORDINI();
        DataTable DT = new DataTable();
        O.chiave = int.Parse(grigliaOrdini.SelectedValue.ToString());
        O.gestito = true;
        DT = O.CORRIERI_CHIAVERandom();
        O.chiavecorriere = int.Parse(DT.Rows[0]["chiave"].ToString());
        O.ORDINI_GESTITO();
        grigliaOrdini.DataBind();

    }
}