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
    public int qta;
    public string datacaricamento;
    public int percamatron;
    RifProdotti.WsProdottiSoapClient P = new RifProdotti.WsProdottiSoapClient();


    //istanzio il web service fuori dalla funzione cosi non devo ripeterlo
    public PRODOTTI()
    {
        //
        // TODO: aggiungere qui la logica del costruttore
        //
    }

    //richiamo il webservice fornendo tutti i parametri necessari
    public void Insert()
    {
        P.PRODOTTI_Insert(chiaveVENDITORE, chiaveCATEGORIA, titolo, descrizione, prezzo, qta, datacaricamento, percamatron);
    }

    public void Update()
    {

        P.PRODOTTI_Update(chiave, chiaveVENDITORE, chiaveCATEGORIA, titolo, descrizione, prezzo, qta, datacaricamento, percamatron);
    }
    public void Update_QTA()
    {

        P.PRODOTTI_Update_QTA(chiave, qta);
    }

    public void Delete()
    {

        P.PRODOTTI_Delete(chiave);
    }

    public DataTable SelectAll()
    {

        DataTable dt = new DataTable();
        dt = P.PRODOTTI_SelectAll();
        return dt;
    }

    public DataTable SelectAll_DDL()
    {

        DataTable dt = new DataTable();
        dt=P.PRODOTTI_SelectAll_DDL();
        return dt;
    }
    
    public DataTable SelectByKey()
    {
        DataTable dt = new DataTable();
        dt = P.PRODOTTI_SelectByKey(chiave);
        return dt;
    }
    
    public DataTable SelectByVenditore()
    {

        DataTable dt = new DataTable();
        dt = P.PRODOTTI_SelectByVenditore(chiaveVENDITORE);
        return dt;
    }
    
    public DataTable SelectByCategoria()
    {

        DataTable dt = new DataTable();
        dt = P.PRODOTTI_SelectByCategoria(chiaveCATEGORIA);
        return dt;
    }
    
    public DataTable MAX20Novita()
    {

        DataTable dt = new DataTable();
        dt = P.PRODOTTI_MAX20Novità();
        return dt;
    }
    
    public DataTable MAX20Valutazione()
    {

        DataTable dt = new DataTable();
        dt = P.PRODOTTI_MAX20Valutazione();
        return dt;
    }
    
    public DataTable MAX20Venduti()
    {

        DataTable dt = new DataTable();
        dt = P.PRODOTTI_MAX20Venduti();
        return dt;
    }
}