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

        // 20 novità caricate dal db 
        PRODOTTI P = new PRODOTTI();
        DataTable dt = P.MAX20Novita();

        lblP1.Text = dt.Rows[0]["PREZZO"].ToString();
        lblT1.Text = dt.Rows[0]["TITOLO"].ToString();
        
        lblP2.Text = dt.Rows[1]["PREZZO"].ToString();
        lblT2.Text = dt.Rows[1]["TITOLO"].ToString();
        
        lblP3.Text = dt.Rows[2]["PREZZO"].ToString();
        lblT3.Text = dt.Rows[2]["TITOLO"].ToString();
        
        lblP4.Text = dt.Rows[3]["PREZZO"].ToString();
        lblT4.Text = dt.Rows[3]["TITOLO"].ToString();

        lblP5.Text = dt.Rows[4]["PREZZO"].ToString();       
        lblT5.Text = dt.Rows[4]["TITOLO"].ToString();
        
        lblP6.Text = dt.Rows[5]["PREZZO"].ToString();
        lblT6.Text = dt.Rows[5]["TITOLO"].ToString();

        lblP7.Text = dt.Rows[6]["PREZZO"].ToString();
        lblT7.Text = dt.Rows[6]["TITOLO"].ToString();

        lblP8.Text = dt.Rows[7]["PREZZO"].ToString();      
        lblT8.Text = dt.Rows[7]["TITOLO"].ToString();
        
        lblP9.Text = dt.Rows[8]["PREZZO"].ToString();
        lblT9.Text = dt.Rows[8]["TITOLO"].ToString();

        lblP10.Text = dt.Rows[9]["PREZZO"].ToString();
        lblT10.Text = dt.Rows[9]["TITOLO"].ToString();

        lblP11.Text = dt.Rows[10]["PREZZO"].ToString();
        lblT11.Text = dt.Rows[10]["TITOLO"].ToString();

        lblP12.Text = dt.Rows[11]["PREZZO"].ToString();
        lblT12.Text = dt.Rows[11]["TITOLO"].ToString();

        lblP13.Text = dt.Rows[12]["PREZZO"].ToString();
        lblT13.Text = dt.Rows[12]["TITOLO"].ToString();

        lblP14.Text = dt.Rows[13]["PREZZO"].ToString();
        lblT14.Text = dt.Rows[13]["TITOLO"].ToString();

        lblP15.Text = dt.Rows[14]["PREZZO"].ToString();
        lblT15.Text = dt.Rows[14]["TITOLO"].ToString();

        lblP16.Text = dt.Rows[15]["PREZZO"].ToString();
        lblT16.Text = dt.Rows[15]["TITOLO"].ToString();

        lblP17.Text = dt.Rows[16]["PREZZO"].ToString();
        lblT17.Text = dt.Rows[16]["TITOLO"].ToString();

        lblP18.Text = dt.Rows[17]["PREZZO"].ToString();
        lblT18.Text = dt.Rows[17]["TITOLO"].ToString();

        lblP19.Text = dt.Rows[18]["PREZZO"].ToString();
        lblT19.Text = dt.Rows[18]["TITOLO"].ToString();

        lblP20.Text = dt.Rows[19]["PREZZO"].ToString();
        lblT20.Text = dt.Rows[19]["TITOLO"].ToString();



        //20 più venduti caricati dal db

        DataTable DT = P.MAX20Venduti();

        //lblP21.Text = DT.Rows[0]["PREZZO"].ToString();
        //lblT21.Text = DT.Rows[0]["TITOLO"].ToString();

        //lblP22.Text = DT.Rows[1]["PREZZO"].ToString();
        //lblT22.Text = DT.Rows[1]["TITOLO"].ToString();

        //lblP23.Text = DT.Rows[2]["PREZZO"].ToString();
        //lblT23.Text = DT.Rows[2]["TITOLO"].ToString();

        //lblP24.Text = DT.Rows[3]["PREZZO"].ToString();
        //lblT24.Text = DT.Rows[3]["TITOLO"].ToString();

        //lblP25.Text = DT.Rows[4]["PREZZO"].ToString();
        //lblT25.Text = DT.Rows[4]["TITOLO"].ToString();

        //lblP26.Text = DT.Rows[5]["PREZZO"].ToString();
        //lblT26.Text = DT.Rows[5]["TITOLO"].ToString();

        //lblP27.Text = DT.Rows[6]["PREZZO"].ToString();
        //lblT27.Text = DT.Rows[6]["TITOLO"].ToString();

        //lblP28.Text = DT.Rows[7]["PREZZO"].ToString();
        //lblT28.Text = DT.Rows[7]["TITOLO"].ToString();

        //lblP29.Text = DT.Rows[8]["PREZZO"].ToString();
        //lblT29.Text = DT.Rows[8]["TITOLO"].ToString();

        //lblP29.Text = DT.Rows[8]["PREZZO"].ToString();
        //lblT29.Text = DT.Rows[8]["TITOLO"].ToString();

        //lblP29.Text = DT.Rows[8]["PREZZO"].ToString();
        //lblT29.Text = DT.Rows[8]["TITOLO"].ToString();

        //lblP29.Text = DT.Rows[8]["PREZZO"].ToString();
        //lblT29.Text = DT.Rows[8]["TITOLO"].ToString();

        //lblP29.Text = DT.Rows[8]["PREZZO"].ToString();
        //lblT29.Text = DT.Rows[8]["TITOLO"].ToString();

        //lblP29.Text = DT.Rows[8]["PREZZO"].ToString();
        //lblT29.Text = DT.Rows[8]["TITOLO"].ToString();

        //lblP29.Text = DT.Rows[8]["PREZZO"].ToString();
        //lblT29.Text = DT.Rows[8]["TITOLO"].ToString();

        //lblP29.Text = DT.Rows[8]["PREZZO"].ToString();
        //lblT29.Text = DT.Rows[8]["TITOLO"].ToString();

        //lblP29.Text = DT.Rows[8]["PREZZO"].ToString();
        //lblT29.Text = DT.Rows[8]["TITOLO"].ToString();

        //lblP29.Text = DT.Rows[8]["PREZZO"].ToString();
        //lblT29.Text = DT.Rows[8]["TITOLO"].ToString();

        //lblP29.Text = DT.Rows[8]["PREZZO"].ToString();
        //lblT29.Text = DT.Rows[8]["TITOLO"].ToString();

        //lblP29.Text = DT.Rows[8]["PREZZO"].ToString();
        //lblT29.Text = DT.Rows[8]["TITOLO"].ToString();


        //20 più votati caricati dal db
    }
}