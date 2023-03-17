using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.ServiceModel.Dispatcher;
using System.Activities.Expressions;
using System.Globalization;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //identifico il venditore dalla session
            DataTable DT = new DataTable();
            VENDITORI V = new VENDITORI();
            V.chiave = int.Parse(Session["chiaveUSR"].ToString());
            //V.chiave = 26;

            //stored procedure per popolare la griglia con tutti i campi del venditore
            DT = V.ORDINI_SelectAll();         
            GrigliaStoricoVendite.DataSource = DT;         
            GrigliaStoricoVendite.DataBind();

            //Visualizzo il nome del venditore sopra la card
            DataTable DT2 = new DataTable();
            DT2 = V.SelectByKey();
            string NomeVenditore = DT2.Rows[0]["RAGIONESOCIALE"].ToString() ;
            IdentificaVenditore.InnerHtml = "<center><h2> Storico Vendite del Venditore " + NomeVenditore + "</h2></center>";




        }

    }

    protected void btnCerca_Click(object sender, EventArgs e)
    {
        //filtraggio dei campi del venditore in base alla ricerca
        DataTable DT = new DataTable();
        VENDITORI V = new VENDITORI();

        

        V.TITOLO = txtTitolo.Text;
        V.chiaveCATEGORIA = int.Parse(ddlCategoria.SelectedValue);
        if(txtNumeroOrdine.Text == "")
        {
            txtNumeroOrdine.Text = "0";
        }
        V.NUMEROORDINE = int.Parse(txtNumeroOrdine.Text);
        V.DInizio = txtDInizio.Text;
        V.DFine = txtDFine.Text;
        V.chiave = int.Parse(Session["chiaveUSR"].ToString());
        //V.chiave = 26;
        DT = V.VENDITORI_Filter();

        GrigliaStoricoVendite.DataSource = DT;
        GrigliaStoricoVendite.DataBind();
    }

}
