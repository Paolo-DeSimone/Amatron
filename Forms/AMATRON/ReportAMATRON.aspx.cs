using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.ServiceModel.Dispatcher;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class ReportAMATRON : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //impostazioni nomi assi per chart IncassiMensili
        chartIncassiMensili.ChartAreas["ChartArea1"].AxisX.Title = "Mese";
        chartIncassiMensili.ChartAreas["ChartArea1"].AxisY.Title = "Euro";

        //impostazioni nomi assi per chart IncassiAnnuali
        chartIncassiAnnuali.ChartAreas["ChartArea1"].AxisX.Title = "Anno";
        chartIncassiAnnuali.ChartAreas["ChartArea1"].AxisY.Title = "Euro";

        //impostazioni nomi assi per chart IncassiCategoria
        chartIncassiCategoria.ChartAreas["ChartArea1"].AxisX.Title = "Categoria";
        chartIncassiCategoria.ChartAreas["ChartArea1"].AxisY.Title = "Euro";

        //questo comando è necessario per settare l'intervallo dei valori della X in chartIncassiCategoria
        //senza questo, non si vedranno tutti i valori
        chartIncassiCategoria.ChartAreas.FirstOrDefault().AxisX.Interval = 1;
    }

    protected void ddlFiltroAnnoMensile_SelectedIndexChanged(object sender, EventArgs e)
    {
        chartIncassiMensili.DataBind();
    }
}