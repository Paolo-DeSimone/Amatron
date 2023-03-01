using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per WsAmatron
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class WsAmatron : System.Web.Services.WebService
{
    public WsAmatron()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataTable AMATRON_Login(string email, string PWD)
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spAMATRON_Login";
        DB.cmd.Parameters.AddWithValue("email", email);
        DB.cmd.Parameters.AddWithValue("PWD", PWD);
        dt = DB.EseguiSPRead();
        dt.TableName = "Login";
        return dt;
    }

    [WebMethod]
    public void AMATRON_AbilitaVenditori(int chiaveVenditore)
    {
        DATABASE DB = new DATABASE();
        DB.query = "spVENDITORI_Abilita";
        DB.cmd.Parameters.AddWithValue("chiave", chiaveVenditore);
        DB.EseguiSPNonRead();
    }

    [WebMethod]
    public void AMATRON_AbilitaCorrieri(int chiaveCorriere) 
    {
        DATABASE DB = new DATABASE();
        DB.query = "spCORRIERI_Abilita";
        DB.cmd.Parameters.AddWithValue("chiave", chiaveCorriere);
        DB.EseguiSPNonRead();
    }

    [WebMethod]
    public void AMATRON_UpdateRESI(string chiave, bool ACCETTAZIONE, string DATAEMISSIONE)
    {
        DATABASE DB = new DATABASE();
        DB.query = "spRESI_Update";
        DB.cmd.Parameters.AddWithValue("chiave", chiave);
        DB.cmd.Parameters.AddWithValue("ACCETTAZIONE", ACCETTAZIONE);
        DB.cmd.Parameters.AddWithValue("DATAEMISSIONE", DATAEMISSIONE);
        DB.EseguiSPNonRead();
    }

    [WebMethod]
    public void AMATRON_UpdateCONFIG(int COSTOPRIME, int PERC1_10, int PERC11_100, int PERC101_1000, int PERC1001)
    {
        DATABASE DB = new DATABASE();
        DB.query = "spCONFIG_Update";
        DB.cmd.Parameters.AddWithValue("COSTOPRIME", COSTOPRIME);
        DB.cmd.Parameters.AddWithValue("PERC1_10", PERC1_10);
        DB.cmd.Parameters.AddWithValue("PERC11_100", PERC11_100);
        DB.cmd.Parameters.AddWithValue("PERC101_1000", PERC101_1000);
        DB.cmd.Parameters.AddWithValue("PERC1001", PERC1001);
        DB.EseguiSPNonRead();
    }

    public DataTable AMATRON_RecuperaDatiConfig()
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.query = "spCONFIG_SelectAll";
        dt = DB.EseguiSPRead();
        dt.TableName = "RecuperaDatiConfig";
        return dt;
    }

}
