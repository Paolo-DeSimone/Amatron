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
    public int chiaveprodotto;
    public int chiavecliente;
    public int stelle;
    public string commento;
    public string datacommento;
    public int chiave;

    rifValutazioniOL.WsValutazioniSoapClient V = new rifValutazioniOL.WsValutazioniSoapClient();

    public VALUTAZIONI()
    {
        //
        // TODO: aggiungere qui la logica del costruttore
        //
    }

    public void Insert()
    {
        V.VALUTAZIONI_Insert(chiaveprodotto, stelle, commento, datacommento);
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

    public DataTable SelectByProdotto()
    {
        DataTable dt = new DataTable();
        dt = V.VALUTAZIONI_SelectByProdotto(chiaveprodotto);
        return dt;
    }

    public DataTable Media()
    {
        DataTable dt = new DataTable();
        dt = V.VALUTAZIONI_Media(chiaveprodotto);
        return dt;
    }
    
    public DataTable ProdottoRecensito()
    {
        DataTable dt = new DataTable();
        dt = V.VALUTAZIONI_ProdottoRecensito(chiaveprodotto, chiavecliente);
        return dt;
    }
    
    public DataTable RecensioniClienti()
    {
        DataTable dt = new DataTable();
        dt = V.VALUTAZIONI_RecensioniClienti(chiaveprodotto);
        return dt;
    }
}