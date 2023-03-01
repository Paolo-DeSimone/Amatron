using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per ORDINI
/// </summary>
public class ORDINI
{
    public int chiave;
    public int chiavecorriere;
    public int chiaveprodotto;
    public int chiavecliente;
    public int qta;
    public string datatransazione;
    public int numeroordine;

    RifOrdini.WsOrdiniSoapClient R = new RifOrdini.WsOrdiniSoapClient();

    public ORDINI()
    {
        //
        // TODO: aggiungere qui la logica del costruttore
        //
    }

    public void Insert()
    {      
        R.ORDINI_Insert(chiavecorriere, chiaveprodotto, chiavecliente, datatransazione, qta, numeroordine);
    } 

    public void Update()
    {
        R.Ordini_Update()
    }
    
    public void Delete()
    {
        R.ORDINI_Delete(chiave);
    } 
    
    public void SelectAll()
    {
        R.ORDINI_SelectAll();
    }
    
    public void SelectByKey()
    {
        R.ORDINI_SelectByKey(chiave);
    }

    public void SelectByCorriere()
    {
        R.ORDINI_SelectByCorriere(chiavecorriere);
    } 
    
    public void SelectByProdotto()
    {
        R.ORDINI_SelectByProdotto(chiaveprodotto);
    }
    
    public void SelectByCliente()
    {
        R.ORDINI_SelectByCliente(chiavecliente);
    }
}