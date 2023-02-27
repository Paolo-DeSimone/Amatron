using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per WsFiltra
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class WsFiltra : System.Web.Services.WebService
{

    public WsFiltra()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataTable FILTRA_Descrizione()
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spFILTRA_Descrizione";
        dt = DB.EseguiSPRead();
        dt.TableName = "Descrizione";
        return dt;
    }
    
    [WebMethod]
    public DataTable FILTRA_Titolo()
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spFILTRA_Titolo";
        dt = DB.EseguiSPRead();
        dt.TableName = "Titolo";
        return dt;
    }
    
    [WebMethod]
    public DataTable FILTRA_Categoria()
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spFILTRA_Categoria";
        dt = DB.EseguiSPRead();
        dt.TableName = "Categoria";
        return dt;
    }

}
