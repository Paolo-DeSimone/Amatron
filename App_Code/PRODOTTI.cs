using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per PRODOTTI
/// </summary>
public class PRODOTTI
{
    public int chiave;
    public int chiaveVENDITORE;
    public int chiaveCATEGORIA;
    public string titolo;
    public string descrizione;
    public float prezzo;
    public int qnt;
    public string datacaricamento;
    public int permacatron;

    //istanzio il web service fuori dalla funzione cosi non devo ripeterlo
    RifProdotti.WsProdottiSoapClient P = new RifProdotti.WsProdottiSoapClient();

    public PRODOTTI()
    {
        //
        // TODO: aggiungere qui la logica del costruttore
        //
    }

    //richiamo il webservice fornendo tutti i parametri necessari
    public void Insert()
    {
        P.PRODOTTI_Insert(chiaveVENDITORE, chiaveCATEGORIA, titolo, descrizione, prezzo, qnt, datacaricamento, permacatron);
    }

    public void Update()
    {
        P.PRODOTTI_Update(chiave, chiaveVENDITORE, chiaveCATEGORIA, titolo, descrizione, prezzo, qnt, datacaricamento, permacatron);
    } 
    
    public void Delete()
    {
        P.PRODOTTI_Delete(chiave);
    }

    public DataTable SelectAll()
    {
        DataTable dt = new DataTable();
        P.PRODOTTI_SelectAll();
        return dt;
    }

    public DataTable SelectAll_DDL()
    {
        DataTable dt = new DataTable();
        P.PRODOTTI_SelectAll_DDL();
        return dt;
    }
    
    public DataTable SelectByKey()
    {
        DataTable dt = new DataTable();
        P.PRODOTTI_SelectByKey(chiave);
        return dt;
    }
    
    public DataTable SelectByVenditore()
    {
        DataTable dt = new DataTable();
        P.PRODOTTI_SelectByVenditore(chiaveVENDITORE);
        return dt;
    }
    
    public DataTable SelectByCategoria()
    {
        DataTable dt = new DataTable();
        P.PRODOTTI_SelectByCategoria(chiaveCATEGORIA);
        return dt;
    }
    
    public DataTable MAX20Novita()
    {
        DataTable dt = new DataTable();
        P.PRODOTTI_MAX20Novità();
        return dt;
    }
    
    public DataTable MAX20Valutazione()
    {
        DataTable dt = new DataTable();
        P.PRODOTTI_MAX20Valutazione();
        return dt;
    }
    
    public DataTable MAX20Venduti()
    {
        DataTable dt = new DataTable();
        P.PRODOTTI_MAX20Venduti();
        return dt;
    }
}