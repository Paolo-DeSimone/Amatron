using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per CHANGEPWD
/// </summary>
public class CHANGEPWD
{
    public string email;
    public string TIPO;
    public string PWD;
    rifChangePwdOL.WsChangePwdSoapClient CP = new rifChangePwdOL.WsChangePwdSoapClient();
    public CHANGEPWD()
    {
        //
        // TODO: aggiungere qui la logica del costruttore
        //
    }

    public void ChangePwd()
    {
        CP.ChangePwd(email,TIPO,PWD);
    }
}