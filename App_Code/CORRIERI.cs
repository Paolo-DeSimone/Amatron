using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using RifCorrieri;


/// <summary>
/// Stabilisce le operazioni che si possono fare sulla tabella corrieri
/// </summary>
public class CORRIERI
{
    public int chiave;
    public string email;
    public string PWD;
    public bool abilitato;
    public float costocorriere;
    public string ragionesociale;
    public string piva;
    public string indirizzo;
    public string citta;
    public string provincia;
    public string CAP;
    public string telefono;
    RifCorrieri.WsCorrieriSoapClient C = new WsCorrieriSoapClient();
    public CORRIERI()
    {

    }

    /// <summary>
    /// Inserisce un nuovo corriere nel db
    /// </summary>
    public void CORRIERI_Insert()
    {
        C.CORRIERI_Insert(email, PWD, abilitato, costocorriere, ragionesociale, piva, indirizzo, citta, provincia, CAP, telefono);
    }

    /// <summary>
    /// Aggiorna i dati relativi ai corrieri nel db
    /// </summary>
    public void CORRIERI_Update()
    {
        C.CORRIERI_Update(chiave, email, PWD, abilitato, costocorriere, ragionesociale, piva, indirizzo, citta, provincia, CAP, telefono);
    }

    /// <summary>
    /// Seleziona tutti i dati della tabella corrieri e li restituisce in una dt
    /// </summary>
    /// <returns>Restituisce tutti i record della tabella corrieri</returns>
    public DataTable CORRIERI_SelectAll()
    {
        DataTable DT = C.CORRIERI_SelectAll();
        return DT;
    }

    /// <summary>
    /// Seleziona la ragione sociale e la chiave dalla tabella corrieri, restituendoli in una dt
    /// </summary>
    /// <returns>Restituisce la chiave e la ragionesociale dalla tabella corrieri</returns>
    public DataTable CORRIERI_SelectAll_DDL()
    {
        DataTable DT = C.CORRIERI_SelectAll_DDL();
        return DT;
    }

    /// <summary>
    /// Seleziona tutti i dati di un corriere, data una chiave
    /// </summary>
    /// <returns>Restituisce una singolo record di corrieri relativo ad una chiave specifica</returns>
    public DataTable CORRIERI_SelectByKey()
    {
        DataTable DT = C.CORRIERI_SelectByKey(chiave);
        return DT;
    }

    /// <summary>
    /// Seleziona email e password dalla tabella corrieri per l'operazione di login
    /// </summary>
    /// <returns>Restituisce email e pwd da una riga dalla tabella corrieri </returns>
    public DataTable CORRIERI_Login()
    {
        DataTable DT = C.CORRIERI_Login(email, PWD);
        return DT;
    }

    /// <summary>
    /// Aggiorna lo stato di abilitazione di un corriere, una volta fatta l'iscrizione
    /// </summary>
    public void CORRIERI_Abilita()
    {
        C.CORRIERI_Abilita(chiave);
    }
}