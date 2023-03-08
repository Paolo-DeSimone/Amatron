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
}