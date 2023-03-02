using AjaxControlToolkit;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

public class CONFIG
{
    public int chiave;
    public int costoprime;
    public int perc1_10;
    public int perc11_100;
    public int perc101_1000;
    public int perc1001;
    public DataTable DT = new DataTable();
    RifConfig.WsConfigSoapClient C = new RifConfig.WsConfigSoapClient();
    public CONFIG()
    {

    }
    public void Update()
    {
        C.CONFIG_Update(costoprime, perc1_10, perc11_100, perc101_1000, perc1001);
    }
    public DataTable SelectAll()
    {
       DataTable DT = C.CONFIG_SelectAll();
        return DT;
        
    }
}