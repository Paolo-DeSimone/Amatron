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
    public DateTime DATAORA;


    DATABASE D = new DATABASE();
    DataTable DT = new DataTable();


    public void SPEDIZIONI_Insert()
    {
        D.query = "spSPEDIZIONI_Insert";
        D.cmd.Parameters.AddWithValue("@chiave", chiave);
        D.cmd.Parameters.AddWithValue("@chiaveORDINE", chiaveORDINE);
        D.cmd.Parameters.AddWithValue("@STATO", STATO);
        D.cmd.Parameters.AddWithValue("@DATAORA", DATAORA);
        D.EseguiSPNonRead();
    }

    public DataTable SPEDIZIONI_SelectByKey()
    {
        D.query = "spSPEDIZIONI_SelectByKey";
        D.cmd.Parameters.AddWithValue("@chiave", chiave);
        DT = D.EseguiSPRead();
        return DT;
    }



    public DataTable SPEDIZIONI_SelectByOrdine()
    {
        D.query = "spSPEDIZIONI_SelectByOrdine";
        D.cmd.Parameters.AddWithValue("@chiave", chiave);
        DT = D.EseguiSPRead();
        return DT;
    }
}
