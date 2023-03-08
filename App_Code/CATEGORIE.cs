using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;


public class CATEGORIE
{/// <summary>
/// dichiaro i membri dati di categorie: chiave,categoria
/// </summary>
    public int chiave;
    public string categoria;
    rifCategorieOL.WsCategorieSoapClient C = new rifCategorieOL.WsCategorieSoapClient();
    public CATEGORIE()
    {
        //
        // TODO: aggiungere qui la logica del costruttore
        //
    }
    /// <summary>
    /// Metodo che serve per l'inserimento di una nuova categoria
    /// </summary>
    public void Insert()
    {
        C.CATEGORIE_Insert(categoria);
    }

    /// <summary>
    /// Metodo utile per la modifica di una categoria gia esistente
    /// </summary>
    public void Update()
    {
        C.CATEGORIE_Update(chiave, categoria);
    }
    /// <summary>
    /// Metodo utile per prendere un record di una categoria già esistente la cui chiave corrisponde a quella selezionata
    /// </summary>
    /// <returns> la chiave che restituisce sarà quella selezionata</returns>
    public DataTable SelectByKey()
    {
        DataTable DT = C.CATEGORIE_SelectByKey(chiave);
        return DT;
    }
    /// <summary>
    /// Metodo utile per popolare una DDL con tutte le categorie
    /// </summary>
    /// <returns>restituisce tutte le categorie</returns>
    public DataTable SelectAll()
    {
        DataTable DT = C.CATEGORIE_SelectAll();
        return DT;
    }
}