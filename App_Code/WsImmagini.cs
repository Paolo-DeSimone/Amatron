﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per WsImmagini
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Per consentire la chiamata di questo servizio Web dallo script utilizzando ASP.NET AJAX, rimuovere il commento dalla riga seguente. 
// [System.Web.Script.Services.ScriptService]
public class WsImmagini : System.Web.Services.WebService
{

    public WsImmagini()
    {
        //Rimuovere il commento dalla riga seguente se si utilizzano componenti progettati 
        //InitializeComponent(); 
    }

    [WebMethod]
    public DataTable IMMAGINI_SelectByKey(int chiave)
    {
        DATABASE DB = new DATABASE();
        DataTable dt = new DataTable();
        DB.cmd.Parameters.Clear();
        DB.query = "spIMMAGINI_SelectByKey";
        DB.cmd.Parameters.AddWithValue("chiave", chiave);
        dt.TableName = "SelectByKey";
        return DB.EseguiSPRead();
    }

    [WebMethod]
    public void IMMAGINI_Insert(int chiaveprodotto, string titolo, byte[] doc, string tipo)
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.AddWithValue("chiavePRODOTTO", chiaveprodotto);
        DB.cmd.Parameters.AddWithValue("TITOLO", titolo);
        DB.cmd.Parameters.AddWithValue("DOC", doc);
        DB.cmd.Parameters.AddWithValue("TIPO", tipo);
        DB.EseguiSPNonRead();
        DB.query = "spIMMAGINI_Insert";
    }

    [WebMethod]
    public void IMMAGINI_Delete(int chiave)
    {
        DATABASE DB = new DATABASE();
        DB.cmd.Parameters.Clear();
        DB.cmd.Parameters.AddWithValue("chiave", chiave);
        DB.query = "spORDINI_Delete";
        DB.EseguiSPNonRead();
    }
}

