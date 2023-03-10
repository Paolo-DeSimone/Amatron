using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.UI;

public class AMATRONADMIN
{
    public string email;
    public string PWD;
    public int ANNO;
    public int MESI;
    public float GUADAGNO_TOTALE;
    public string CATEGORIA;
    public string NOMINATIVO;
    public int? NUMERO_ORDINE;
    public string STARTDATE;
    public string ENDDATE;

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


    public DataTable RESIFILTRA()
    {
        DataTable dt = new DataTable();
        A.AMATRON_RESIFILTRA(NOMINATIVO, NUMERO_ORDINE, STARTDATE, ENDDATE);
        return dt;
    }
     
    
}