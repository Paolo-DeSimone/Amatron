using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per RESI
/// </summary>
public class RESI
{
    public int chiave;
    public int chiaveOrdine;
    public string descrizione;
    public int qtaresa;
    public bool accettazione;
    public string datarichiesta;
    public string dataemissione;

    //istanzio il web service fuori dalla funzione cosi non devo ripeterlo
    RifResi.WsResiSoapClient R = new RifResi.WsResiSoapClient();

    public RESI()
    {
        //
        // TODO: aggiungere qui la logica del costruttore
        //
    }

    //richiamo il webservice fornendo tutti i parametri necessari
    public void Insert()
    {
        R.Resi_Insert(chiaveOrdine, descrizione, qtaresa, accettazione, datarichiesta, dataemissione);
    }

    public void Update()
    {
        R.Resi_Update(chiave, accettazione, dataemissione);
    }

    public DataTable SelectAll()
    {
        DataTable dt = new DataTable();
        R.Resi_SelectAll();
        return dt;
    }

    public DataTable SelectAll_DDL()
    {
        DataTable dt = new DataTable();
        R.RESI_SelectAll_DDL();
        return dt;
    }

    public DataTable SelectByKey()
    {
        DataTable dt = new DataTable();
        R.RESI_SelectByKey(chiave);
        return dt;
    }
    
    public DataTable SelectByOrder()
    {
        DataTable dt = new DataTable();
        R.RESI_SelectByOrder(chiaveOrdine);
        return dt;
    }
}