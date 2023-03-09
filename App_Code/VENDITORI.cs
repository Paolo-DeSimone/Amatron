using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per VENDITORI
/// </summary>
public class VENDITORI
{/// <summary>
/// Dichiaro i membri dati della classe Venditori che saranno richiamati nei WebMethod
/// </summary>
    public int chiave;
    public string ragionesociale;
    public string piva;
    public string indirizzo;
    public string provincia;
    public string citta;
    public string CAP;
    public string telefono;
    public string email;
    public string PWD;
    public bool abilitato;
    public string venditore;

    //per webservices Storico Vendite
    public string DInizio;
    public string DFine;
    public string TITOLO;
    public int chiaveCATEGORIA;
    public int chiaveORDINI;

    rifVenditoriOL.WsVenditoriSoapClient V = new rifVenditoriOL.WsVenditoriSoapClient();
    public VENDITORI()
    {

    }
    /// <summary>
    /// Metodo utile per l'inserimento di un nuovo venditore nel DB
    /// </summary>
    public void Insert()
    {
        V.VENDITORI_Insert(ragionesociale, piva, indirizzo, provincia, citta, CAP, telefono, email, PWD, abilitato);
    }
    /// <summary>
    /// Metodo utile per la modifica di un Venditore gia esistente nel DB
    /// </summary>
    public void Update()
    {
        V.VENDITORI_Update(chiave, ragionesociale, piva, indirizzo, provincia, citta, CAP, telefono, email, PWD, abilitato);
    }

    /// <summary>
    /// Metodo utile per popolare ??? con tutti i Venditori
    /// </summary>
    /// <returns></returns>
    public DataTable SelectAll()
    {
        DataTable DT = V.VENDITORI_SelectAll();
        return DT;
    }
    /// <summary>
    /// Metodo utile per popolare una DDL con tutti i Venditori presenti nel DB
    /// </summary>
    /// <returns>Restituisce tutti i Venditori presenti nel DB</returns>
    public DataTable SelectAll_DDL()
    {
        DataTable DT = V.VENDITORI_SelectAll_DDL();
        return DT;
    }

    /// <summary>
    /// Metodo che seleziona un record di un Venditore specifico la cui chiave corrisponde a quella selezionata
    /// </summary>
    /// <returns>Restituisce la chiave, dunque il record, del Venditore selezionato</returns>
    public DataTable SelectByKey()
    {
        DataTable DT = V.VENDITORI_SelectByKey(chiave);
        return DT;
    }

    /// <summary>
    /// Metodo per effetuare Login per un Venditore
    /// </summary>
    /// <returns>Restituirà email e PWD di un Venditore</returns>
    public DataTable Login()
    {
        DataTable DT = V.VENDITORI_Login(email, PWD);
        return DT;
    }

    /// <summary>
    /// Metodo per abilitare un Venditore secondo una specifica chiave
    /// </summary>
    public void Abilita()
    {
        V.VENDITORI_Abilita(chiave);
    }

    public DataTable ORDINI_SelectAll()
    {
        DataTable DT = V.VENDITORI_ORDINI_SelectAll(chiave);
        return DT;
    }

    public DataTable VENDITORI_Filter()
    {
        DataTable DT = V.VENDITORI_ORDINI_Filter(chiave, TITOLO, chiaveCATEGORIA, chiaveORDINI, DInizio, DFine);
        return DT;
    }

    public DataTable FiltraVenditori()
    {
        rifFiltraOL.WsFiltraSoapClient F = new rifFiltraOL.WsFiltraSoapClient();
        DataTable dt = F.FILTRA_Venditori(venditore);
        return dt;
    }
}