using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per IMMAGINI
/// </summary>
public class IMMAGINI
{
    public IMMAGINI()
    {
        //
        // TODO: aggiungere qui la logica del costruttore
        //
    }

    public int chiave;
    public int chiaveprodotto;
    public string titolo;
    public byte[] doc;
    public string tipo;
    RifImmagini.WsImmaginiSoapClient I = new RifImmagini.WsImmaginiSoapClient();

    public void Insert()
    {
        I.IMMAGINI_Insert(chiaveprodotto, titolo, doc, tipo);
    }

    public void Delete()
    {
        I.IMMAGINI_Delete(chiave);
    }

    public DataTable SelectByKey()
    {
        DataTable DT = new DataTable();
        DT = I.IMMAGINI_SelectByKey(chiave);
        return DT;
    }

    public DataTable SelectByProdotto()
    {
        DataTable DT = new DataTable();
        DT = I.PRODOTTI_IMMAGINI_SelectByProdotto(chiaveprodotto);
        return DT;
    }
}