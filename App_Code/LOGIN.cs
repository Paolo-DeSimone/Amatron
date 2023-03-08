using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per Class1
/// </summary>
public class LOGIN
{
    public LOGIN()
    {
        
    }

    public DataTable Login(string EMAIL, string PWD)
    {
        //RifLogin.WSLoginSoapClient c = new RifLogin.WSLoginSoapClient();
        rifLoginOL.WSLoginSoapClient c = new rifLoginOL.WSLoginSoapClient();
        return c.Login(EMAIL, PWD);
    }
}