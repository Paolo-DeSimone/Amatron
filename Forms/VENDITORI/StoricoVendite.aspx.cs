using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{

        //    GrigliaStoricoVendite.DataSourceID = "sdsGrigliaStoricoVendite";
        //    GrigliaStoricoVendite.DataBind();
        //}

    }

    protected void btnCerca_Click(object sender, EventArgs e)
    {
        //GrigliaStoricoVendite.DataSourceID = "sdsGrigliaStoricoVendite";


        DataTable dt = new DataTable();
        DATABASE D = new DATABASE();

        D.query= "spORDINI_PRODOTTI_CATEGORIA_Filter";
        D.cmd.Parameters.AddWithValue("TITOLO", txtTitolo.Text);
        D.cmd.Parameters.AddWithValue("chiaveCATEGORIA", ddlCategoria.SelectedIndex);
        D.cmd.Parameters.AddWithValue("chiaveORDINE", ddlCategoria.SelectedIndex);
        D.cmd.Parameters.AddWithValue("chiaveVENDITORE", 1);
        D.cmd.Parameters.AddWithValue("STARTDATE", txtDInizio.Text);
        D.cmd.Parameters.AddWithValue("ENDDATE", txtDFine.Text);
        dt = D.EseguiSPRead();

        GrigliaStoricoVendite.DataSource = dt;

        //ScriptManager.RegisterStartupScript(this, GetType(), "","alert('" +  + "')", true);
        GrigliaStoricoVendite.DataBind();

    }
}