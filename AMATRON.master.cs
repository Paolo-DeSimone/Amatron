using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AMATRON : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // !IsPostBack fa si che il codice in esso compreso venga caricato solo al caricamento della pagina e NON al ricaricare della pagina dovuto al click di elementi come bottoni, griglie...
        // Se non lo si mette, quando uno clicca un bottone tipo "aggiungi al carrello" tutto quel che è compreso dentro InnerHtml comprare nella pagina prodotto e NON nel carrello.
        if (!IsPostBack)
        {
            int sessionChiaveUtente = 1;
            CARRELLO c = new CARRELLO();

            // Seleziona tutti gli oggetti (item) in carrello ma solo per un certo utente, identificato grazie alla session.
            DataTable DT = c.SelectAllItemsInCart(sessionChiaveUtente);

            // Dentro il div con id "carrelloProdotti" dentro AMATRON.master, fai comparire tutto quel che c'è in carrelloProdotti.InnerHtml (InnerHtml permette di scrivere codice HTML dentro il C#)
            // Uso un ciclo for che itera per il numero di row in DT ( DT.Rows.Count) così da far comparire in carrello ogni singolo oggetto della DT
            for (int i = 0; i < DT.Rows.Count; i++)
            {
                carrelloProdotti.InnerHtml +=
                "<div class=\"card mx-1 my-1\">" +
                "<div class=\"card-body \">" +
                "<div class=\"row\" style=\"margin: 5px; padding: 5px;\">" +
                "<div class=\"row\" style=\"margin: 5px; padding: 5px;\">" +
                "" +
                " <div class=\"col-sm-4\">" +
                "<a href=\"Forms/AMATRON/AccettazioneOrdini.aspx\" class=\"w3-bar-item w3-button\">" +
                "<img src=\"/assets/images/amatron-icon.png\" class=\"w-75 h-75\" />" +
                "</a>" +
                "</div>" +
                "" +
                " <div class=\"col-sm-5\">" +
                "<p style=\"margin: 4px;\"></p>" +
                "" +
                "<div>" + //DIV di apertura
                "<div>" + DT.Rows[i]["TITOLO"] + "</div>" +
                "</div>" +
                "<div>" + DT.Rows[i]["DESCRIZIONE"].ToString() + "</div>" +
                "</div>" + //DIV di chiusura
                "" +
                "<div style=\"padding: 0px;\" class=\"col-sm-3\">" +
                "" +
                "<div>" + //DIV di apertura
                "<div>Quantità:" + DT.Rows[i]["QTA"] + "</div>" +
                "</div>" +
                "<div>Prezzo:" + DT.Rows[i]["PREZZO"].ToString() + "€</div>" +
                "</div>" + //DIV di chiusura
                "" +
                "" +
                "" +
                "</div>" +
                "</div>" +
                "</div>" +
                "</div>" +
                "</div>" +
                "";
            }
        }

    }


    [WebMethod]
    public static string Accedi(string USR, string PWD)
    {
        UTENTI U = new UTENTI();
        U.username = USR;
        U.password = PWD;
        DataTable DT = new DataTable();
        DT = U.Login();

        if (DT.Rows.Count != 0)
        {
            return "Benvenuto";
        }
        else
        {
            return "Utente non registrato";
        }
    }

    [WebMethod]
    public static void AggiungiAlCarrello()
    {
        // la session sarà una string e quindi bisognerà fare un parse perché i membri dato nella classe CARRELLO sono int
        int sessionChiaveCliente = 1;
        int sessionChiaveProdotto = 1;
        int sessionQTA = 1;

        CARRELLO cart = new CARRELLO();
        cart.chiaveCLIENTE = sessionChiaveCliente;
        cart.chiavePRODOTTO = sessionChiaveProdotto;
        cart.QTA = sessionQTA;
        cart.INSERT();
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string EMAIL = txtEMAIL.Value.ToString();
        string PWD = txtPWD.Value.ToString();

        LOGIN login = new LOGIN();
        DataTable DT = login.Login(EMAIL, PWD);

        Session["chiaveUSR"] = DT.Rows[0]["chiave"];
        Session["emailUSR"] = DT.Rows[0]["EMAIL"];
        Session["pwdUSR"] = DT.Rows[0]["PWD"];
        Session["tipoUSR"] = DT.Rows[0]["TIPO"];
    }
}
