using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
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
    public DataTable FILTRA_Descrizione(string descrizione)
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spFILTRA_Descrizione";
        DB.cmd.Parameters.AddWithValue("descrizione", descrizione);
        dt = DB.EseguiSPRead();
        dt.TableName = "Descrizione";
        return dt;
    }
    
    [WebMethod]
    public DataTable FILTRA_Titolo(string titolo)
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spFILTRA_Titolo";
        DB.cmd.Parameters.AddWithValue("titolo", titolo);
        dt = DB.EseguiSPRead();
        dt.TableName = "Titolo";
        return dt;
    }
    
    [WebMethod]
    public DataTable FILTRA_Categoria(string categoria)
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spFILTRA_Categoria";
        DB.cmd.Parameters.AddWithValue("categoria", categoria);
        dt = DB.EseguiSPRead();
        dt.TableName = "Categoria";
        return dt;
    }

}
