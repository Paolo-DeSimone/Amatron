using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per WsOrdini
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class WsOrdini : System.Web.Services.WebService
{

    public WsOrdini()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public void ORDINI_Insert()
    {
        DATABASE DB = new DATABASE();
      //  DB.cmd.Parameters.AddWithValue("",);
        DB.EseguiSPNonRead();
        DB.query = "spORDINI_Insert";
    }


    [WebMethod]
    public DataTable ORDINI_SelectAll()
    {
        DataTable dt = new DataTable();
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spORDINI_SelectAll";
        dt.TableName = "SelectByAll";
        return DB.EseguiSPRead();
    }

    [WebMethod]
    public DataTable ORDINI_SelectByKey()
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spORDINI_SelectByKey";
        // DB.cmd.Parameters.AddWithValue();
        dt.TableName = "SelectByKey";
        return DB.EseguiSPRead();
    }

    [WebMethod]
    public DataTable ORDINI_SelectByCorriere()
    {
        DataTable dt = new DataTable();
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spORDINI_SelectByKey";
        dt.TableName = "SelectByCorriere";
        // DB.cmd.Parameters.AddWithValue();
        return DB.EseguiSPRead();
    }

    [WebMethod]
    public DataTable ORDINI_SelectByProdotto()
    {
        DataTable dt = new DataTable();
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spORDINI_SelectByProdotto";
        // DB.cmd.Parameters.AddWithValue();
        dt.TableName = "SelectByProdotto";
        return DB.EseguiSPRead();

    }

    [WebMethod]
    public DataTable ORDINI_SelectByCliente()
    {
        DataTable dt = new DataTable();
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spORDINI_SelectByCliente";
        // DB.cmd.Parameters.AddWithValue();
        dt.TableName = "SelectByKey";
        return DB.EseguiSPRead();
    }

    [WebMethod]
    public void ORDINI_Delete()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spORDINI_Delete";
        DB.EseguiSPRead();
        return;
    }

}
