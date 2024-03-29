﻿using System;
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
    public rifCarrelloOL.WsCarrelloSoapClient C = new rifCarrelloOL.WsCarrelloSoapClient();
    public DataTable DT = new DataTable();

    public CARRELLO()
    {
        
    }

    //Metodo per cancellare i prodotti nel carrello
    public void DELETE()
    {
        C.CARRELLO_Delete(chiave);
    }

    //Metodo per inserire prodotti nel carrello
    public void INSERT()
    {   
        C.CARRELLO_Insert(chiaveCLIENTE, chiavePRODOTTO, QTA);      
    }

    //Metodo per selezionare tutto nel carrello
    public DataTable SELECTALL()
    {
        DataTable DT = new DataTable();
        DT = C.CARRELLO_SelectAll();
        return DT;
    }

    //Metodo che fa riferimento alla chiave cliente
    public DataTable SELECTBYCLIENTE()
    {
        DataTable DT = new DataTable();
        DT = C.CARRELLO_SelectByCliente(chiaveCLIENTE);
        return DT;
    }

    //Metodo per selezionare tramite la chiave
    public DataTable SELECTBYKEY()
    {
        DataTable DT = new DataTable();
        DT = C.CARRELLO_SelectByKey(chiave);
        return DT;
    }

    //Metodo per selezionare il prodotto
    public DataTable SELECTBYPRODOTTO()
    {
        DataTable DT = new DataTable();
        DT = C.CARRELLO_SelectByProdotto(chiavePRODOTTO);
        return DT;
    }

    //Metodo per aggiornare il carrello
    public void UPDATE()
    {
        C.CARRELLO_Update(chiave, QTA);
    }

    /// <summary>
    /// Seleziona l'ultimo prodotto aggiunto nel carrello del cliente. Fatto da Paolo 02/03.
    /// </summary>
    /// <returns></returns>
    public DataTable SelectAllItemsInCart(int chiaveCLIENTE)
    {
       DT = C.CARRELLO_SelectAllItemsInCart(chiaveCLIENTE);
       return DT;
    }

    public void DiscardItemInCart(int chiavePRODOTTO, int chiaveCLIENTE)
    {
        C.CARRELLO_DiscardItemInCart(chiavePRODOTTO, chiaveCLIENTE);
    }
}