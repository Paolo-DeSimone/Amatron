using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using RifSpedizioni;

/// <summary>
/// Descrizione di riepilogo per SPEDIZIONI
/// </summary>
public class SPEDIZIONI
{

    public int chiave;
    public int chiaveORDINE;
    public string STATO;
    public string DATAORA;
    RifSpedizioni.WsSpedizioniSoapClient S = new WsSpedizioniSoapClient();
    public SPEDIZIONI()
    {
        //
        // TODO: aggiungere qui la logica del costruttore
        //
    }

    public void SPEDIZIONI_Insert()
    {
        S.SPEDIZIONI_Insert(chiave, chiaveORDINE, STATO, DATAORA);
    }

    public DataTable SPEDIZIONI_SelectByKey()
    {
        DataTable DT = new DataTable();
        S.SPEDIZIONI_SelectByKey(chiave);
        return DT;
    }

    public DataTable SPEDIZIONI_SelectByOrdine()
    {
        DataTable DT = new DataTable();
        S.SPEDIZIONI_SelectByOrdine(chiave);
        return DT;
    }

    public DataTable SPEDIZIONI_SelectAll()
    {
        DataTable DT = new DataTable();
        S.SPEDIZIONI_SelectAll();
        return DT;
    }

    }