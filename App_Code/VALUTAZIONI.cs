using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per VALUTAZIONI
/// </summary>
public class VALUTAZIONI
{
    public int chiaveordine;
    public int stelle;
    public string commento;
    public string datacommento;
    public int chiave;

    RifValutazioni.WsValutazioniSoapClient V = new RifValutazioni.WsValutazioniSoapClient();

    public VALUTAZIONI()
    {
        //
        // TODO: aggiungere qui la logica del costruttore
        //
    }

    public void Insert()
    {
        V.VALUTAZIONI_Insert(chiaveordine, stelle, commento, datacommento);
    }

    public DataTable SelectAll()
    {
        DataTable dt = new DataTable();
        dt = V.VALUTAZIONI_SelectAll();
        return dt;
    }

    public DataTable SelectAll_DDL()
    {
        DataTable dt = new DataTable();
        dt = V.VALUTAZIONI_SelectAll_DDL();
        return dt;
    }

    public DataTable SelectByKey()
    {
        DataTable dt = new DataTable();
        dt = V.VALUTAZIONI_SelectByKey(chiave);
        return dt;
    }

    public DataTable SelectByOrder()
    {
        DataTable dt = new DataTable();
        dt = V.VALUTAZIONI_SelectByOrder(chiaveordine);
        return dt;
    }
}