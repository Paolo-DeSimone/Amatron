using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;

public class AMATRONADMIN
{
    public string email;
    public string PWD;
    public int ANNO;
    public int MESI;
    public float GUADAGNO_TOTALE;
    public string CATEGORIA;

    rifAmatronOL.WsAmatronSoapClient A = new rifAmatronOL.WsAmatronSoapClient();

    public AMATRONADMIN()
    {

    }

    public DataTable Login()
    {
        DataTable dt = new DataTable();
        A.AMATRON_Login(email, PWD);
        return dt;
    }

    public DataTable IncassiMensiliByAnno()
    {
        DataTable dt = new DataTable();
        dt = A.AMATRON_IncassiMensiliByAnno(ANNO);
        return dt;
    }
}