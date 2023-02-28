using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
public class CARRELLO
{
    public int chiave;
    public int chiaveCLIENTE;
    public int chiavePRODOTTO;
    public int QTA;
    public DataTable DT = new DataTable();

    public CARRELLO()
    {
        
    }

    public void DELETE()
    {
      
    }

    public void INSERT()
    {
        DATABASE D = new DATABASE();
        D.query = "spCARRELLO_Insert";
        D.cmd.Parameters.AddWithValue("@chiaveCLIENTE", chiaveCLIENTE);
        D.cmd.Parameters.AddWithValue("@chiavePRODOTTO", chiavePRODOTTO);
        D.cmd.Parameters.AddWithValue("@QTA", QTA);
        D.EseguiSPNonRead();
    }


    public DataTable SELECTALL()
    {
        DataTable DT = new DataTable();
        DATABASE D = new DATABASE();
        D.query = "spCARRELLO_SelectAll";
        DT = D.EseguiSPRead();
        return DT;
    }

    public DataTable SELECTBYCLIENTE()
    {
        DATABASE D = new DATABASE();
        D.query = "spCARRELLO_SelectByCliente";
        D.cmd.Parameters.AddWithValue("@chiaveCLIENTE", chiaveCLIENTE);
        DT = D.EseguiSPRead();
        return DT;
    }

    public DataTable SELECTBYKEY()
    {
        DATABASE D = new DATABASE();
        D.query = "spCARRELLO_SelectByKey";
        D.cmd.Parameters.AddWithValue("@chiave", chiave);
        DT = D.EseguiSPRead();
        return DT;
    }

    public DataTable SELECTBYPRODOTTO()
    {
        DATABASE D = new DATABASE();
        D.query = "spCARRELLO_SelectByProdotto";
        D.cmd.Parameters.AddWithValue("@chiavePRODOTTO", chiavePRODOTTO);
        DT = D.EseguiSPRead();
        return DT;
    }

    public void UPDATE()
    {
        DATABASE D = new DATABASE();
        D.query = "spCARRELLO_Update";
        D.cmd.Parameters.AddWithValue("@chiaveCLIENTE", chiaveCLIENTE);
        D.cmd.Parameters.AddWithValue("@chiavePRODOTTO", chiavePRODOTTO);
        D.cmd.Parameters.AddWithValue("@QTA", QTA);
        D.EseguiSPNonRead();
    }




}