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
            DataTable DT = new DataTable();
            VENDITORI V = new VENDITORI();
            //V.chiave = int.Parse(Session["chiaveUSR"].ToString());
            V.chiave = 22;

            DT = V.ORDINI_SelectAll();         
            GrigliaStoricoVendite.DataSource = DT;         
            GrigliaStoricoVendite.DataBind();

            DataTable DT2 = new DataTable();
            DT2 = V.SelectByKey();

            //IdentificaVenditore.InnerHtml = "";
            //IdentificaVenditore.InnerHtml += "<h2> Storico Vendite del Venditore "+  +"</h2>";
        }

    }

    protected void btnCerca_Click(object sender, EventArgs e)
    {


        DataTable DT = new DataTable();
        VENDITORI V = new VENDITORI();
        V.TITOLO = txtTitolo.Text;
        V.chiaveCATEGORIA = int.Parse(ddlCategoria.SelectedValue);
        V.chiaveORDINI = int.Parse(ddlNOrdine.SelectedValue);
        V.DInizio = txtDInizio.Text;
        V.DFine = txtDFine.Text;
        //V.chiave = int.Parse(Session["chiaveUSR"].ToString());
        V.chiave = 22;
        DT= V.VENDITORI_Filter();

        GrigliaStoricoVendite.DataSource = DT;
        GrigliaStoricoVendite.DataBind();

    }

}
