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
        if (!IsPostBack)
        {
            int chiave = 22;
            DataTable DT = new DataTable();
            DATABASE D = new DATABASE();
            D.query = "spORDINI_PRODOTTI_CATEGORIA_SelectByVenditore";
            D.cmd.Parameters.AddWithValue("chiaveVENDITORE", chiave);
            DT = D.EseguiSPRead();
            DT.TableName = "VOSelectAll";


            GrigliaStoricoVendite.DataSource = DT;
            GrigliaStoricoVendite.DataBind();
        }

    }

    protected void btnCerca_Click(object sender, EventArgs e)
    {
        string TITOLO = txtTitolo.Text;
        int chiaveCATEGORIA = int.Parse(ddlCategoria.SelectedValue);
        int chiaveORDINI = int.Parse(ddlNOrdine.SelectedValue);
        string DInizio = txtDInizio.Text;
        string DFine = txtDFine.Text;
        int chiave = 22;

        DataTable DT = new DataTable();
        DATABASE D = new DATABASE();

        D.query = "spORDINI_PRODOTTI_CATEGORIA_Filter";
        D.cmd.Parameters.AddWithValue("TITOLO", TITOLO);
        D.cmd.Parameters.AddWithValue("chiaveORDINI", chiaveORDINI);
        D.cmd.Parameters.AddWithValue("chiaveCATEGORIA", chiaveCATEGORIA);
        D.cmd.Parameters.AddWithValue("chiaveVENDITORE", chiave);

        if (string.IsNullOrWhiteSpace(DInizio))
        {
            D.cmd.Parameters.AddWithValue("STARTDATE", DBNull.Value);

        }
        else
        {
            D.cmd.Parameters.AddWithValue("STARTDATE", DateTime.Parse(DInizio));
        }
        if (string.IsNullOrWhiteSpace(DFine))
        {
            D.cmd.Parameters.AddWithValue("ENDDATE", DBNull.Value);

        }
        else
        {
            D.cmd.Parameters.AddWithValue("ENDDATE", DateTime.Parse(txtDFine.Text));

        }
        DT = D.EseguiSPRead();

        GrigliaStoricoVendite.DataSource = DT;
        GrigliaStoricoVendite.DataBind();

    }

}
