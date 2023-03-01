﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per WsValutazioni
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class WsValutazioni : System.Web.Services.WebService
{

    public WsValutazioni()
    {

        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public void VALUTAZIONI_Insert(int chiaveordine, int stelle, string commento, string datacommento)
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.AddWithValue("chiaveORDINE", chiaveordine);
        DB.cmd.Parameters.AddWithValue("STELLE", stelle);
        DB.cmd.Parameters.AddWithValue("COMMENTO", commento);
        DB.cmd.Parameters.AddWithValue("DATACOMMENTO", datacommento);
        DB.EseguiSPNonRead();
        DB.query = "spVALUTAZIONI_Insert";
    }

    [WebMethod]
    public DataTable VALUTAZIONI_SelectAll()
    {
        DataTable dt = new DataTable();
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spVALUTAZIONI_SelectAll";
        dt.TableName = "SelectByAll";
        return DB.EseguiSPRead();
    }

    [WebMethod]
    public DataTable VALUTAZIONI_SelectAll_DDL()
    {
        DataTable dt = new DataTable();
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.query = "spVALUTAZIONI_SelectAll_DDL";
        dt.TableName = "SelectByAllDDL";
        return DB.EseguiSPRead();
    }

    [WebMethod]
    public DataTable VALUTAZIONI_SelectByKey(int chiave)
    {
        DataTable dt = new DataTable();
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.cmd.Parameters.AddWithValue("chiave", chiave);
        DB.query = "spVALUTAZIONI_SelectByKey";
        dt.TableName = "SelectByKey";
        return DB.EseguiSPRead();
    }

    [WebMethod]
    public DataTable VALUTAZIONI_SelectByOrder(int chiave, int chiaveordine)
    {
        DataTable dt = new DataTable();
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.cmd.Parameters.AddWithValue("chiaveORDINE", chiaveordine);
        DB.cmd.Parameters.AddWithValue("chiave", chiave);
        DB.query = "spVALUTAZIONI_SelectByOrder";
        dt.TableName = "SelectByOrder";
        return DB.EseguiSPRead();
    }
}