using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class CLIENTI
{

    public int chiave;
    public string EMAIL;
    public string PWD;
    public bool PRIME;
    public string SCADENZAPRIME;
    public string COGNOME;
    public string NOME;
    public string INDIRIZZO;
    public string CITTA;
    public string PROVINCIA;
    public string CAP;
    public string TELEFONO;
    public DataTable DT = new DataTable();

    public CLIENTI()
    {
       
    }

    public void INSERT()
    {
        DATABASE D = new DATABASE();
        D.query = "spCLIENTI_Insert";
        D.cmd.Parameters.AddWithValue("@EMAIL",EMAIL);
        D.cmd.Parameters.AddWithValue("@PWD", PWD);
        D.cmd.Parameters.AddWithValue("@PRIME", PRIME);
        D.cmd.Parameters.AddWithValue("@SCADENZAPRIME", SCADENZAPRIME);
        D.cmd.Parameters.AddWithValue("@COGNOME", COGNOME);
        D.cmd.Parameters.AddWithValue("@NOME", NOME);
        D.cmd.Parameters.AddWithValue("@EMAIL", EMAIL);
        D.cmd.Parameters.AddWithValue("@INDIRIZZO", INDIRIZZO);
        D.cmd.Parameters.AddWithValue("@CITTA", CITTA);
        D.cmd.Parameters.AddWithValue("@PROVINCIA", PROVINCIA);
        D.cmd.Parameters.AddWithValue("@CAP", CAP);
        D.cmd.Parameters.AddWithValue("@TELEFONO", TELEFONO);
        D.EseguiSPNonRead();
    }


    public DataTable LOGIN()
    {

        DATABASE D = new DATABASE();
        DataTable DT = new DataTable();
        D.query = "spCLIENTI_Login";
        D.cmd.Parameters.AddWithValue("@EMAIL", EMAIL);
        D.cmd.Parameters.AddWithValue("@PWD", PWD);
        DT = D.EseguiSPRead();
        return DT;

    }


    public DataTable SELECTALL()
    {
        DataTable DT = new DataTable();
        DATABASE D = new DATABASE();
        D.query = "spCLIENTI_SelectAll";
        DT = D.EseguiSPRead();
        return DT;

    }


    public DataTable SELECTALL_DDL()
    {
        DataTable DT = new DataTable();
        DATABASE D = new DATABASE();
        D.query = "spCLIENTI_SelectAll_DDL";
        D.cmd.Parameters.AddWithValue("@NOME", NOME);
        D.cmd.Parameters.AddWithValue("@COGNOME", COGNOME);
        DT = D.EseguiSPRead();
        return DT;

    }

    public DataTable SELECTBYKEY()
    {
        DATABASE D = new DATABASE();
        D.query = "spCLIENTI_SelectByKey";
        D.cmd.Parameters.AddWithValue("@chiave", chiave);
        DT = D.EseguiSPRead();
        return DT;

    }

    public void UPDATE()
    {
        DATABASE D = new DATABASE();
        D.query = "spCLIENTI_Update";
        D.cmd.Parameters.AddWithValue("@chiave", chiave);
        D.cmd.Parameters.AddWithValue("@EMAIL", EMAIL);
        D.cmd.Parameters.AddWithValue("@PWD", PWD);
        D.cmd.Parameters.AddWithValue("@PRIME", PRIME);
        D.cmd.Parameters.AddWithValue("@SCADENZAPRIME", SCADENZAPRIME);
        D.cmd.Parameters.AddWithValue("@COGNOME", COGNOME);
        D.cmd.Parameters.AddWithValue("@NOME", NOME);
        D.cmd.Parameters.AddWithValue("@EMAIL", EMAIL);
        D.cmd.Parameters.AddWithValue("@INDIRIZZO", INDIRIZZO);
        D.cmd.Parameters.AddWithValue("@CITTA", CITTA);
        D.cmd.Parameters.AddWithValue("@PROVINCIA", PROVINCIA);
        D.cmd.Parameters.AddWithValue("@CAP", CAP);
        D.cmd.Parameters.AddWithValue("@TELEFONO", TELEFONO);
        D.EseguiSPNonRead();

    }
        
}