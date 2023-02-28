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
}