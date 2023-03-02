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

    // la session sarà una string e quindi bisognerà fare un parse perché i membri dato nella classe CARRELLO sono int
    int sessionChiaveCliente = 1;
    int sessionChiaveProdotto = 1;
    int sessionQTA = 1;

    [WebMethod]
    public static void AggiungiAlCarrello(int sessionChiaveCliente, int sessionChiaveProdotto, int sessionQTA)
    {
        CARRELLO cart = new CARRELLO();
        cart.chiaveCLIENTE = sessionChiaveCliente;
        cart.chiavePRODOTTO = sessionChiaveProdotto;
        cart.QTA = sessionQTA;
        cart.INSERT();

        DataTable DT = new DataTable();
        DT = cart.SelectLastItemInCart(sessionChiaveCliente);
        string imgProdotto = DT.Rows[0]["imgProdotto"].ToString();
        string TITOLO = DT.Rows[0]["TITOLO"].ToString();
        string DESCRIZIONE = DT.Rows[0]["DESCRIZIONE"].ToString();
        string QTA = DT.Rows[0]["QTA"].ToString();
        string PREZZO = DT.Rows[0]["PREZZO"].ToString();

        carrelloProdotti.InnerHtml +=
            "<div class=\"card mx-2 my-2\">" +
            "<div class=\"card-body \">" +
            "<div class=\"row\" style=\"margin: 5px; padding: 5px;\">" +
            "<div class=\"row\" style=\"margin: 5px; padding: 5px;\">" +
            "" +
            "<%--IMMAGINE PRODOTTO--%>" +
            " <div class=\"col-sm-4\">" +
            "<a href=\"Forms/AMATRON/AccettazioneOrdini.aspx\" class=\"w3-bar-item w3-button\">" +
            "<img src=\"/assets/images/amatron-icon.png\" class=\"w-75 h-75\" />" +
            "</a>" +
            "</div>" +
            "" +
            "<%--TITOLO E DESCRIZIONE--%>" +
            " <div class=\"col-sm-5\">" +
            "<p style=\"margin-top: 16px;\"></p>" +
            "<asp:Literal Text ="+TITOLO+ " ID =\"ltlTitoloProdottoCarrello\" runat=\"server\"></asp:Literal>" +
            "" +
            "<p style=\"margin: 4px;\"></p>" +
            "<asp:Literal Text ="+DESCRIZIONE+" ID=\"lblDescrizioneProdottoCarrello\" runat=\"server\"></asp:Literal>" +
            "</div>" +
            "" +
            "<%--QUANTITà E PREZZO PRODOTTO--%>" +
            "<div class=\"col-sm-3\">" +
            "<asp:Label ID=\"lblQuantità\" runat=\"server\" Text=\"Quantità\"></asp:Label>" +
            "<asp:DropDownList ID=\"ddlQuantità\" runat=\"server\" class=\"w-50\"></asp:DropDownList>" +
            "<p style=\"margin: 0px;\"></p>" +
            "<asp:Label ID=\"lblPrezzo\" runat=\"server\" Text=\"Prezzo\"></asp:Label>" +
            "<asp:Literal ID=\"ltlPrezzo\" runat=\"server\"></asp:Literal>" +
            "</div>" +
            "</div>" +
            "</div>" +
            "</div>" +
            "</div>" +
            "";

    }
}
