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
    rifClientiOL.WsClientiSoapClient CL = new rifClientiOL.WsClientiSoapClient();
    public DataTable DT = new DataTable();


    public CLIENTI()
    {
       
    }

    //Metodo per inserire un nuovo cliente
    public void INSERT()
    {
     
        CL.CLIENTI_Insert(EMAIL,PWD,PRIME,SCADENZAPRIME,COGNOME,NOME,INDIRIZZO,CITTA,PROVINCIA,CAP,TELEFONO);
       
    }

    //Metodo per verificare se le credenziali del cliente sono corrette
    public DataTable LOGIN()
    {
        DataTable DT = new DataTable();
        DT = CL.CLIENTI_Login(EMAIL, PWD);
        return DT;

    }

    //Metodo per selezionare tutto 
    public DataTable SELECTALL()
    {
        DataTable DT=new DataTable();
        DT = CL.CLIENTI_SelectAll();
        return DT;

    }


    //Metodo per prendere i dati di un cliente dal DB
    public DataTable SELECTALL_DDL()
    {
        DataTable DT=new DataTable();
        DT = CL.CLIENTI_SelectAll_DDL();
        return DT;

    }


    //Metodo per selezionare tramite la chiave
    public DataTable SELECTBYKEY()
    {
        DataTable DT = new DataTable();
        DT = CL.CLIENTI_SelectByKey(chiave);
        return DT;
    }


    //Metodo per modificare i dati del cliente
    public void UPDATE()
    {
        CL.CLIENTI_Update(chiave,EMAIL,PWD,COGNOME,NOME,INDIRIZZO,CITTA,PROVINCIA,CAP,TELEFONO);
    }


    //Metodo per modificare i dati del cliente
    public void CLIENTI_Prime()
    {
        CL.CLIENTI_Prime(chiave);
    }
}