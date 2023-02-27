using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per WsCorrieri
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class WsCorrieri : System.Web.Services.WebService
{

    public WsCorrieri()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public void CORRIERI_Insert()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spCORRIERI_Insert";
        //DB.cmd.Parameters.AddWithValue("",);     
        DB.EseguiSPNonRead();
    }

    [WebMethod]
    public void CORRIERI_Update()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spCORRIERI_Update";
        //DB.cmd.Parameters.AddWithValue("", );
        DB.EseguiSPNonRead();
    }

    [WebMethod]
    public DataTable CORRIERI_SelectAll()
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spCORRIERI_SelectAll";
        dt = DB.EseguiSPRead();
        dt.TableName = "SelectAll";
        return dt;
    }

    [WebMethod]
    public DataTable CORRIERI_SelectAll_DDL()
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spCORRIERI_SelectAll_DDL";
        dt = DB.EseguiSPRead();
        dt.TableName = "SelectAll_DDL";
        return dt;
    }

    [WebMethod]
    public DataTable CORRIERI_SelectByKey()
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spCORRIERI_SelectByKey";
        dt = DB.EseguiSPRead();
        dt.TableName = "SelectByKey";
        return dt;
    }

    [WebMethod]
    public DataTable CORRIERI_Login(string email, string PWD)
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spCORRIERI_Login";
        DB.cmd.Parameters.AddWithValue("email", email);
        DB.cmd.Parameters.AddWithValue("PWD", PWD);
        dt = DB.EseguiSPRead();
        dt.TableName = "Login";
        return dt;
    }

    [WebMethod]
    public void CORRIERI_Abilita()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spCORRIERI_Abilita";
        //DB.cmd.Parameters.AddWithValue("", );
        DB.EseguiSPNonRead();
    }

}
