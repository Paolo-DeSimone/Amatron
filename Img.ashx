<%@ WebHandler Language="C#" Class="Img" %>

using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;


public class Img : IHttpHandler {

    public void ProcessRequest (HttpContext context) {

        int chiave = int.Parse(context.Request.QueryString["c"].ToString());

        IMMAGINI I = new IMMAGINI();
        DataTable dt = new DataTable();
        I.chiaveprodotto = chiave;
        dt = I.SelectByProdotto();

        // leggo i dati dell'immagine dalla datatable
        string titolo = dt.Rows[0]["TITOLO_IMMAGINE"].ToString();
        string tipo = dt.Rows[0]["TIPO"].ToString();
        byte[] ImgData = (byte[])dt.Rows[0]["DOC"];

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