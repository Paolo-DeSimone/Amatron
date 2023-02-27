using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per WsCarrello
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class WsCarrello : System.Web.Services.WebService
{

    public WsCarrello()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    //bisogna sempre passare tutti i parametri e soprattutto in ORDINE
    [WebMethod]
    public void CARRELLO_Insert()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spCARRELLO_Insert";
        //DB.cmd.Parameters.AddWithValue("",);     
        DB.EseguiSPNonRead();
    }
    [WebMethod]
    public void CARRELLO_Update()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spCARRELLO_Update";
        //DB.cmd.Parameters.AddWithValue("",);     
        DB.EseguiSPNonRead();
    }
    [WebMethod]
    public void CARRELLO_Delete()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spCARRELLO_Delete";
        //DB.cmd.Parameters.AddWithValue("",);     
        DB.EseguiSPNonRead();
    }

    [WebMethod]
    public DataTable CARRELLO_SelectByKey()
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spCARRELLO_SelectByKey";
        dt = DB.EseguiSPRead();
        dt.TableName = "SelectByKey";
        return dt;
    }
    [WebMethod]
    public DataTable CARRELLO_SelectAll()
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spVENDITORI_SelectAll";
        dt = DB.EseguiSPRead();
        dt.TableName = "SelectAll";
        return dt;
    }

    [WebMethod]
    public DataTable CARRELLO_SelectByCliente()
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spCARRELLO_SelectByCliente";
        dt = DB.EseguiSPRead();
        dt.TableName = "SelectByCliente";
        return dt;
    }

    [WebMethod]
    public DataTable CARRELLO_SelectByProdotto()
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spCARRELLO_SelectByProdotto";
        dt = DB.EseguiSPRead();
        dt.TableName = "SelectByProdotto";
        return dt;
    }
}
