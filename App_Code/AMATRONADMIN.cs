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

    public string email;
    public string PWD;
    RifAmatron.WsAmatronSoapClient A = new RifAmatron.WsAmatronSoapClient();

    public AMATRONADMIN()
    {

    }

    public DataTable Login()
    {
        DataTable dt = new DataTable();
        A.AMATRON_Login(email, PWD);
        return dt;
    }



}