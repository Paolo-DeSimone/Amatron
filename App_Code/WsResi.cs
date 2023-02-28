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
    public void Resi_Insert(int chiaveordine, string descrizione, int qtaresa, bool accettazione,string datarichiesta, string dataemissione)
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.AddWithValue("chiaveORDINE", chiaveordine);
        DB.cmd.Parameters.AddWithValue("DESCRIZIONE", descrizione);
        DB.cmd.Parameters.AddWithValue("QTARESA", qtaresa);
        DB.cmd.Parameters.AddWithValue("ACCETTAZIONE", accettazione);
        DB.cmd.Parameters.AddWithValue("DATARICHIESTA", datarichiesta);
        DB.cmd.Parameters.AddWithValue("DATAEMISSIONE", dataemissione);
        DB.EseguiSPNonRead();
        DB.query = "spResi_Insert";
    }

    [WebMethod]
    public void Resi_Update(int chiaveordine, string descrizione, int qtaresa, bool accettazione,string datarichiesta, string dataemissione)
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.cmd.Parameters.AddWithValue("chiaveORDINE", chiaveordine);
        DB.cmd.Parameters.AddWithValue("DESCRIZIONE", descrizione);
        DB.cmd.Parameters.AddWithValue("QTARESA", qtaresa);
        DB.cmd.Parameters.AddWithValue("ACCETTAZIONE", accettazione);
        DB.cmd.Parameters.AddWithValue("DATARICHIESTA", datarichiesta);
        DB.cmd.Parameters.AddWithValue("DATAEMISSIONE", dataemissione);
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
    public DataTable RESI_SelectByKey(int chiave)
    {
        DataTable dt = new DataTable();
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.cmd.Parameters.AddWithValue("chiave", chiave);
        DB.query = "spRESI_SelectByKey";
        dt.TableName = "SelectByKey";
        return DB.EseguiSPRead();
    }

    [WebMethod]
    public DataTable RESI_SelectByOrder(int chiaveordine)
    {

        DataTable dt = new DataTable();
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.cmd.Parameters.AddWithValue("chiaveOrdine", chiaveordine);
        DB.query = "spRESI_SelectByOrder";
        dt.TableName = "SelectByOrder";
        return DB.EseguiSPRead();
    }
}
