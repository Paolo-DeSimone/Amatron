using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;



public class UTENTI
{
    public int chiave;
    public string username;
    public string password;
    public string tipo;
    public UTENTI()
    {

    }
    //Metodo per verificare se le credenziali dell'utente siano corrette
    public DataTable Login()
    {
        DATABASE D = new DATABASE();
        DataTable DT = new DataTable();
        D.query = "UTENTI_Login";
        D.cmd.Parameters.AddWithValue("usr", username);
        D.cmd.Parameters.AddWithValue("pwd", password);
        DT = D.EseguiSPRead();
        return DT;

    }

    //Metodo per inserire un nuovo utente -LUIGI
    public void Inserisci()
    {
        DATABASE d = new DATABASE();
        d.query = "UTENTI_InsertUtenti";
        d.cmd.Parameters.AddWithValue("username", username);
        d.cmd.Parameters.AddWithValue("password", password);
        d.EseguiSPNonRead();
        //databind nel cs

    }

    // Metodo per avere in una DataTable 1 solo row della tabella UTENTI (serve per trasportare le cose da una griglia ad una textbox)(UTENTI_SelectByKey) -IO

    public DataTable SelectedByKey()
    {
        DATABASE D = new DATABASE();
        DataTable DT = new DataTable();
        D.query = "UTENTI_SelectByKey";
        D.cmd.Parameters.AddWithValue("varChiave", chiave);
        DT = D.EseguiSPRead();
        return DT;
    }

    //Metodo per modificare un utente esistente(UTENTI_ModificaUtenti) -PAOLO
    public void Modifica()
    {
        DATABASE DB = new DATABASE();
        DB.query = "UTENTI_ModificaUtenti";
        DB.cmd.Parameters.AddWithValue("varUSR", username);
        DB.cmd.Parameters.AddWithValue("varPWD", password);
        DB.cmd.Parameters.AddWithValue("varChiave", chiave);
        DB.EseguiSPNonRead();
        //fare il databind nel aspx.cs
    }

    // Metodo per avere in una DataTable tutti i record della tabella UTENTI(Creare una stored procedure da collegare alla grid per mostrare tutte i campi che saranno poi inseriti nella stessa)
    public DataTable DatiGriglia()
    {
        DATABASE D = new DATABASE();
        DataTable DT = new DataTable();
        D.query = "UTENTI_DatiGriglia";
        D.EseguiSPRead();
        return DT;
    }

}




