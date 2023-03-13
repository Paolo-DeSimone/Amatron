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
        DataTable DT = new DataTable();
        ORDINI O = new ORDINI();
        O.NOMINATIVO = txtNominativo.Text;
        O.DInizio = txtDInizio.Text;
        O.DFine = txtDFine.Text;
        DT = O.ORDINI_FILTER();

        grigliaOrdini.DataSource = DT;
        grigliaOrdini.DataBind();
    }

    protected void btnCerca_Click(object sender, EventArgs e)
    {
        //////TASTO FILTRA PER NOME/DATA
        DataTable DT = new DataTable();
        ORDINI O = new ORDINI();
        O.NOMINATIVO = txtNominativo.Text;
        O.DInizio = txtDInizio.Text;
        O.DFine = txtDFine.Text;
        DT = O.ORDINI_FILTER();

        grigliaOrdini.DataSource = DT;
        grigliaOrdini.DataBind();

    }

    protected void grigliaOrdini_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }

    protected void btnAccetta_Click(object sender, EventArgs e)
    {
        // ACCETTAZIONE ORDINI ADMIN AMATRON
        ORDINI O = new ORDINI();
        DataTable DT = new DataTable();
        O.chiave = int.Parse(grigliaOrdini.SelectedValue.ToString());
        O.gestito = true;
        DT = O.CORRIERI_CHIAVERandom();
        O.chiavecorriere = int.Parse(DT.Rows[0]["chiave"].ToString());
        O.ORDINI_GESTITO();
        grigliaOrdini.DataBind();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "error", "notifySuccess('Corriere assegnato con successo');", true);
    }
}