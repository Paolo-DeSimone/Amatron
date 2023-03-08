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
<<<<<<< HEAD
    public DataTable FILTRA(int chiaveProdotti, int chiaveCategorie)
=======
    public DataTable FILTRA(string c, string p)
>>>>>>> a7f7603e955c12c823a34c63b81d145f49123cc1
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spFILTRA";
<<<<<<< HEAD
        DB.cmd.Parameters.AddWithValue("p", chiaveProdotti);
        DB.cmd.Parameters.AddWithValue("c", chiaveCategorie);
=======
        DB.cmd.Parameters.AddWithValue("c", c);
        DB.cmd.Parameters.AddWithValue("p", p);
>>>>>>> a7f7603e955c12c823a34c63b81d145f49123cc1
        dt = DB.EseguiSPRead();
        dt.TableName = "searchTerm";
        return dt;
    }
}
