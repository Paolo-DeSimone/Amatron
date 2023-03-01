<%@ WebHandler Language="C#" Class="GestoreImmagini" %>

using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class GestoreImmagini : IHttpHandler {

    public void ProcessRequest (HttpContext context) {
        //leggo la chiave passata da default
        int chiave = int.Parse(context.Request.QueryString["c"].ToString());
        RifImmagini.WsImmaginiSoapClient rif = new RifImmagini.WsImmaginiSoapClient();
        IMMAGINI I = new IMMAGINI();
        DataTable dt = new DataTable();
        dt = rif.IMMAGINI_SelectByKey(chiave);

        // leggo i dati dell'immagine dalla datatable
        string titolo = dt.Rows[0]["TITOLO"].ToString();
        byte[] ImgData = (byte[])dt.Rows[0]["DOC"];
        string tipo = dt.Rows[0]["TIPO"].ToString();

        // mi serve il codice per ricostruire l'immagine in formato web/http
        context.Response.Buffer = true;
        context.Response.Charset = "";
        context.Response.AppendHeader("Content-Disposition", "attachement; filename=" + titolo);
        context.Response.Cache.SetCacheability(HttpCacheability.NoCache);
        context.Response.ContentType = tipo;
        context.Response.BinaryWrite(ImgData);
        context.Response.Flush();
        context.Response.End();
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}