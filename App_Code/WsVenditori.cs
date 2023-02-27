using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per WsVenditori
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class WsVenditori : System.Web.Services.WebService
{

    public WsVenditori()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public void VENDITORI_Insert()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spVENDITORI_Insert";
        //DB.cmd.Parameters.AddWithValue("",);     
        DB.EseguiSPNonRead();
    }

    [WebMethod]
    public void VENDITORI_Update()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spVENDITORI_Update";
        //DB.cmd.Parameters.AddWithValue("", );
        DB.EseguiSPNonRead();
    }

    [WebMethod]
    public DataTable VENDITORI_SelectAll()
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
    public DataTable VENDITORI_SelectAll_DDL()
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spVENDITORI_SelectAll_DDL";
        dt = DB.EseguiSPRead();
        dt.TableName = "SelectAll_DDL";
        return dt;
    }

    [WebMethod]
    public DataTable VENDITORI_SelectByKey()
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spVENDITORI_SelectByKey";
        dt = DB.EseguiSPRead();
        dt.TableName = "SelectbyKey";
        return dt;
    }

    [WebMethod]
    public DataTable VENDITORI_Login(string email, string PWD)
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spVENDITORI_Login";
        DB.cmd.Parameters.AddWithValue("email", email);
        DB.cmd.Parameters.AddWithValue("PWD", PWD);
        dt = DB.EseguiSPRead();
        dt.TableName = "Login";
        return dt;
    }

    [WebMethod]
    public void VENDITORI_Abilita()
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spVENDITORI_Abilita";
        //DB.cmd.Parameters.AddWithValue("", );
        DB.EseguiSPNonRead();
    }

}
