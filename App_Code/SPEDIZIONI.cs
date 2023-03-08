using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per SPEDIZIONI
/// </summary>
public class SPEDIZIONI
{

    public int chiave;
    public int chiaveORDINE;
    public string STATO;
    public string DATAORA;
    rifSpedizioniOL.WsSpedizioniSoapClient S = new rifSpedizioniOL.WsSpedizioniSoapClient();
    public SPEDIZIONI()
    {
        //
        // TODO: aggiungere qui la logica del costruttore
        //
    }

    /// <summary>
    /// tramite questo metodo inserisco un nuova spedizione 
    /// </summary>

    public void SPEDIZIONI_Insert()
    {
        S.SPEDIZIONI_Insert(chiave, chiaveORDINE, STATO, DATAORA);
    }

    /// <summary>
    /// tramite questo metodo si ottiene una matrice di tutti gli oggetti della tabella SPEDIZIONI tramite la selezione di una chiave
    /// </summary>
    /// <returns> restituisce un singolo record di SPEDIZIONI tramite una chiave specifica</returns>
    public DataTable SPEDIZIONI_SelectByKey()
    {
        DataTable DT = new DataTable();
        DT=S.SPEDIZIONI_SelectByKey(chiave);
        return DT;
    }

    /// <summary>
    /// tramite questo metodo si ottiene una matrice di tutti gli oggetti della tabella SPEDIZIONI tramite la selezione di un ordine
    /// </summary>
    /// <returns>restituisce un singolo record di SPEDIZIONI tramite un ordine</returns>
    public DataTable SPEDIZIONI_SelectByOrdine()
    {
        DataTable DT = new DataTable();
        DT=S.SPEDIZIONI_SelectByOrdine(chiave);
        return DT;
    }

    /// <summary>
    /// tramite questo metodo seleziona tutti i campi dei record disponibili
    /// </summary>
    /// <returns>restituisce tutti gli elementi nella tabella SPEDIZIONI</returns>
    public DataTable SPEDIZIONI_SelectAll()
    {
        DataTable DT = new DataTable();
        DT=S.SPEDIZIONI_SelectAll();
        return DT;
    }

    /// <summary>
    /// tramite questo metodo modifico lo stato 
    /// </summary>
    /// <returns>restituisce la parte successiva dello stato</returns>
    public void SPEDIZIONI_UpdateStato()
    {
        S.SPEDIZIONI_UpdateStato(chiave,STATO);
    }

}