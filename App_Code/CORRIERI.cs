using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using RifCorrieri;


/// <summary>
/// Descrizione di riepilogo per CORRIERI
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
        //
        // TODO: aggiungere qui la logica del costruttore
        //
    }

    public void CORRIERI_Insert()
    {
        C.CORRIERI_Insert(email, PWD, abilitato, costocorriere, ragionesociale, piva, indirizzo, citta, provincia, CAP, telefono);
    }

    public void CORRIERI_Update()
    {
        C.CORRIERI_Update(chiave, email, PWD, abilitato, costocorriere, ragionesociale, piva, indirizzo, citta, provincia, CAP, telefono);
    }

    public DataTable CORRIERI_SelectAll()
    {
        DataTable DT = C.CORRIERI_SelectAll();
        return DT;
    }

    public DataTable CORRIERI_SelectAll_DDL()
    {
        DataTable DT = C.CORRIERI_SelectAll_DDL();
        return DT;
    }

    public DataTable CORRIERI_SelectByKey()
    {
        DataTable DT = C.CORRIERI_SelectByKey(chiave);
        return DT;
    }

    public DataTable CORRIERI_Login()
    {
        DataTable DT = C.CORRIERI_Login(email, PWD);
        return DT;
    }

    public void CORRIERI_Abilita()
    {
        C.CORRIERI_Abilita(chiave);
    }
}