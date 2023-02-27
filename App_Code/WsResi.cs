using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per WsResi
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class WsResi : System.Web.Services.WebService
{

    public WsResi()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public void Resi_Insert()
    {
        DATABASE DB = new DATABASE();
        //  DB.cmd.Parameters.AddWithValue("",);
        DB.EseguiSPNonRead();
        DB.query = "spResi_Insert";
    }

    [WebMethod]
    public void Resi_Update()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        //DB.cmd.Parameters.AddWithValue();
        DB.query = "spResi_Update";
        DB.EseguiSPNonRead();
    }

    [WebMethod]
    public DataTable Resi_SelectAll()
    {
        DataTable dt = new DataTable();
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spResi_SelectAll";
        dt.TableName = "SelectByAll";
        return DB.EseguiSPRead();
    }

    [WebMethod]
    public DataTable RESI_SelectAll_DDL()
    {
        DataTable dt = new DataTable();
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spResi_SelectAll_DDL";
        dt.TableName = "SelectAllDDL";
        return DB.EseguiSPRead();
    }
    [WebMethod]
    public DataTable RESI_SelectByKey()
    {
        DataTable dt = new DataTable();
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spRESI_SelectByKey";
        dt.TableName = "SelectByKey";
        return DB.EseguiSPRead();
    }

    [WebMethod]
    public DataTable RESI_SelectByOrder()
    {
        DataTable dt = new DataTable();
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spRESI_SelectByOrder";
        dt.TableName = "SelectByOrder";
        return DB.EseguiSPRead();
    }
}
