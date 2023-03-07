<%@ WebHandler Language="C#" Class="GestoreImmagini" %>
using System.Threading.Tasks;
using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class GestoreImmagini : HttpTaskAsyncHandler
{

    public override async Task ProcessRequestAsync(HttpContext context)
    {
        //leggo la chiave passata da default
        int chiave = int.Parse(context.Request.QueryString["c"].ToString());
        IMMAGINI I = new IMMAGINI();
        DataTable dt = new DataTable();
        I.chiave = chiave;
        dt = I.SelectByKey();

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

    public bool  IsReusable
    {
        get
        {
            return false;
        }
    }

}