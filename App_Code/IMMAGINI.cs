using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descrizione di riepilogo per IMMAGINI
/// </summary>
public class IMMAGINI
{
    public IMMAGINI()
    {
        //
        // TODO: aggiungere qui la logica del costruttore
        //
    }
    public int chiave;
    public int chiaveprodotto;
    public string titolo;
    public byte[] doc;
    public string tipo;
}