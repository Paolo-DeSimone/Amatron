using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;

public class AMATRONADMIN
{
    public int COSTOPRIME;
    public int PERC1_10;
    public int PERC11_100;
    public int PERC101_1000;
    public int PERC1001;

    public string chiave;
    public bool ACCETTAZIONE;
    public string DATAEMISSIONE;
    public AMATRONADMIN()
    {

    }
    /// <summary>
    /// Funzione per recuperare i dati da CONFIG per caricarli al PageLoad di GestioneConfig.aspx -MATTEO
    /// </summary>
    public static DataTable RecuperaDatiConfig()
    {
        DATABASE D = new DATABASE();
        DataTable DT = new DataTable();
        D.query = "spCONFIG_SelectAll";
        DT = D.EseguiSPRead();
        return DT;
    }

    public void UpdateCONFIG()
    {
        DATABASE D = new DATABASE();
        D.query = "spCONFIG_Update";
        D.cmd.Parameters.AddWithValue("COSTOPRIME", COSTOPRIME);
        D.cmd.Parameters.AddWithValue("PERC1_10", PERC1_10);
        D.cmd.Parameters.AddWithValue("PERC11_100", PERC11_100);
        D.cmd.Parameters.AddWithValue("PERC101_1000", PERC101_1000);
        D.cmd.Parameters.AddWithValue("PERC1001", PERC1001);
        D.EseguiSPNonRead();
    }

    public void UpdateRESI()
    {
        DATABASE D = new DATABASE();
        D.query = "spRESI_Update";
        D.cmd.Parameters.AddWithValue("chiave", chiave);
        D.cmd.Parameters.AddWithValue("ACCETTAZIONE", ACCETTAZIONE);
        D.cmd.Parameters.AddWithValue("DATAEMISSIONE", DATAEMISSIONE);
        D.EseguiSPNonRead();
    }
}