using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per WsProdotti
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class WsProdotti : System.Web.Services.WebService
{

    public WsProdotti()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }
    //bisogna sempre passare tutti i parametri e soprattutto in ORDINE
    [WebMethod]
    public void PRODOTTI_Insert()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spPRODOTTI_Insert";
        //DB.cmd.Parameters.AddWithValue("",);     
        DB.EseguiSPNonRead();
    }
    //bisogna sempre passare tutti i parametri e soprattutto in ORDINE
    [WebMethod]
    public void PRODOTTI_Update()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spPRODOTTI_Update";
        //DB.cmd.Parameters.AddWithValue("",);     
        DB.EseguiSPNonRead();
    }
    //bisogna sempre passare tutti i parametri e soprattutto in ORDINE
    [WebMethod]
    public void PRODOTTI_Delete()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spPRODOTTI_Delete";
        //DB.cmd.Parameters.AddWithValue("",);     
        DB.EseguiSPNonRead();
    }
    [WebMethod]
    public DataTable PRODOTTI_SelectAll()
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spPRODOTTI_SelectAll";
        dt = DB.EseguiSPRead();
        dt.TableName = "SelectAll";
        return dt;
    }
    [WebMethod]
    public DataTable PRODOTTI_SelectAll_DDL()
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spPRODOTTI_SelectAll_DDL";
        dt = DB.EseguiSPRead();
        dt.TableName = "SelectAll_DDL";
        return dt;
    }
    [WebMethod]
    public DataTable PRODOTTI_SelectbyKey()
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spPRODOTTI_SelectbyKey";
        dt = DB.EseguiSPRead();
        dt.TableName = "SelectbyKey";
        return dt;
    }
    [WebMethod]
    public DataTable PRODOTTI_SelectbyVenditore()
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spPRODOTTI_SelectbyVenditore";
        dt = DB.EseguiSPRead();
        dt.TableName = "SelectbyVenditore";
        return dt;
    }
    [WebMethod]
    public DataTable PRODOTTI_SelectbyCategoria()
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spPRODOTTI_SelectbyCategoria";
        dt = DB.EseguiSPRead();
        dt.TableName = "SelectbyCategoria";
        return dt;
    }

    [WebMethod]
    public DataTable PRODOTTI_MAX20Novità()
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spPRODOTTI_MAX20Novità";
        dt = DB.EseguiSPRead();
        dt.TableName = "MAX20Novità";
        return dt;
    }

    [WebMethod]
    public DataTable PRODOTTI_MAX20Valutazione()
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spPRODOTTI_MAX20Valutazione";
        dt = DB.EseguiSPRead();
        dt.TableName = "MAX20Valutazione";
        return dt;
    }

    [WebMethod]
    public DataTable PRODOTTI_MAX20Venduti()
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spPRODOTTI_MAX20Venduti";
        dt = DB.EseguiSPRead();
        dt.TableName = "PRODOTTI_MAX20Venduti";
        return dt;
    }


}
