using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Data.Sql;


/// <summary>
/// Descrizione di riepilogo per ORDINI
/// </summary>
public class ORDINI
{
    public int chiave;
    public int chiavecorriere;
    public int chiaveprodotto;
    public int chiavecliente;
    public int qta;
    public string datatransazione;
    public int numeroordine;
    public bool gestito;


    //istanzio il web service fuori dalla funzione cosi non devo ripeterlo
    rifOrdiniOL.WsOrdiniSoapClient O = new rifOrdiniOL.WsOrdiniSoapClient();

    public ORDINI()
    {
        //
        // TODO: aggiungere qui la logica del costruttore
        //
    }

    //richiamo il webservice fornendo tutti i parametri necessari

    public void Insert()
    {      

        O.ORDINI_Insert(chiavecorriere, chiaveprodotto, chiavecliente, datatransazione, qta, numeroordine);
    }
 
     public void Update()
    {      
        O.ORDINI_Update(chiave, datatransazione, qta, numeroordine);
    } 
    
    public void Delete()
    {
        O.ORDINI_Delete(chiave);
    }

    public DataTable SelectAll()
    {
        DataTable dt = new DataTable();
        dt=O.ORDINI_SelectAll();
        return dt;
    }

    public DataTable SelectByKey()
    {
        DataTable dt = new DataTable();
        dt=O.ORDINI_SelectByKey(chiave);
        return dt;
    }
    
    public DataTable SelectProdottoAcquistato()
    {
        DataTable dt = new DataTable();
        dt = O.CLIENTI_ProdottoAcquistato(chiaveprodotto, chiavecliente);
        return dt;
    }

    public DataTable SelectByCorriere()
    {
        DataTable dt = new DataTable();
        dt = O.ORDINI_SelectByCorriere(chiavecorriere);
        return dt;
    }

    public DataTable SelectByProdotto()
    {
        DataTable dt = new DataTable();
        dt = O.ORDINI_SelectByProdotto(chiaveprodotto);
        return dt;
    }

    public DataTable SelectByCliente()
    {
        DataTable dt = new DataTable();
        dt = O.ORDINI_SelectByCliente(chiavecliente);
        return dt;
    }

    //Metodo inserito per la Gestione Ordini (George D.)
    public void ORDINI_GESTITO()
    {
        O.ORDINI_GESTITO(chiave, chiavecorriere, gestito);
    }


    //Metodo inserito per la grigliaORDINI (George D.)
    public DataTable ORDINI_GESTISCI()
    {
        DataTable dt = new DataTable();
        dt = O.ORDINI_GESTISCI();
        return dt;
    }
    //Metodo inserito per l'assegnazone del corriere (George D.)
    public DataTable CORRIERI_CHIAVERandom()
    {
        DataTable dt = new DataTable();
        dt = O.CORRIERI_CHIAVERandom();
        return dt;
    }

    
}