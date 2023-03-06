using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Request.QueryString["msg"] == "success")
        //{
        //    string script = @"notifySuccess('Registrato con successo!')";
        //    ScriptManager.RegisterStartupScript(this, GetType(), "ShowSuccessNotification", script, true);
        //    return;
        //}

        //20 novità caricate dal db
        //PRODOTTI P = new PRODOTTI();
        //DataTable MAX = P.MAX20Novita();


        //litImg.Text = "";
        //foreach (DataRow r in MAX.Rows)
        //{
        //    litImg.Text += "<img  src='/Img.ashx?c=" + r["chiave"].ToString() + "' >";
        //}


        //lblP1.Text = MAX.Rows[0]["PREZZO"].ToString();
        //lblT1.Text = MAX.Rows[0]["TITOLO"].ToString();

        //lblP2.Text = MAX.Rows[1]["PREZZO"].ToString();
        //lblT2.Text = MAX.Rows[1]["TITOLO"].ToString();

        //lblP3.Text = MAX.Rows[2]["PREZZO"].ToString();
        //lblT3.Text = MAX.Rows[2]["TITOLO"].ToString();

        //lblP4.Text = MAX.Rows[3]["PREZZO"].ToString();
        //lblT4.Text = MAX.Rows[3]["TITOLO"].ToString();

        //lblP5.Text = MAX.Rows[4]["PREZZO"].ToString();
        //lblT5.Text = MAX.Rows[4]["TITOLO"].ToString();

        //lblP6.Text = MAX.Rows[5]["PREZZO"].ToString();
        //lblT6.Text = MAX.Rows[5]["TITOLO"].ToString();

        //lblP7.Text = MAX.Rows[6]["PREZZO"].ToString();
        //lblT7.Text = MAX.Rows[6]["TITOLO"].ToString();

        //lblP8.Text = MAX.Rows[7]["PREZZO"].ToString();
        //lblT8.Text = MAX.Rows[7]["TITOLO"].ToString();

        //lblP9.Text = MAX.Rows[8]["PREZZO"].ToString();
        //lblT9.Text = MAX.Rows[8]["TITOLO"].ToString();

        //lblP10.Text = MAX.Rows[9]["PREZZO"].ToString();
        //lblT10.Text = MAX.Rows[9]["TITOLO"].ToString();

        //lblP11.Text = MAX.Rows[10]["PREZZO"].ToString();
        //lblT11.Text = MAX.Rows[10]["TITOLO"].ToString();

        //lblP12.Text = MAX.Rows[11]["PREZZO"].ToString();
        //lblT12.Text = MAX.Rows[11]["TITOLO"].ToString();

        //lblP13.Text = MAX.Rows[12]["PREZZO"].ToString();
        //lblT13.Text = MAX.Rows[12]["TITOLO"].ToString();

        //lblP14.Text = MAX.Rows[13]["PREZZO"].ToString();
        //lblT14.Text = MAX.Rows[13]["TITOLO"].ToString();

        //lblP15.Text = MAX.Rows[14]["PREZZO"].ToString();
        //lblT15.Text = MAX.Rows[14]["TITOLO"].ToString();

        //lblP16.Text = MAX.Rows[15]["PREZZO"].ToString();
        //lblT16.Text = MAX.Rows[15]["TITOLO"].ToString();

        //lblP17.Text = MAX.Rows[16]["PREZZO"].ToString();
        //lblT17.Text = MAX.Rows[16]["TITOLO"].ToString();

        //lblP18.Text = MAX.Rows[17]["PREZZO"].ToString();
        //lblT18.Text = MAX.Rows[17]["TITOLO"].ToString();

        //lblP19.Text = MAX.Rows[18]["PREZZO"].ToString();
        //lblT19.Text = MAX.Rows[18]["TITOLO"].ToString();

        //lblP20.Text = MAX.Rows[19]["PREZZO"].ToString();
        //lblT20.Text = MAX.Rows[19]["TITOLO"].ToString();



        ////20 più venduti caricati dal db

        //DataTable DT = P.MAX20Venduti();

        //foreach (DataRow r in DT.Rows)
        //{

        //    P.SelectByKey();
        //}

        DataTable VEN = new DataTable();

        //lblP21.Text = VEN.Rows[0]["PREZZO"].ToString();
        //lblT21.Text = VEN.Rows[0]["TITOLO"].ToString();

        //lblP22.Text = VEN.Rows[1]["PREZZO"].ToString();
        //lblT22.Text = VEN.Rows[1]["TITOLO"].ToString();

        //lblP23.Text = VEN.Rows[2]["PREZZO"].ToString();
        //lblT23.Text = VEN.Rows[2]["TITOLO"].ToString();

        //lblP24.Text = VEN.Rows[3]["PREZZO"].ToString();
        //lblT24.Text = VEN.Rows[3]["TITOLO"].ToString();

        //lblP25.Text = VEN.Rows[4]["PREZZO"].ToString();
        //lblT25.Text = VEN.Rows[4]["TITOLO"].ToString();

        //lblP26.Text = VEN.Rows[5]["PREZZO"].ToString();
        //lblT26.Text = VEN.Rows[5]["TITOLO"].ToString();

        //lblP27.Text = VEN.Rows[6]["PREZZO"].ToString();
        //lblT27.Text = VEN.Rows[6]["TITOLO"].ToString();

        //lblP28.Text = VEN.Rows[7]["PREZZO"].ToString();
        //lblT28.Text = VEN.Rows[7]["TITOLO"].ToString();

        //lblP29.Text = VEN.Rows[8]["PREZZO"].ToString();
        //lblT29.Text = VEN.Rows[8]["TITOLO"].ToString();

        //lblP30.Text = VEN.Rows[9]["PREZZO"].ToString();
        //lblT30.Text = VEN.Rows[9]["TITOLO"].ToString();

        //lblP31.Text = VEN.Rows[10]["PREZZO"].ToString();
        //lblT31.Text = VEN.Rows[10]["TITOLO"].ToString();

        //lblP32.Text = VEN.Rows[11]["PREZZO"].ToString();
        //lblT32.Text = VEN.Rows[11]["TITOLO"].ToString();

        //lblP33.Text = VEN.Rows[12]["PREZZO"].ToString();
        //lblT33.Text = VEN.Rows[12]["TITOLO"].ToString();

        //lblP34.Text = VEN.Rows[13]["PREZZO"].ToString();
        //lblT34.Text = VEN.Rows[13]["TITOLO"].ToString();

        //lblP35.Text = VEN.Rows[14]["PREZZO"].ToString();
        //lblT35.Text = VEN.Rows[14]["TITOLO"].ToString();

        //lblP36.Text = VEN.Rows[15]["PREZZO"].ToString();
        //lblT36.Text = VEN.Rows[15]["TITOLO"].ToString();

        //lblP37.Text = VEN.Rows[16]["PREZZO"].ToString();
        //lblT37.Text = VEN.Rows[16]["TITOLO"].ToString();

        //lblP38.Text = VEN.Rows[17]["PREZZO"].ToString();
        //lblT38.Text = VEN.Rows[17]["TITOLO"].ToString();

        //lblP39.Text = VEN.Rows[18]["PREZZO"].ToString();
        //lblT39.Text = VEN.Rows[18]["TITOLO"].ToString();

        //lblP40.Text = VEN.Rows[19]["PREZZO"].ToString();
        //lblT40.Text = VEN.Rows[19]["TITOLO"].ToString();


        ////20 più votati caricati dal db

    }
}